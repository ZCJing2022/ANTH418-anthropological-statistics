# Data Provenance

## Publication

Beheim, Bret, Quentin D. Atkinson, Joseph Bulbulia, et al. 2021. Treatment of Missing Data Determined Conclusions Regarding Moralizing Gods. *Nature* 595:E29–E34.

**DOI:** https://doi.org/10.1038/s41586-021-03655-4

## Original source file

Local source file:

`source/seshat_exportdat.csv`

The teaching case is based on the documented regression frame used in the published missing-data reanalysis.

## Documented regression-frame counts

The underlying frame contains **801 observations**:

- `known_present`: 299;
- `known_absent`: 12;
- `missing_unknown`: 490.

The ANTH418 teaching file stores these as three aggregate rows rather than reproducing all 801 individual records.

## Teaching file

`data/seshat_missingness_counts.csv`

## Underlying unit of analysis

One observation in the documented 801-case regression frame.

The three rows in the teaching CSV are aggregate categories, not three individual observations.

## Teaching purpose

Assignment 3 compares two descriptive representations:

1. a three-category representation preserving `known_present`, `known_absent`, and `missing_unknown` as distinct evidential states;
2. an alternative two-category representation in which every missing/unknown outcome is recoded as absent.

The second scenario is deliberately presented as a **sensitivity analysis**. It does not assert that missing outcomes were truly absent.

This exercise illustrates how treatment of missing data can change an apparent descriptive result. It does not reproduce the full statistical models or causal claims in the published debate.

## Reproducible build

The teaching summary was built reproducibly from the documented source frame described above.

The build procedure is maintained outside the student package and is not needed to complete this assignment.

## Prohibited interpretations

- do not equate `missing_unknown` with `known_absent`;
- do not describe the 490 unknown outcomes as observed zeros;
- do not claim that either simple prevalence calculation resolves the full published debate;
- do not infer causal effects from this three-category teaching summary.
