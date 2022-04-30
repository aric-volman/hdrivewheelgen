$fn = 50;
slop = 0.01;
spoke_length = 20; // 10
spoke_thickness = 4; // 7
spoke_width = 4;

spoke_hole_r = 1.5;
spoke_hole_flat = 3.67; // Diameter of flat 
wheel_num = 9;
num_wheels = wheel_num;
hole_offset = 0.25; // -2

bead_adjust = -4; // Adjustment for beads -2.8
bead_offset = -14; // Manually fine tune this parameter! Moves beads a certain amount
bead_diameter = 9.3;
bead_length = sqrt(spoke_length^2 + spoke_length^2 - 2*(spoke_length^2)*cos(360/wheel_num)) - spoke_width + bead_adjust;

shaft_radius = 5.37/2;