include <variables.scad>;
use <snake_pin.scad>;

module testHole() {
  difference() {
    cube(testCubeSize, true);
    sphere(d=sphereSize, true);
    translate([0, 0, testCubeSize/2])
    cylinder(d=holeWidth+clearance, h=testCubeSize, center=true);
  }
}

translate([0, 0, testCubeSize/2])
testHole();

translate([-testCubeSize*1.2, 0, testCubeSize/2])
testHole();

/*
translate([testCubeSize, axleLength/2, flatHeight/2])
rotate([90, 0, 0])
pin();

translate([testCubeSize*2, axleLength/2, flatHeight/2])
rotate([90, 0, 0])
pin();
*/
