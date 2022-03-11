
use <../utils/2d.scad>;

module bedroom_bed() {
    cube([40, 90, 1030]);
    translate([0, 1510, 0]) cube([40, 90, 1030]);
    translate([2090, 0, 0]) cube([40, 90, 340]);
    translate([2090, 1510, 0]) cube([40, 90, 340]);
    translate([2095, 0, 250]) cube([30, 1600, 90]);
    translate([0, 5, 245]) cube([2130, 30, 90]);
    translate([0, 1565, 245]) cube([2130, 30, 90]);
    translate([-10, -15, 1025]) cube([65, 1630, 20]);
    translate([5, 0, 950]) cube([30, 1600, 85]);
    translate([5, 0, 430]) cube([30, 1600, 85]);
    translate([10, 800 - 170/2, 430]) cube([15, 170, 600]);
    translate([10, 800 - 35 + 190, 430]) cube([15, 70, 600]);
    translate([10, 800 - 35 - 190, 430]) cube([15, 70, 600]);
    translate([10, 800 - 35 + 330, 430]) cube([15, 70, 600]);
    translate([10, 800 - 35 - 330, 430]) cube([15, 70, 600]);
    translate([10, 800 - 35 + 470, 430]) cube([15, 70, 600]);
    translate([10, 800 - 35 - 470, 430]) cube([15, 70, 600]);
    translate([10, 800 - 35 + 610, 430]) cube([15, 70, 600]);
    translate([10, 800 - 35 - 610, 430]) cube([15, 70, 600]);

    // mattress
    translate([1070, 800, 300])
    linear_extrude(200)
    rounded_square([2020, 1500], 80);
}
