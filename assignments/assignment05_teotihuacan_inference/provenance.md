# Data Provenance

## Publication

Somerville, Andrew D., Nawa Sugiyama, Linda R. Manzanilla, and Margaret J. Schoeninger. 2016. Animal Management at the Ancient Metropolis of Teotihuacan, Mexico: Stable Isotope Analysis of Leporid Bone Mineral. *PLOS ONE* 11(8): e0159982.

**DOI:** https://doi.org/10.1371/journal.pone.0159982

## Original source file

Local source file:

`source/somerville2016_s2.xlsx`

The supporting workbook contains 134 archaeological specimens. The ANTH418 teaching file retains the 127 specimens with nonmissing δ13C values.

## Context variable

`context` comes from the broad source `Site` field, not from fine-grained provenience fields.

The five source contexts are:

- Moon Pyramid;
- Oztoyahualco;
- Puerta 5;
- Teopancazco;
- Túneles y Cuevas.

## Source-defined δ13C exclusions

The supporting workbook states that grey-highlighted values were excluded because of possible diagenesis or analytical error.

Assignment 5 follows the grey-highlighted **δ13C** exclusions in the workbook. This produces:

- 127 nonmissing δ13C observations;
- 115 valid δ13C observations;
- 12 source-excluded δ13C observations.

The workbook's observation-level exclusion coding yields 115 valid δ13C values, whereas the publication reports an overall archaeological δ13C sample size of 114. ANTH418 retains and documents this source/publication discrepancy rather than inventing an undocumented additional exclusion.

## Frozen teaching comparison

Assignment 5 uses source-valid δ13C observations from:

- Moon Pyramid: `n = 50`;
- Oztoyahualco: `n = 15`.

The teaching statistic is defined as:

**Oztoyahualco − Moon Pyramid**

This is a pedagogically simplified two-group question based on an archaeological difference discussed in the publication. It does not claim to reproduce the publication's full multi-group analysis.

## Unit of analysis

One archaeological leporid specimen with a recorded δ13C value.

## Inference scope

Bootstrap and permutation procedures quantify uncertainty and null-model extremeness for this fixed teaching comparison. They do not make the archaeological specimens a random probability sample of all Teotihuacan leporids, and they do not identify a unique husbandry mechanism.

## Build script

The teaching dataset was built reproducibly in the instructor repository using:

`scripts/build_teaching_data.R`

The build script is not included in the student package and is not needed to complete this assignment.
