# Dundun Trio — Cultural Provenance Notes

This document separates cultural and historical observations from build
assumptions. In the design packet, build parameters are engineering decisions
informed by — but not identical to — traditional practice. This file records
what is known about origin and tradition; `design.md` records the build
engineering decisions.

---

## Cultural Provenance (observed and cited)

### Origin

The **dundun family** (also written doundoun, dunun, or djun-djun) originates
with the **Mande peoples of West Africa** — Mali, Guinea, Burkina Faso,
Senegal, and Côte d'Ivoire. The same cultural region and musical tradition
that produced the djembe.

The three voices correspond to distinct ensemble roles that are broadly
consistent across Mande traditions, though regional names, tunings, and exact
performance practices vary by community, lineage, and ceremony:

| Voice | Common names | Ensemble role |
|---|---|---|
| Kenkeni | kenkeni, kinsonia, kendang | Timekeeping — plays the steady pulse; highest pitch |
| Sangban | sangban, konkoni | Harmonic lead — converses with the djembe; middle pitch |
| Doundounba | doundounba, dundumba | Bass anchor — provides foundation; lowest pitch |

Each drum is typically played with a stick on the head and a **bell** (iron or
cowbell, mounted on the side) struck with a second stick or the same hand. The
bell pattern and the drum pattern are played simultaneously, making the dundun
player carry two independent rhythmic lines at once.

### Traditional construction

Traditional dunduns are stave-built or stave-lashed with a constant cylindrical
profile — simpler geometry than the goblet-shaped djembe. Heads are cowhide,
mounted on paired hoop rings (top and bottom) and tensioned with vertical rope
lacing, often with decorative tension-diamond patterns. The cylindrical form
means the bevel angle is constant along every stave, unlike the variable-profile
djembe stave.

At **Morgan Drums** (St. Paul, MN), where the dimensions in this packet were
observed, dunduns were produced using the same stave-and-rope methodology
adapted to the cylindrical geometry. The Morgan Drums shop builds were informed
by direct experience with Mande drumming traditions; they are not a primary
ethnographic source.

### Heifer Zephyr / tonykoop context

This build packet is an engineering documentation project, not an ethnography or
a teaching guide. The drums are built because the construction is technically
interesting, the acoustic properties of the trio system are well-suited to an
engineering study of coupled-membrane systems, and the cultural context rewards
understanding before fabrication.

No claim is made here about authenticity, performance rights, or cultural
permission. Builders who want to play dunduns in ensemble contexts are encouraged
to study with a teacher from a Mande drumming lineage.

---

## Build Assumptions (engineering decisions — see design.md)

The following are engineering decisions informed by traditional construction
but may differ from any specific regional or lineage tradition. They are
recorded here to distinguish what this packet *assumes* from what tradition
*specifies*:

- **Diameter ratios**: the 11 / 14 / 17 in planning targets are derived from
  Morgan Drums observations and stave-layout drawings. They are starting
  assumptions, not verified as canonical across all traditions.
- **Stave count (18 or 24)**: both options are given in the design table. The
  choice affects stave width, bevel angle, and joinery difficulty. Traditional
  drums vary in stave count.
- **Rope system**: vertical lacing with tension diamonds is shown in Morgan
  Drums builds. Some traditions use different lacing patterns; some
  contemporary instruments use hardware lugs. This packet supports both but
  has not measured both.
- **Bell mount**: assumed as a side-mounted strap or bracket. Exact placement
  and whether the bell is permanent vs. removable varies by player and context.
- **Pitch intervals**: the approximately-a-fourth relationship between kenkeni,
  sangban, and doundounba is the commonly stated target. Actual intervals vary
  by tradition, tuning preference, and room. The build packet treats this as a
  planning target, not a specification.

---

## Sources

- Direct observation: Morgan Drums, St. Paul, MN (builds and construction
  methods observed first-hand; no formal citation available).
- Mande drumming ensemble structure: widely documented in ethnomusicology
  literature on West African percussion; Famoudou Konaté is among the
  prominent teacher-documenters of the djembe/dundun tradition.
- Djembe sister repo: [tonykoop/djembe](https://github.com/tonykoop/djembe) —
  same shop context, same stave-build tradition, goblet geometry.
