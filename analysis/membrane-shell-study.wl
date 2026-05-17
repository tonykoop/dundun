(* Dundun trio membrane/shell resonance starter.
   Status: not executed for packet evidence.
   Dimensions here are planning assumptions from drawings/img20260426_00504715.png.
*)

voices = <|
  "doundounba" -> <|"diameterIn" -> 17.0, "lengthIn" -> 27.5|>,
  "sangban" -> <|"diameterIn" -> 14.0, "lengthIn" -> 22.65|>,
  "kenkeni" -> <|"diameterIn" -> 11.0, "lengthIn" -> 17.35|>
|>;

inchToMeter[x_] := x*0.0254;

(* Circular membrane first-mode approximation:
   f01 = 2.4048/(2 Pi r) Sqrt[tensionPerLength / surfaceDensity].
   Replace the ranges below with measured cowhide and tension data.
*)
membraneF01[diameterIn_, tensionPerLength_, surfaceDensity_] :=
  2.4048/(2 Pi (inchToMeter[diameterIn]/2))*
    Sqrt[tensionPerLength/surfaceDensity];

assumptionGrid = Flatten[
  Table[
    <|
      "voice" -> voice,
      "diameterIn" -> data["diameterIn"],
      "tensionNPerM" -> tension,
      "surfaceDensityKgPerM2" -> density,
      "f01Hz" -> membraneF01[data["diameterIn"], tension, density]
    |>,
    {voice, Keys[voices]},
    {data, {voices[voice]}},
    {tension, {1000, 2000, 4000}},
    {density, {0.4, 0.8, 1.2}}
  ],
  3
];

Dataset[assumptionGrid]
