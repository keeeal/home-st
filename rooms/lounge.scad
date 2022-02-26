module lounge_fire() {
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
