
use <../utils/2d.scad>;

module server_room_desk() {
    module leg() cube([30, 30, 720]);
    translate([0, 0, 720]) cube([1100, 670, 15]);
    translate([1070, 0, 0]) leg();
    translate([0, 640, 0]) leg();
    translate([1070, 640, 0]) leg();
    translate([0, 0, 0]) leg();
    translate([550, 335, 680])
    linear_extrude(40) frame([1080, 650], 20);
}
