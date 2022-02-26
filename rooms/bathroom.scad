
use <../utils/2d.scad>;

module bathroom_toilet() {
    // cistern
    translate([-105, 0, 400]) cube([210, 300, 30]);
    hull() {
        translate([-270, 0, 440]) cube([540, 150, 380]);
        translate([-105, 0, 400]) cube([210, 150, 30]);
    }

    // lid
    hull() {
        translate([0, 430, 400]) scale([1,1.3,1]) cylinder(30, r=190);
        translate([0, 430, 410]) scale([1,1.3,1]) cylinder(30, r=150);
    }

    // bowl
    hull() {
        translate([0, 430, 360]) scale([1,1.3,1]) cylinder(30, r=190);
        translate([0, 400, 180]) cylinder(30, r=60);
    }
    hull() {
        translate([0, 400, 0]) scale([1,1.3,1]) cylinder(30, r=110);
        translate([0, 400, 180]) cylinder(30, r=60);
    }
}

module bathroom_sink() {
    module knob() {
        sphere(20);
        rotate([-90, 0, 0]) cylinder(30, r=12);
    }

    difference() {
        union() {
            translate([420, -260, 810]) scale([1.375, 1, 1]) hull() {
                cylinder(30, r=190);
                translate([0, 0, 5]) cylinder(20, r=200);
            }
            translate([0, -520, 780]) cube([840, 520, 30]);
            translate([15, -500, 100]) cube([810, 500, 690]);
        }
        translate([420, -270, 810]) scale([1.375, 1, 1]) sphere(140);
    }

    translate([0, -480, 0]) cube([1050, 480, 470]);

    translate([420 - 50, -550, 650]) knob();
    translate([420 + 50, -550, 650]) knob();
}

module bathroom_shower() {
    // supports
    translate([0, 0, 1805]) cube([40, 1000, 45]);
    translate([0, 985, 0]) cube([40, 15, 1850]);
    translate([40, 985, 0]) cube([40, 15, 470]);

    // glass panels
    translate([410, 985, 1160]) rotate([-90, 0, 0])
    linear_extrude(15) frame([820, 1380], border=40);
    translate([40, 170, 1850/2]) rotate([-90, 0, -90])
    linear_extrude(15) frame([340, 1850], border=20);
    translate([20, 300, 1810/2]) rotate([-90, 0, -90])
    linear_extrude(15) frame([340, 1810], border=20);
    translate([0, 400, 1810/2]) rotate([-90, 0, -90])
    linear_extrude(15) frame([340, 1810], border=20);
}

module bathroom_bath() {
    translate([720/2, 1490/2, 460/2])
    difference() {
        cube([720, 1490, 460], center=true);
        minkowski() {
            translate([0, 0, 460/2])
            cube([300, 1050, 500], center=true);
            sphere(160);
        }
    }
}
