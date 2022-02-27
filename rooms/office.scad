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
