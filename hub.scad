include <parameters.scad>
use <bead.scad>
echo("Bead Length: ", bead_length);
module hub() {
    difference() {
    for (wheel_num = [1: num_wheels]) {
        rotate([0, 0, 360/num_wheels * (wheel_num-1)])
        rotate([0, 90, 0])
        translate([0, spoke_length, 0]) {
        difference() {
            union() {
                cylinder(r = spoke_thickness/2, h = spoke_width, center = true);
                translate([0, -spoke_length/2, 0])
                cube([spoke_thickness, spoke_length, spoke_width], center=true);
            }
            translate([0, -hole_offset, 0]) {
                cylinder(r = spoke_hole_r, h = spoke_width, center = true, $fn = 30);
            }
        }
        rotate([40, 0, 0]) {
            translate([0, -hole_offset + 3, bead_length-bead_offset]){
            rotate([20, 0, 0]) {
            %bead();
            }
            }
        }
        }
    }
    cylinder(h = spoke_thickness, r = shaft_radius, center = true);
}
}
hub();