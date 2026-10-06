// =============================================================================
// Project: Parkside Battery Cover
// Target Printer: Bambu Lab A1 Mini (Max build volume: 180 x 180 x 180 mm)
// =============================================================================

// Battery Door Cover: 34mm (X) x 64mm (Y) x 4mm total recess
$fn = 60;

// Base Plate Dimensions (with -0.3mm print tolerance)
length = 34.4;   // Short axis (X)
width  = 66.4;   // Long axis (Y)
thickness = 2.0; // Base plate thickness
corner_r  = 3.5; // Corner fillet radius

// Screw Hole Specifications
hole_dia = 2.0;               // 2mm screw diameter
hole_x   = length / 2;        // 16.85mm (centered on 33.7mm plate)
hole_y   = 3.0;               // 3mm from the bottom edge

difference() {
    // --- 1. Main Base Plate ---
    linear_extrude(height = thickness) {
        hull() {
            translate([corner_r, corner_r]) circle(r = corner_r);
            translate([length - corner_r, corner_r]) circle(r = corner_r);
            translate([length - corner_r, width - corner_r]) circle(r = corner_r);
            translate([corner_r, width - corner_r]) circle(r = corner_r);
        }
    }

    // --- 2. Bottom Screw Hole ---
    translate([hole_x, hole_y, -1])
        cylinder(h = thickness + 2, d = hole_dia);
}

// --- 3. Top Retaining Tabs ---
tab_w   = 4.8; // Adjusted tab width (X)
tab_h   = 2.2;   // Tab height (Z)
tab_ext = 1.5;   // Extension length (Y)

// First Tab: starts at X = 7.0mm, ends at X = 12.075mm
translate([7.0, width - 0.2, 0])
    cube([tab_w, tab_ext, tab_h]);

// Second Tab: starts at X = 21.825mm (12.075 + 9.75 gap), ends at X = 26.9mm (leaves 7.5mm to right edge)
translate([21.825, width - 0.2, 0])
    cube([tab_w, tab_ext, tab_h]);
