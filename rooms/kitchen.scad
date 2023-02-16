
use <../utils/2d.scad>;

module kitchen_table() {
    module leg() {
        module a() translate([-50, -50, 530]) cube([100, 100, 150]);
        module b() translate([-65/2, -65/2, 120]) cube([65, 65, 10]);
        module c() translate([-95/2, -95/2, 70]) cube([95, 95, 10]);
        module d() translate([-45, -45, 55]) cube([90, 90, 10]);
        hull() { a(); b(); }
        hull() { b(); c(); }
        hull() { c(); d(); }
        translate([0, 0, 25]) sphere(25);
    }
    difference() {
        union() {
            translate([0, 0, 680]) hull() {
                linear_extrude(15) minkowski() {
                    square([930, 930]);
                    circle(40, $fn=4);
                }
                linear_extrude(25) minkowski() {
                    square([930, 930]);
                    circle(25, $fn=4);
                }
            }
            translate([0, 0, 700]) hull() {
                linear_extrude(10) minkowski() {
                    square([930, 930]);
                    circle(40, $fn=4);
                }
                linear_extrude(20) minkowski() {
                    square([930, 930]);
                    circle(25, $fn=4);
                }
            }
        }
        translate([465, 0, 0]) cube([4, 3000, 2000], center=true);
    }
    translate([60, 80, 0]) leg();
    translate([870, 80, 0]) leg();
    translate([60, 850, 0]) leg();
    translate([870, 850, 0]) leg();
    translate([465, 465, 580])
    linear_extrude(100) frame([870, 830], 30);
}
