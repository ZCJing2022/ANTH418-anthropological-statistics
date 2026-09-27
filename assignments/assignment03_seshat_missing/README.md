# Assignment 3: Missing Data in the Seshat Moralizing Gods Debate

**Week:** 6  
**Statistical focus:** Transformations, Missing Values, and Analytical Decisions

## Research question

How does the apparent prevalence of moralizing gods change when missing outcomes are kept unknown versus treated as known absence?

## Published case study

Beheim, Bret, Quentin D. Atkinson, Joseph Bulbulia, et al. 2021. Treatment of Missing Data Determined Conclusions Regarding Moralizing Gods. *Nature* 595:E29–E34.

DOI: https://doi.org/10.1038/s41586-021-03655-4

## Teaching summary

The student file `data/seshat_missingness_counts.csv` is a three-row aggregate summary of a documented 801-case regression frame:

- 299 `known_present`;
- 12 `known_absent`;
- 490 `missing_unknown`.

The central teaching point is that **unknown outcomes are not the same as observed absence**.

## Workflow

1. Read the case-study article before analysis.
2. Read `codebook.md` and `provenance.md`.
3. Open `assignment03_seshat_missing.qmd`.
4. Render once before editing to confirm that R, packages, and data paths work.
5. Work through **Code → Describe → Compare scenarios → Visualize → Interpret**.
6. Keep only output needed to support your reasoning.

## Recurring interpretation questions

1. What is the underlying unit of analysis?
2. What statistical result or contrast matters most?
3. What does the exercise show about the consequences of missing-data treatment?
4. What claim does the result not support?

## Data

The teaching file is an aggregated summary built reproducibly from the documented source frame. See `provenance.md`.
