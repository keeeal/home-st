use <../utils/3d.scad>;

module office_desk() {
    module leg() {
        translate([0, 0, 240]) cylinder(550, r=25);
        cylinder(550, r=20);
    }
    translate([0, 0, 790]) cube([600, 2800, 30]);
    translate([60, 60, 0]) leg();
    translate([540, 2740, 0]) leg();
    translate([60, 2740, 0]) leg();
    translate([540, 60, 0]) leg();
}

module office_hemnes_bookshelf() {
    translate([0, 0, 1950]) cube([890, 370, 20]);
    translate([0, 15, 0]) cube([45, 35, 1950]);
    translate([0, 315, 0]) cube([45, 35, 1950]);
    translate([845, 315, 0]) cube([45, 35, 1950]);
    translate([845, 15, 0]) cube([45, 35, 1950]);
    translate([40, 20, 120]) cube([810, 5, 1830]);
    translate([5, 20, 120]) cube([5, 300, 1830]);
    translate([880, 20, 120]) cube([5, 300, 1830]);
    translate([0, 15, 120]) cube([890, 335, 45]);
    translate([5, 20, 485]) cube([880, 295, 15]);
    translate([5, 20, 775]) cube([880, 295, 15]);
    translate([5, 20, 1065]) cube([880, 295, 15]);
    translate([5, 20, 1355]) cube([880, 295, 15]);
    translate([5, 20, 1645]) cube([880, 295, 15]);
    translate([0, 15, 1905]) cube([20, 330, 45]);
    translate([870, 15, 1905]) cube([20, 330, 45]);
    translate([0, 330, 1905]) cube([890, 20, 45]);
}

module office_tv_stand() {
    translate([0, 0, 5]) cube([900, 395, 30]);
    translate([0, 0, 360]) cube([900, 395, 30]);
    translate([0, 0, 5]) cube([20, 395, 360]);
    translate([880, 0, 5]) cube([20, 395, 360]);
    translate([0, 20, 255]) cube([900, 355, 20]);
    translate([0, 20, 5]) cube([900, 5, 360]);
}

module office_couch() {
    module leg() cylinder(60, d1=45, d2=75);
    translate([0, 0, 60]) {
        translate([0, 0, 0]) filleted_cube([900, 120, 360], r=20);
        translate([0, 2920, 0]) filleted_cube([1500, 120, 600], r=20);
        translate([120, 120, 220]) filleted_cube([780, 2120, 140], r=20);
        translate([120, 2240, 220]) filleted_cube([1380, 680, 140], r=20);
        translate([0, 120, 0]) filleted_cube([120, 2800, 600], r=20);
        translate([120, 120, 0]) filleted_cube([780, 2120, 220], r=20);
        translate([120, 2240, 0]) filleted_cube([1380, 680, 220], r=20);
    }
    translate([60, 60, 0]) leg();
    translate([840, 60, 0]) leg();
    translate([60, 2980, 0]) leg();
    translate([1440, 2980, 0]) leg();
    translate([1440, 2300, 0]) leg();
}
