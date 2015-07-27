Rubik's Snake
===

Overview
---

I tried several designs from Thingiverse before deciding to design my own. The
print-in-place ones were all fused together and there was no way to tell if it
was going to work up front. I found one with separate pins, but the pins were
too big and it wasn't parametric, so I couldn't easily just adjust the
tolerance.

This design is made with OpenSCAD and everything is configurable through
variables and there's a tiny test included that prints quickly, so you can see
if it will fit together and adjust accordingly without wasting much time or
plastic.

Included files
---

**variables.scad** contains all the settings. You should only have to modify the clearance setting and maybe wallWidth, but that's untested.
**triangles.scad** is a copy of a library by Tim Koopman used by snake_part.scad
**snake_test.scad** is for testing the clearance. Print this and make sure they fit together
**snake_pin.scad** is for the pins that stick the triangular parts together
**snake_part.scad** is for making the three types of triangular blocks
**snake_middle.scad** is for all the middle blocks. You want lots of it.
**snake_end_a.scad** and **snake_end_b.scad** are for the end caps. You only need 1 of each.

How to
---

Open up snake_test.scad, render it with F6, save to STL, slice that STL in your
favourite slicer and print. Make sure the pins fit in the holes. Not too tight,
not too loose, but just right. If not, open up variables and adjust clearance
accordingly, then retry until you get it right.

Once you're happy it fits, render snake_pin, snake_middle, snake_end_a and
snake_end_b as STLs. You only need one of each end and you need lots of pins
and middle ones. You can alternate the colours if you wish.

I print it at 0.1mm layer height and just 15% infill. Print multiple copies or
separate things at the same time, otherwise cooling is going to become a
problem, especially on the pins or the tops of the triangular parts. It works
best with "premium" or softish PLA. I haven't tested it yet, but ABS should
also work.  Cheap hard PLA can be a pain to fit together.
