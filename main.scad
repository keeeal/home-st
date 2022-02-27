
$fn = 64;
EPS = 1e-4;

use <utils/2d.scad>;

use <structure/floorplan.scad>;
use <structure/walls.scad>;
use <structure/roof.scad>;

use <rooms/bathroom.scad>;
use <rooms/kitchen.scad>;
use <rooms/lounge.scad>;
use <rooms/office.scad>;

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

translate([12600, 2110, 0]) rotate([0, 0, 90]) lounge_fire();
translate([3240, 6600, 0]) rotate([0, 0, 180]) bathroom_toilet();
translate([8110, 7220, 0]) kitchen_bench();
translate([4730, 4130, 0]) bathroom_shower();
translate([4830, 5130, 0]) bathroom_bath();
translate([3780, 6620, 0]) bathroom_sink();
translate([12980, 3930, 0]) office_desk();
translate([15810, 5060, 0]) rotate([0, 0, 90]) office_hemnes_bookshelf();
translate([15810, 4160, 0]) rotate([0, 0, 90]) office_hemnes_bookshelf();
