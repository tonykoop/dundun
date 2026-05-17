# CAD/DXF Authority Plan

Current fabrication authority: none. This packet is not build-ready.

## Existing Visual Evidence

The repository already contains scanned planning pages and build/reference
photos:

- `drawings/img20260426_00504715.png` - primary planning sheet for trio size
  ranges and starter stave math.
- `drawings/img20260426_00495569.png`
- `drawings/img20260426_00513182.png`
- `drawings/img20260426_00521619.png`
- `drawings/img20260426_00530060.png`
- `drawings/2021-09-13 09.56.32.jpg`
- `drawings/2021-09-13 09.56.56.jpg`
- `drawings/2021-09-13 09.57.12.jpg`
- `images/` build and portfolio photos.

These files are reference-only until they are checked against measured geometry
or redrawn as reviewed CAD/DXF.

## Future Authority Files

The future authority chain should be:

1. `family-spec.csv` records planning targets and provenance.
2. Measured validation records resolve diameter, wall thickness, head-seat,
   ring, and rope-path unknowns.
3. CAD design tables regenerate shell and stave geometry from those measured
   values.
4. DXF exports from CAD become the cut/layout authority.
5. Rendered previews or photos remain derived previews or reference context.

Recommended future files:

- `CAD/dundun-bodies/doundounba-body.SLDPRT` or equivalent CAD source.
- `CAD/dundun-bodies/sangban-body.SLDPRT` or equivalent CAD source.
- `CAD/dundun-bodies/kenkeni-body.SLDPRT` or equivalent CAD source.
- `CAD/stave/dundun-stave-design-table.csv`.
- `CAD/heads/dundun-head-ring-design-table.csv`.
- `CAD/jigs/constant-angle-stave-sled.dxf`.
- `CAD/dundun-bodies/*.dxf` for released shop layouts.

## Release Rule

Do not mark this repo build-ready until the PR or release names the controlling
CAD/DXF/design-table artifact and all image-only sources are marked
reference-only.
