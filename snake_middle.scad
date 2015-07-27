include <variables.scad>;
use <snake_part.scad>;

translate([0, 0, partHeight+chamfer])
rotate([-90, 45, 0]) // nicer orientation for printing
middlePart(true, true);
