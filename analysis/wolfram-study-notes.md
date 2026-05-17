# Wolfram Membrane/Shell Study Notes

Current status: starter notes plus runtime smoke check only. No measured
Wolfram model evidence has been recorded for this packet.

The accompanying starter file is `analysis/membrane-shell-study.wl`. It is a
planning notebook source, not validated analysis output.

## Questions For The Study

- How do the three planning radii shift the first circular membrane mode for a
  plausible range of cowhide mass and tension?
- Does each shell length produce an air/shell resonance region that supports
  the desired low/middle/high role?
- How much does a perfect-fourth pitch relationship depend on head tension
  versus shell geometry?
- How sensitive are pitch targets to head clear diameter after seating?

## Minimum Inputs Needed

- Finished head clear diameter for each voice.
- Cowhide mass per unit area.
- Estimated or measured membrane tension after settling.
- Shell wall thickness, wood density, and shell mass.
- Bare-shell tap tone and headed drum played pitch.

## Runtime Evidence

Smoke check: `wolframscript -file analysis/membrane-shell-study.wl` completed
on 2026-05-17 during V5 packet validation. The run only confirmed the starter
source evaluates in the local Wolfram runtime; it did not use measured inputs
or produce committed result artifacts.

Any future Wolfram output should record:

- Wolfram version.
- Command or notebook used.
- Input CSV or constants.
- Generated plots/tables.
- Whether the values came from measurements or assumptions.
