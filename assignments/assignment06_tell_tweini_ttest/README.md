# Assignment 6: Tell Tweini: Comparing Two Groups with t-tests

**Week:** 9  
**Statistical focus:** Comparing Two Groups: t-tests

## Research question

How large is the difference in wild ryegrass (*Lolium cf. multiflorum*) Δ13C between the Middle Bronze Age and Late Bronze Age at Tell Tweini, how uncertain is that difference, and what does a Welch two-sample t-test contribute to its interpretation?

## Published case study

Fuller, Benjamin T., Simone Riehl, Veerle Linseele, Elena Marinova, Bea De Cupere, Joachim Bretschneider, Michael P. Richards, and Wim Van Neer. 2024. Agropastoral and Dietary Practices of the Northern Levant Facing Late Holocene Climate and Environmental Change: Isotopic Analysis of Plants, Animals and Humans from Bronze to Iron Age Tell Tweini. *PLOS ONE* 19(6): e0301775.

DOI: https://doi.org/10.1371/journal.pone.0301775

## Teaching comparison

Assignment 6 uses source-derived Δ13C values for:

- *Lolium cf. multiflorum*, Middle Bronze Age (`n = 10`);
- *Lolium cf. multiflorum*, Late Bronze Age (`n = 10`).

The effect is defined as:

**Middle Bronze Age − Late Bronze Age**

A positive value means higher mean Δ13C in the Middle Bronze Age.

This focused two-period comparison is a teaching analysis using published observations; it is not a reproduction of the full statistical analysis in Fuller et al. (2024).

## Workflow

1. Read the case-study article before analysis.
2. Read `codebook.md` and `provenance.md`.
3. Open `assignment06_tell_tweini_ttest.qmd`.
4. Render once before editing to confirm that R, packages, and data paths work.
5. Work through **Identify → Visualize and describe → Estimate → Consider assumptions → Welch t-test and 95% CI → Effect magnitude → Compare with pooled Student t-test → Interpret**.
6. Keep only output needed to support your reasoning.

## Recurring interpretation questions

1. What is the observational unit, and why is this an independent-groups comparison?
2. What is the estimated Middle Bronze Age − Late Bronze Age Δ13C difference, and what does its sign mean?
3. What do the Welch confidence interval, t statistic, degrees of freedom, and p-value contribute to the interpretation?
4. What does Cohen's d add beyond the raw Δ13C difference?
5. Does the publication-aligned equal-variance t-test materially change the interpretation?
6. What climatic or agricultural claim does the comparison not establish by itself?

## Data

The student file `data/tell_tweini_ttest.csv` is a frozen teaching dataset built reproducibly from the published supporting data. See `provenance.md`.

The assignment outcome is **Δ13C**, not raw measured plant δ13C.
