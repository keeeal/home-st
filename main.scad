
$fn = 64;
EPS = 1e-4;

use <utils/2d.scad>;

use <structure/floorplan.scad>;
use <structure/walls.scad>;
use <structure/roof.scad>;

use <rooms/bathroom.scad>;
use <rooms/kitchen.scad>;
use <rooms/lounge.scad>;

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
translate([4600, 4130, 0]) bathroom_shower();
translate([3630, 6300, 200]) godmorgon_tall();
translate([4130, 6130, 200]) godmorgon_vanity();
translate([4500, 6360, 780]) kattevik_sink();
