(* Dundun — double-headed cylindrical drum membrane model.
   The dundun (doundoun/dunun) is a West African bass drum family:
   kenkeni (high), sangban (mid), dundunba (low). Two heads, one mallet side.
   Circular membrane model: f = (α₀₁ / (π*D)) * sqrt(T/σ).
   Authority: reference_only.
   SPDX-License-Identifier: CERN-OHL-W-2.0 *)

ClearAll[membraneFreq, arealDensity, requiredTension];

alpha01 = 2.4048;

membraneFreq[D_, T_, sigma_] :=
  (alpha01 / (Pi * D)) * Sqrt[T / sigma];
arealDensity[thickM_, rhoMat_] := thickM * rhoMat;
requiredTension[f_, D_, sigma_] :=
  sigma * (f * Pi * D / alpha01)^2;

(* Three dundun variants *)
dundunVariants = {
  <|"Name"->"Dundunba (bass)",  "DiamCm"->42., "TargetHz"->65.4,  "TargetNote"->"C2"|>,
  <|"Name"->"Sangban (mid)",    "DiamCm"->35., "TargetHz"->130.8, "TargetNote"->"C3"|>,
  <|"Name"->"Kenkeni (high)",   "DiamCm"->28., "TargetHz"->261.6, "TargetNote"->"C4"|>
};

dundunExplorer = Manipulate[
  Module[
    {sigma, variantRows, tensionPlot},

    sigma = arealDensity[skinThickMm / 1000., rhoSkin];

    variantRows = Map[Function[v,
      Module[{D_m, fEst, tReq},
        D_m  = v["DiamCm"] / 100.;
        fEst = membraneFreq[D_m, tensionNm, sigma];
        tReq = requiredTension[v["TargetHz"], D_m, sigma];
        {v["Name"], v["TargetNote"],
         NumberForm[v["TargetHz"], {5, 1}],
         NumberForm[fEst, {5, 1}],
         NumberForm[tReq, {5, 1}],
         Style[If[Abs[fEst/v["TargetHz"] - 1.] < 0.05, "TUNED",
                  If[fEst < v["TargetHz"], "TOO LOOSE", "TOO TIGHT"]],
               If[Abs[fEst/v["TargetHz"] - 1.] < 0.05, Darker[Green],
                  Orange]]}
      ]
    ], dundunVariants];

    tensionPlot = Plot[
      {membraneFreq[0.42, t, sigma],
       membraneFreq[0.35, t, sigma],
       membraneFreq[0.28, t, sigma]},
      {t, 10., 400.},
      PlotStyle -> {Darker[Blue], Darker[Green], Darker[Red]},
      PlotLegends -> {"Dundunba (42cm)", "Sangban (35cm)", "Kenkeni (28cm)"},
      AxesLabel -> {"Tension (N/m)", "Frequency (Hz)"},
      PlotLabel -> "Head frequency vs. tension — all three drums",
      Epilog -> {Dashed, Gray, InfiniteLine[{{tensionNm, 0.}, {tensionNm, 1.}}]},
      ImageSize -> 480];

    Column[{
      Style["Dundun — three-drum membrane tension model  (ESTIMATES ONLY)", Bold, 16],
      Style["Dundunba (bass) + Sangban (mid) + Kenkeni (high). Single skin parameters applied to all.", Italic, Gray, 11],
      "",
      Grid[{
        {"Skin thickness (mm)", skinThickMm},
        {"Skin density (kg/m³)", rhoSkin},
        {"Areal density (kg/m²)", NumberForm[arealDensity[skinThickMm/1000., rhoSkin], {5,4}]},
        {"Applied tension (N/m)", tensionNm}
      }, Frame -> All, Alignment -> Left, Background -> {None, {LightBlue, {White}}}],
      "",
      Grid[Prepend[variantRows,
        {Style["Drum",Bold], Style["Target note",Bold], Style["Target Hz",Bold],
          Style["Actual Hz",Bold], Style["Req. tension (N/m)",Bold], Style["Status",Bold]}],
        Frame -> All, Alignment -> Left, Background -> {None, {LightCyan, {White}}}],
      "",
      tensionPlot
    }, Spacings -> 2]
  ],

  {{skinThickMm, 1.5, "Skin thickness (mm)"},   0.5,  4.0, 0.1},
  {{rhoSkin,    900., "Skin density (kg/m³)"},  600., 1400., 50.},
  {{tensionNm,  150., "Applied tension (N/m)"},  20., 500., 5.},
  SaveDefinitions -> True
];

dundunExplorer
