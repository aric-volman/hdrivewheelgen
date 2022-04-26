spoke_length = 10;
outer_diameter = 7;
spoke_width = 2;
spoke_hole_r = 1.0 + 0.1;
wheel_num = 7;
num_wheels = wheel_num;
hole_offset = -2;
for(wheel_num = [1: num_wheels]) {
        rotate([0, 0, 360/num_wheels * (wheel_num-1)])
        rotate([0, 90, 0])
    translate([0, spoke_length, 0]) {
difference() {
union() {
    cylinder(r = outer_diameter/2, h = spoke_width, center = true, $fn = 30);
    
    translate([0, -spoke_length/2, 0])
    cube([outer_diameter, spoke_length, spoke_width], center=true);
}
translate([0, -hole_offset, 0]) {
cylinder(r = spoke_hole_r, h = spoke_width, center = true, $fn = 30);
}
}
}
}//