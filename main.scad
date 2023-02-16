
$fn = 64;
EPS = 1e-4;

use <utils/2d.scad>;

use <structure/floorplan.scad>;
use <structure/walls.scad>;
use <structure/roof.scad>;

use <rooms/bathroom.scad>;
use <rooms/bedroom.scad>;
use <rooms/kitchen.scad>;
use <rooms/lounge.scad>;
use <rooms/office.scad>;
use <rooms/server_room.scad>;

module structure() {
    difference() {
        union() {
            interior_walls();
            exterior_walls();
        }
        windows();
        doors();
    }
}

// floorplan();
structure();

translate([12600, 2080, 0]) rotate([0, 0, 90]) lounge_fire();
translate([3240, 6600, 0]) rotate([0, 0, 180]) bathroom_toilet();
translate([8110, 7220, 0]) kitchen_bench();
translate([4600, 4130, 0]) bathroom_shower();
translate([3630, 6300, 200]) godmorgon_tall();
translate([4130, 6130, 200]) godmorgon_vanity();
translate([4500, 6360, 780]) kattevik_sink();
translate([12980, 3930, 0]) office_desk();
translate([15810, 5060, 0]) rotate([0, 0, 90]) office_hemnes_bookshelf();
translate([15810, 4160, 0]) rotate([0, 0, 90]) office_hemnes_bookshelf();
translate([895, 6540, 0]) server_room_desk();
translate([2000, 7210, 0]) rotate([0, 0, -90]) server_room_desk();
translate([12980, 1600, 0]) rotate([0, 0, -90]) office_tv_stand();
translate([5700, 4850, 0]) kitchen_table();
translate([11360, 1440, 0]) lounge_tiles();
translate([6560, 2000, 0]) rotate([0, 0, 180]) bedroom_bed();
