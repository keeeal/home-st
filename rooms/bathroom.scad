
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

module bathroom_shower() {
    cube([10, 1175, 2100]);
}

module godmorgon_tall() {
    cube([400, 320, 1920]);
}

module godmorgon_vanity() {
    cube([1200, 470, 580]);
}
