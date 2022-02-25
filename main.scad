
$fn = 64;
EPS = 1e-4;

module exterior_2d() {
    square([15990, 6860]);
    square([2920, 7460]);
    translate([0, -830]) square([6830, 3000]);
    translate([8090, 0]) square([3210, 7460]);
}

module interior_2d() {
    translate([240, 240]) square([12490, 6380]);
    translate([240, 0]) square([2440, 7220]);
    translate([240, -590]) square([6350, 7210]);
    translate([8330, 6000]) square([2730, 1220]);
    translate([12970, 120]) square([2900, 6620]);
}

module interior_walls_2d() {
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
    translate([11060, 4090]) square([100, 2530]);
}

module floorplan() {
    difference() {
        exterior_2d();
        interior_2d();
    }
    interior_walls_2d();
}

module exterior_wall_profile(thickness=240) {
    square([thickness, 2400]);
    hull() {
        square([thickness, 60]);
        square([thickness + 20, 50]);
    }
    difference() {
        translate([0, 2340]) square([thickness + 60, 60]);
        translate([thickness + 60, 2340]) circle(50);
    }
}

module interior_wall_profile(thickness=100) {
    translate([-thickness/2, 0]) square([thickness, 2400]);
    hull() {
        translate([-thickness/2, 0]) square([thickness, 60]);
        translate([-thickness/2 - 20, 0]) square([thickness + 40, 50]);
    }
    difference() {
        translate([-thickness/2 - 60, 2340]) square([thickness + 120, 60]);
        translate([-thickness/2 - 60, 2340]) circle(50);
        translate([ thickness/2 + 60, 2340]) circle(50);
    }
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
    linear_extrude(1560) interior_wall_profile();
    translate([1220, 3090, 0]) rotate([90, 0, 90])
    linear_extrude(5470) interior_wall_profile();
    translate([2730, 6860, 0]) rotate([90, 0, 0])
    linear_extrude(2830) interior_wall_profile();
    translate([2730, 3140, 0]) rotate([90, 0, 0])
    linear_extrude(3970) interior_wall_profile();
    translate([2730, 4960, 0]) rotate([90, 0, 90])
    linear_extrude(1000) interior_wall_profile();
    translate([3730, 6860, 0]) rotate([90, 0, 0])
    linear_extrude(2830) interior_wall_profile();
    translate([3680, 4080, 0]) rotate([90, 0, 90])
    linear_extrude(1970) interior_wall_profile();
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
    translate([2880, 4860, 0]) cube([730, 200, 2050]);
    translate([3630, 4150, 0]) cube([200, 730, 2050]);
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

module fire() {
    translate([-310, 0, 0]) cube([620, 500, 30]);
    translate([-220, 25, 0]) cube([440, 380, 280]);
    difference() {
        translate([-310, 25, 275]) cube([620, 400, 455]);
        translate([-250, 50, 365]) cube([500, 380, 270]);
    }
    translate([-310, 440, 275]) cube([620, 40, 60]);
    difference() {
        translate([-310, 440, 345]) cube([620, 40, 305]);
        translate([-225, 430, 390]) cube([450, 60, 210]);
    }
    translate([-310, 440, 660]) cube([620, 40, 70]);

    translate([0, 200, 720]) {
        cylinder(2400 - 720, r=75);
        translate([0, 0, 20])difference() {
            cylinder(1200, r=120);
            translate([0, 0, -5]) cylinder(1210, r=115);
            translate([-200, -50, -5]) cube([400, 200, 2400]);
        }
        translate([0, 0, 1400]) cylinder(270, r=130);
        translate([0, 0, 1670]) cylinder(10, r=230);
    }

    translate([315, 455, 675]) rotate([0, 90, 0]) cylinder(25, r=8);
    translate([300, 455, 675]) rotate([0, 90, 0]) cylinder(25, r=4);

    translate([-285, 470, 500]) rotate([-90, 0, 0]) cylinder(68, r=8);
    translate([-285, 530, 500]) rotate([180, 0, 0]) cylinder(120, r=8);
}

module toilet() {
    translate([-270, 0, 440]) cube([540, 150, 380]);
    hull() {
        translate([0, 430, 400]) scale([1,1.3,1]) cylinder(30, r=190);
        translate([0, 430, 410]) scale([1,1.3,1]) cylinder(30, r=150);
    }
    hull() {
        translate([0, 430, 360]) scale([1,1.3,1]) cylinder(30, r=190);
        translate([0, 400, 180]) cylinder(30, r=60);
    }
    hull() {
        translate([0, 400, 0]) scale([1,1.3,1]) cylinder(30, r=110);
        translate([0, 400, 180]) cylinder(30, r=60);
    }
    translate([-105, 0, 400]) cube([210, 300, 30]);
    hull() {
        translate([-270, 0, 440]) cube([540, 150, 380]);
        translate([-105, 0, 400]) cube([210, 150, 30]);
    }
}

module bathroom_sink() {
    translate([0, -520, 780]) cube([840, 520, 30]);
    translate([15, -500, 100]) cube([810, 500, 690]);
    translate([0, -480, 0]) cube([1050, 480, 470]);
}

module kitchen() {
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

difference() {
    union() {
        exterior_walls();
        interior_walls();
    }
    doors();
    windows();
}

// roof();

translate([12600, 2110, 0]) rotate([0, 0, 90]) fire();
translate([3240, 6600, 0]) rotate([0, 0, 180]) toilet();
translate([3780, 6620, 0]) bathroom_sink();
translate([8110, 7220, 0]) kitchen();

