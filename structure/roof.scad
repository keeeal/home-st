module roof() {
    module roof_point_0() translate([3420, 3420-830, 3400]) sphere(50);
    module roof_point_1() translate([3415, 4040, 3400]) sphere(50);
    module roof_point_2() translate([12570, 4040, 3400]) sphere(50);
    hull() {
        translate([0, -830, 2400]) cube([6830, 8290, 100]);
        roof_point_0();
        roof_point_1();
    }
    hull() {
        translate([0, 0, 2400]) cube([15990, 7460, 100]);
        roof_point_1();
        roof_point_2();
    }
}
