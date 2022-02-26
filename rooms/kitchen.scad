module kitchen_bench() {
    r = 120;
    translate([0, 0, 850]) linear_extrude(40) {
        translate([r, r-1520]) minkowski() {
            square([820 - 2*r, 1520 - 2*r]);
            circle(r, $fn=4);
        }
        translate([0, -600]) square([2950, 600]);
        translate([2350, -950]) square([600, 950]);
    }
    translate([200, -1420, 100]) cube([590, 1420, 750]);
    translate([235, -1385, 0]) cube([510, 1385, 750]);
    translate([200, -580, 100]) cube([2750, 580, 750]);
    translate([200, -530, 0]) cube([2750, 530, 750]);
    translate([2370, -950, 100]) cube([580, 950, 750]);
    translate([2420, -950, 0]) cube([530, 950, 750]);
}
