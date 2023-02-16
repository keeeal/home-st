module exterior_wall_profile(thickness=240) {
    square([thickness, 2400]);
    hull() {
        square([thickness, 60]);
        square([thickness + 20, 50]);
    }
    // difference() {
    //     translate([0, 2340]) square([thickness + 60, 60]);
    //     translate([thickness + 60, 2340]) circle(50);
    // }
}

module interior_wall_profile(thickness=100) {
    translate([-thickness/2, 0]) square([thickness, 2400]);
    hull() {
        translate([-thickness/2, 0]) square([thickness, 60]);
        translate([-thickness/2 - 20, 0]) square([thickness + 40, 50]);
    }
    // difference() {
    //     translate([-thickness/2 - 60, 2340]) square([thickness + 120, 60]);
    //     translate([-thickness/2 - 60, 2340]) circle(50);
    //     translate([ thickness/2 + 60, 2340]) circle(50);
    // }
}

module exterior_walls() {
    translate([0, -830, 0]) rotate([90, 0, 90])
    linear_extrude(6830) exterior_wall_profile();
    translate([0, 7460, 0]) rotate([90, 0, 0])
    linear_extrude(8290) exterior_wall_profile();
    translate([2920, 7460, 0]) rotate([90, 0, -90])
    linear_extrude(2920) exterior_wall_profile();
    translate([2920, 6620, 0]) rotate([90, 0, 180])
    linear_extrude(840) exterior_wall_profile();
    translate([8330, 6860, 0]) rotate([90, 0, -90])
    linear_extrude(5650) exterior_wall_profile();
    translate([8090, 7460, 0]) rotate([90, 0, 0])
    linear_extrude(840) exterior_wall_profile();
    translate([11300, 7460, 0]) rotate([90, 0, -90])
    linear_extrude(3210) exterior_wall_profile();
    translate([11300, 6620, 0]) rotate([90, 0, 180])
    linear_extrude(840) exterior_wall_profile();
    translate([12970, 6860, 0]) rotate([90, 0, -90])
    linear_extrude(1910) exterior_wall_profile();
    translate([12970, 0, 0]) rotate([90, 0, 180])
    linear_extrude(6860) exterior_wall_profile();
    translate([6590, 0, 0]) rotate([90, 0, 90])
    linear_extrude(6380) exterior_wall_profile();
    translate([6830, -830, 0]) rotate([90, 0, 180])
    linear_extrude(1070) exterior_wall_profile();

    // extension
    translate([12900, 0, 0]) rotate([90, 0, 90])
    linear_extrude(3090) exterior_wall_profile(120);
    translate([15990, 0, 0]) rotate([90, 0, 180])
    linear_extrude(6860) exterior_wall_profile(120);
    translate([15990, 6860, 0]) rotate([90, 0, -90])
    linear_extrude(3090) exterior_wall_profile(120);
}

module interior_walls() {
    translate([0, 3580, 0]) rotate([90, 0, 90])
    linear_extrude(1320) interior_wall_profile();
    translate([1270, 4130, 0]) rotate([90, 0, 0])
    linear_extrude(1090) interior_wall_profile();
    translate([1220, 4080, 0]) rotate([90, 0, 90])
    linear_extrude(4430) interior_wall_profile();
    translate([1220, 3090, 0]) rotate([90, 0, 90])
    linear_extrude(5470) interior_wall_profile();
    translate([2730, 6860, 0]) rotate([90, 0, 0])
    linear_extrude(2830) interior_wall_profile();
    translate([2730, 3140, 0]) rotate([90, 0, 0])
    linear_extrude(3970) interior_wall_profile();
    translate([5600, 6860, 0]) rotate([90, 0, 0])
    linear_extrude(2830) interior_wall_profile();
    translate([6640, 3140, 0]) rotate([90, 0, 0])
    linear_extrude(3140) interior_wall_profile();
    translate([7940, 1350, 0]) rotate([90, 0, 0])
    linear_extrude(1350) interior_wall_profile();
    translate([8320, 4040, 0]) rotate([90, 0, 90])
    linear_extrude(4650) interior_wall_profile();
    translate([11110, 6860, 0]) rotate([90, 0, 0])
    linear_extrude(2830) interior_wall_profile();
}

module doors() {
    translate([5870, 6590, 0]) cube([1880, 300, 2300]);
    translate([12700, 2950, 0]) cube([300, 820, 2020]);
    translate([11010, 4810, 0]) cube([200, 820, 2050]);
    translate([3400, 2990, 0]) cube([830, 200, 2050]);
    translate([1820, 2990, 0]) cube([830, 200, 2050]);
    translate([1820, 3980, 0]) cube([830, 200, 2050]);
    translate([2880, 3980, 0]) cube([730, 200, 2050]);
    translate([6870, -30, 0]) cube([820, 300, 2050]);
    translate([11350, 6590, 0]) cube([820, 300, 2040]);
    translate([13780, 6590, 0]) cube([1270, 300, 1970]);
}

module windows() {
    translate([9130, -10, 350]) cube([2410, 260, 1800]);
    translate([13220, -10, 310]) cube([2400, 140, 1800]);
    translate([3840, -840, 350]) cube([1800, 260, 1800]);
    translate([580, -840, 350]) cube([1800, 260, 1800]);
    translate([1180, 7210, 850]) cube([1200, 260, 1200]);
    translate([2920, 6610, 1250]) cube([600, 260, 900]);
    translate([4140, 6610, 1250]) cube([900, 260, 900]);
    translate([8930, 7210, 1170]) cube([1500, 260, 880]);
}
