
module exterior() {
    square([15990, 6860]);
    square([2920, 7460]);
    translate([0, -830]) square([6830, 3000]);
    translate([8090, 0]) square([3210, 7460]);
}

module interior() {
    translate([240, 240]) square([12490, 6380]);
    translate([240, 0]) square([2440, 7220]);
    translate([240, -590]) square([6350, 7210]);
    translate([8330, 6000]) square([2730, 1220]);
    translate([12970, 120]) square([2900, 6620]);
}

module walls() {
    translate([6590, 240]) square([100, 2900]);
    translate([7890, 240]) square([100, 1110]);
    translate([8320, 3990]) square([4410, 100]);
    translate([1320, 3040]) square([5370, 100]);
    translate([2680, 4030]) square([100, 3190]);
    translate([2680, -590]) square([100, 3630]);
    translate([1320, 4030]) square([1460, 100]);
    translate([1220, 3040]) square([100, 1090]);
    translate([240, 3530]) square([1000, 100]);
    translate([3680, 4030]) square([100, 2600]);
    translate([3680, 4030]) square([1970, 100]);
    translate([5550, 4030]) square([100, 2600]);
    translate([2780, 4910]) square([900, 100]);
}

linear_extrude(2400)
union() {
    difference() {
        exterior();
        interior();
    }
    walls();
}
