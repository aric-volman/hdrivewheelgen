include <parameters.scad>
module bead() {
    difference() {
    cylinder(r = bead_diameter/2, h = bead_length, center = true);
    cylinder(r = spoke_hole_r, h = bead_length, center = true);
    }
}
bead();
//scale([1, 1, bead_length/4])
  //sphere(r = bead_diameter/2, $fn = 100);