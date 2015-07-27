use <triangles.scad>;
include <variables.scad>;

module outside() {
  // the main triangular shape
  translate([chamfer, chamfer, chamfer])
  minkowski() {
    Right_Angled_Triangle(
      a=outsideWidth,
      b=outsideWidth,
      height=outsideWidth,
      centerXYZ=[false,false,false]
    );
    sphere(r=chamfer);
  }
}

module grips () {
  union() {
    translate([gripOffsetFar, 0, gripOffsetFar])
    sphere(d=grip);
    translate([gripOffsetClose, 0, gripOffsetClose])
    sphere(d=grip);
    translate([gripOffsetFar, 0, gripOffsetClose])
    sphere(d=grip);
    translate([gripOffsetClose, 0, gripOffsetFar])
    sphere(d=grip);
  }
}

module slotA() {
  translate([cubeSize/2, 0, cubeSize/2]) {
    translate([0, sphereSize/2+wallWidth, 0])
    sphere(d=sphereSize);
    translate([0, cylinderSize-0.1, 0])
    rotate([90, 0, 0])
    cylinder(d=holeWidth+clearance, h=cylinderSize+0.2);
  }
}

module slotB() {
  translate([0, cubeSize/2, cubeSize/2]) {
    translate([sphereSize/2+wallWidth, 0, 0])
    sphere(d=sphereSize);
    translate([cylinderSize-0.1, 0])
    rotate([0, -90, 0])
    cylinder(d=holeWidth+clearance, h=cylinderSize+0.2);
  }
}

module middlePart(includeA, includeB) {
  difference() {
    union() {
      outside();

      if (includeA) {
        // the grip parts that protrude
        grips();
      }
    }

    if (includeB) {
      // the grip holes
      rotate([0, 0, 90])
      grips();
    }

    // where the hinges fit
    if (includeA) {
      slotA();
    }
    if (includeB) {
      slotB();
    }
  }
}
