# Data Provenance

## Publication

Fuller, Benjamin T., Simone Riehl, Veerle Linseele, Elena Marinova, Bea De Cupere, Joachim Bretschneider, Michael P. Richards, and Wim Van Neer. 2024. Agropastoral and Dietary Practices of the Northern Levant Facing Late Holocene Climate and Environmental Change: Isotopic Analysis of Plants, Animals and Humans from Bronze to Iron Age Tell Tweini. *PLOS ONE* 19(6): e0301775.

**DOI:** https://doi.org/10.1371/journal.pone.0301775

## Original source file

Local source file:

`source/fuller2024_s3.xlsx`

Relevant sheet:

`Supplementary Table S3 Plants`

The workbook contains repeated embedded header rows. The teaching build retains only genuine plant observations assigned to the four archaeological periods:

- Early Bronze Age: 24;
- Middle Bronze Age: 144;
- Late Bronze Age: 135;
- Iron Age: 107.

Total: **410 plant observations**.

## Isotope variable

Assignment 6 uses the source field cleaned as:

`d13c_based_on_char_corrected_values_using_gisp_data`

The teaching file labels this measure `delta13c`.

It is the source-derived Δ13C measure used for diachronic plant-water-status comparison, not the raw measured plant δ13C column.

## Frozen teaching comparison

Assignment 6 uses *Lolium cf. multiflorum*:

- Middle Bronze Age: `n = 10`;
- Late Bronze Age: `n = 10`.

The teaching effect is defined as:

**Middle Bronze Age − Late Bronze Age**

This comparison is explicitly discussed in the publication and is suitable for an introductory two-sample t-test exercise.

## Unit of analysis

One archaeological plant specimen/measurement represented in the source plant table.

## Statistical scope

Welch's independent-samples t-test is the primary teaching analysis for this comparison. It estimates and tests the Middle Bronze Age − Late Bronze Age mean Δ13C difference without requiring equal population variances.

The equal-variance Student two-sample t-test is retained as a secondary, publication-aligned comparison. Cohen's d is used as a standardized descriptive effect size alongside the raw Δ13C difference.

The statistical comparison does not by itself identify a unique climatic or agricultural mechanism.

## Build script

The teaching dataset was built reproducibly in the instructor repository using:

`scripts/build_teaching_data.R`

The build script is not included in the student package and is not needed to complete this assignment.
