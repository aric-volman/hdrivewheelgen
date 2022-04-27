$fn = 50;
slop = 0.01;
spoke_length = 20; // 10
spoke_thickness = 3; // 7
spoke_width = 2;
spoke_hole_r = 1.0;
spoke_hole_key = 0.5 + 0.2; // Inset for D shaped shaft 
wheel_num = 9;
num_wheels = wheel_num;
hole_offset = 0; // -2

bead_adjust = -2.8; // Adjustment for beads
bead_offset = -10.5; // Manually fine tune this parameter! Moves beads a certain amount
bead_diameter = 7;
bead_length = sqrt(spoke_length^2 + spoke_length^2 - 2*(spoke_length^2)*cos(360/wheel_num)) - spoke_width + bead_adjust;

shaft_radius = 1.5 + 0.5;