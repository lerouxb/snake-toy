include <variables.scad>;

module pin() {
  difference() {
    union() {
      difference() {
        union() {
          cylinder(d=axleDiameter, h=axleLength);
          sphere(d=pinDiameter);
          translate([0, 0, axleLength])
          sphere(d=pinDiameter);
        }
        translate([-gapWidth/2, -axleDiameter/2, -pinDiameter/2])
        cube([gapWidth, axleDiameter, pinLength]);
      }
      translate([0, 0, (axleLength-attachLength)/2])
      cylinder(d=axleDiameter, h=attachLength);
    }

    translate([-pinDiameter/2, flatHeight/2, -pinDiameter/2])
    cube([pinDiameter, pinDiameter, pinLength]);

    translate([-pinDiameter/2, -flatHeight/2-pinDiameter, -pinDiameter/2])
    cube([pinDiameter, pinDiameter, pinLength]);
  }
}


translate([0, axleLength/2, flatHeight/2])
rotate([90, 0, 0])
pin();

