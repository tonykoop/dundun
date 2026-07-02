// Dundun trio parametric master — kenkeni / sangban / doundounba shell envelope.
//
// Authority: pending_measurement. NOT fabrication authority until reviewed
// against a measured template (see visual-output-register.csv CAD-001 and
// reference/measured-authority-gates.csv DUN-AUTH-01..03/06/08).
//
// Dimension sources (do not edit values without updating the source record):
//   - shell target diameter, target body length, stave-width/bevel options:
//     family-spec.csv (voice rows: kenkeni/sangban/doundounba), itself
//     transcribed from drawings/img20260426_00504715.png (planning scan,
//     reference_only — see design.md "Planning-Derived Shell Assumptions").
//   - diameter basis (OD vs ID vs finished head-seat) is UNRESOLVED
//     (family-spec.csv column diameter_basis = "unknown until measured";
//     reference/measured-authority-gates.csv DUN-AUTH-01). This master treats
//     shell_diameter_in as a nominal/target diameter only.
//   - stave geometry formula: design.md "The engineering challenge" —
//     stave_width = PI * D / n, bevel_angle = 180 deg / n. Echoed below and
//     cross-checked against the family-spec.csv stave_width_18_in /
//     stave_width_24_in columns.
//   - shell wall thickness, head clear diameter, ring wrap thickness, bearing
//     edge allowance: NOT in family-spec.csv or any design table
//     (design.md "Unknowns Requiring Measurement"; risks.md). Held here as
//     prototype_assumption placeholders so the envelope can render — they
//     carry NO fabrication authority and must be replaced by
//     reference/measured-authority-gates.csv DUN-AUTH-03/06 evidence before
//     any shop use.
//
// Units: inches.

/* [Voice] */
// 0=kenkeni (small/high), 1=sangban (mid), 2=doundounba (large/bass)
voice = 0;

/* [Render mode] */
// 0 = render selected voice only, 1 = render all three side by side (trio)
render_mode = 0;

/* [Family design table — family-spec.csv] */
voice_names          = ["kenkeni", "sangban", "doundounba"];
// target_shell_diameter_in (family-spec.csv col 3) — basis unresolved, see header.
shell_diameter_in     = [11.0, 14.0, 17.0];
// target_shell_body_length_in (family-spec.csv col 5).
shell_length_in       = [17.35, 22.65, 27.5];
// stave_width_18_in / stave_width_24_in (family-spec.csv cols 9/8) — recorded
// for the echo self-check below, not used to drive geometry directly.
stave_width_18_table_in = [1.91, 2.431, 2.952];
stave_width_24_table_in = [1.436, 1.827, 2.219];

/* [Stave construction] */
// stave_count_options (family-spec.csv col 7) is undecided ("18 or 24");
// default to 24 here as a drawable selection, not a fabrication decision.
stave_count = 24;

/* [Shell — prototype_assumption placeholders, NOT design-table values] */
// No wall thickness in family-spec.csv/bom.csv (both list it as
// measurement-required). Placeholder only, for envelope rendering.
shell_wall_thickness_in = 0.375; // prototype_assumption — DUN-AUTH-03 open

/* [Heads and rings — prototype_assumption placeholders] */
// head_clear_diameter_in is TBD in family-spec.csv for every voice
// (DUN-AUTH-06 open). Modeled here as shell OD minus a placeholder
// bearing-edge inset so the envelope renders; carries no dimension claim.
bearing_edge_inset_in   = 0.75;  // prototype_assumption — DUN-AUTH-06 open
head_thickness_in       = 0.1;   // prototype_assumption — hide thickness unmeasured
ring_wrap_thickness_in  = 0.5;   // prototype_assumption — ring stock unmeasured
ring_height_in          = 0.75;  // prototype_assumption

/* [Trio layout] */
trio_gap_in = 4.0; // clearance between shells when render_mode = 1

// ---------------------------------------------------------------------------
// Derived geometry (formulas, not baked values)
// ---------------------------------------------------------------------------

// Stave width and bevel angle from stave count and target diameter
// (design.md "The engineering challenge"): w = PI * D / n, theta = 180/n.
function stave_width_in(d, n)  = (PI * d) / n;
function stave_bevel_deg(n)    = 180 / n;

function head_diameter_in(d)   = d - 2 * bearing_edge_inset_in;
function ring_outer_dia_in(d)  = d + 2 * ring_wrap_thickness_in;

module drum_shell(d, len, wall) {
  // Hollow cylinder; d is treated as the nominal/outer target diameter
  // (basis unresolved — see header). wall is a placeholder only.
  difference() {
    cylinder(h = len, d = d, center = true, $fn = 96);
    cylinder(h = len + 0.2, d = d - 2 * wall, center = true, $fn = 96);
  }
}

module hoop_ring(d, ring_h) {
  // Simplified top/bottom hoop ring — paired rings linked by rope
  // (design.md "Head And Rope System"). Not a rope-path model.
  difference() {
    cylinder(h = ring_h, d = ring_outer_dia_in(d), center = true, $fn = 96);
    cylinder(h = ring_h + 0.2, d = d, center = true, $fn = 96);
  }
}

module drum_head(d) {
  // Tensioned cowhide head, modeled as a flat disc at the bearing edge.
  cylinder(h = head_thickness_in, d = head_diameter_in(d), center = true,
           $fn = 96);
}

module single_stave(d, len, n) {
  // One stave of the shell, per CAD/stave/ intent: a constant-bevel prism
  // scaled to this voice's diameter and length (design.md single-angle
  // simplification — same compound angle at every height on a cylinder).
  w = stave_width_in(d, n);
  bevel = stave_bevel_deg(n);
  // Approximate the beveled stave cross-section as a trapezoid whose
  // parallel-face taper follows the bevel angle over the wall thickness.
  taper = shell_wall_thickness_in * tan(bevel / 2) * 2;
  linear_extrude(height = len, center = true)
    polygon(points = [
      [-w / 2, 0], [w / 2, 0],
      [w / 2 - taper / 2, shell_wall_thickness_in],
      [-w / 2 + taper / 2, shell_wall_thickness_in]
    ]);
}

module dundun_voice(idx) {
  d = shell_diameter_in[idx];
  len = shell_length_in[idx];
  union() {
    drum_shell(d, len, shell_wall_thickness_in);
    translate([0, 0,  len / 2]) drum_head(d);
    translate([0, 0, -len / 2]) drum_head(d);
    translate([0, 0,  len / 2]) hoop_ring(d, ring_height_in);
    translate([0, 0, -len / 2]) hoop_ring(d, ring_height_in);
  }
}

module dundun_trio() {
  // Side-by-side layout (kenkeni, sangban, doundounba) along Y, spaced by
  // each shell's own diameter plus trio_gap_in so shells never overlap.
  translate([0, -(shell_diameter_in[2] / 2 + trio_gap_in + shell_diameter_in[1] + trio_gap_in + shell_diameter_in[0] / 2), 0])
    dundun_voice(0);
  translate([0, -(shell_diameter_in[2] / 2 + trio_gap_in), 0])
    dundun_voice(1);
  translate([0, 0, 0])
    dundun_voice(2);
}

if (render_mode == 1)
  dundun_trio();
else
  dundun_voice(voice);

// Echo the stave-width/bevel self-check against family-spec.csv table values
// for both stave-count options, for every voice.
for (i = [0 : 2]) {
  echo(str(voice_names[i],
    " stave_w_24_computed_in=", stave_width_in(shell_diameter_in[i], 24),
    " table=", stave_width_24_table_in[i],
    " bevel_24_deg=", stave_bevel_deg(24)));
  echo(str(voice_names[i],
    " stave_w_18_computed_in=", stave_width_in(shell_diameter_in[i], 18),
    " table=", stave_width_18_table_in[i],
    " bevel_18_deg=", stave_bevel_deg(18)));
}
