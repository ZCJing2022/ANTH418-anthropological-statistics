# Assignment 6 --- Tell Tweini: Comparing Two Groups with t-tests

**Week:** 9\
**Statistical focus:** Comparing two independent groups with Welch's
t-test\
**Case study:** Wild ryegrass Δ13C at Bronze Age Tell Tweini

## Research question

How large is the difference in wild ryegrass (*Lolium cf. multiflorum*)
Δ13C between the **Middle Bronze Age** and **Late Bronze Age** at Tell
Tweini, how uncertain is that difference, and what does a Welch
two-sample t-test contribute to its interpretation?

## Purpose

Assignment 6 introduces **parametric comparison of two independent group
means**. Using a frozen teaching dataset derived from Fuller et
al. (2024), you will compare Middle Bronze Age and Late Bronze Age wild
ryegrass Δ13C at Tell Tweini.

The assignment builds on earlier work with visualization, estimation,
confidence intervals, hypothesis testing, and substantive interpretation
without repeating the bootstrap and permutation procedures from
Assignment 5. The new focus is the logic of the **t-test**: the standard
error of a difference between means, the t statistic, the t distribution
and degrees of freedom, and the distinction between Welch's and pooled
Student's two-sample t-tests.

## Statistical workflow

**identify the comparison → visualize and describe → estimate the mean
difference → consider design and assumptions → Welch t-test + 95% CI →
assess effect magnitude → compare with the pooled test → interpret
archaeologically**

Welch's independent-samples t-test is the primary analysis. The
equal-variance Student t-test is used only as a secondary comparison
with the analytical approach reported by Fuller et al. (2024).

## Archaeological interpretation

The effect is defined throughout as:

**Middle Bronze Age − Late Bronze Age**

A positive value therefore means that mean Δ13C is higher in the Middle
Bronze Age.

Your interpretation must distinguish the measured isotope difference
from possible explanations involving plant water status, crop-field
association, agricultural water availability, environmental change, or
other processes. The statistical comparison does **not** identify a
unique climatic or agricultural cause.

## Data

The package contains the frozen teaching dataset
`data/tell_tweini_ttest.csv`, with 410 plant observations. Assignment 6
focuses on 20 *Lolium cf. multiflorum* observations: 10 Middle Bronze
Age and 10 Late Bronze Age observations.

The outcome is **Δ13C**, not raw measured plant δ13C. Read `codebook.md`
and `provenance.md` before beginning the analysis.

## Required output

Complete and render `assignment06_tell_tweini_ttest.qmd`. Your rendered
assignment should contain the requested code, figures, numerical
results, and concise interpretations in complete sentences.
