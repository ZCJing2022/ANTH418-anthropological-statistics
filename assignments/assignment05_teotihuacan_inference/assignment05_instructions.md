# Assignment 5 --- Teotihuacan Leporid Management

## Purpose

This assignment applies the Week 8 workflow:

> **Estimate → quantify uncertainty → test against a null model →
> interpret archaeologically**

You will distinguish two related questions. **Estimation:** How large is
the δ¹³C difference between Oztoyahualco and the Moon Pyramid, and how
uncertain is it? **Testing:** How unusual would that difference be under
a null model in which context carries no systematic information about
δ¹³C?

## Research question

**How large is the δ¹³C difference between leporids from Oztoyahualco
and the Moon Pyramid, how uncertain is it, and how unusual would that
difference be under a no-difference null model?**

Define the observed difference throughout as:

\[ `\Delta`{=tex}`\delta`{=tex}\^{13}C =
`\bar`{=tex}{x}*{`\text{Oztoyahualco}`{=tex}} -
`\bar`{=tex}{x}*{`\text{Moon Pyramid}`{=tex}}. \]

Keep this direction consistent.

## Archaeological context

Somerville et al. (2016) investigated whether Teotihuacan leporids were
hunted, provisioned, managed, or bred. Higher δ¹³C can reflect greater
C4/CAM consumption, including cultivated resources. The inferential
chain is:

**higher δ¹³C → greater C4/CAM consumption → possible access to
cultivated foods → possible provisioning → possible
management/breeding**

These steps are not equivalent. Your statistical analysis evaluates an
isotope contrast; archaeological interpretation requires context and
alternatives.

## Data

Use `data/teotihuacan_leporids.csv`. Read the package `README.md`,
`codebook.md`, and `provenance.md`.

For this assignment, `valid` refers specifically to the **δ¹³C exclusion
rule documented in the source supporting information**. Retain
`valid == TRUE`, then restrict the analysis to:

-   `Oztoyahualco`
-   `Moon Pyramid`

Do not redefine the validity rule or remove observations because they
appear extreme.

## 1. Inspect and prepare

``` r
library(tidyverse)
library(infer)

dat <- read_csv(
  "data/teotihuacan_leporids.csv",
  show_col_types = FALSE
) |>
  filter(valid)

d <- dat |>
  filter(context %in% c("Oztoyahualco", "Moon Pyramid"))
```

Use `glimpse()` and `count()` to inspect the data. Identify the
observational unit, grouping variable, numerical response, sample size
in each context, and the archaeological population or comparison these
observations can reasonably inform.

## 2. Describe and visualize

Summarize δ¹³C separately for the two contexts. Report at least:

-   (n);
-   mean;
-   standard deviation.

Create one clear graphic showing the two observed distributions. A
boxplot with individual observations, or another Week 5/Week
8-appropriate display, is suitable.

Describe direction, overlap, spread, and notable features. Begin with
the observed pattern, not with "significance."

## 3. Estimate the observed difference

Calculate:

\[ `\bar`{=tex}{x}*{`\text{Oztoyahualco}`{=tex}}-
`\bar`{=tex}{x}*{`\text{Moon Pyramid}`{=tex}}. \]

Report the estimate in ‰ and interpret its sign. Explain what this point
estimate tells you and what it does **not** tell you about uncertainty.

## 4. Bootstrap the difference

Use bootstrap resampling to generate a distribution of the difference in
means.

Your procedure should:

1.  resample observations **with replacement**;
2.  calculate the difference in the same direction;
3.  repeat many times; and
4.  retain the bootstrap estimates.

Using `infer`, you may use `specify()`, `generate(type = "bootstrap")`,
and `calculate()`.

Visualize the **bootstrap distribution of estimates** and construct a
**95% percentile bootstrap confidence interval**.

Report the observed difference and both confidence bounds. Interpret the
interval in terms of **magnitude and uncertainty**. Do not say that
there is a 95% probability that the fixed population difference lies
inside this particular frequentist interval.

Explain why the bootstrap distribution is a distribution of
**estimates**, not individual specimens.

## 5. Specify the null model

Use:

\[ H_0:
`\mu`{=tex}*{`\text{Oztoyahualco}`{=tex}}-`\mu`{=tex}*{`\text{Moon Pyramid}`{=tex}}=0
\]

and the two-sided alternative:

\[ H_A:
`\mu`{=tex}*{`\text{Oztoyahualco}`{=tex}}-`\mu`{=tex}*{`\text{Moon Pyramid}`{=tex}}`\neq0`{=tex}.
\]

Explain why this statistical null is **not** equivalent to saying that
no leporid management occurred at Teotihuacan.

## 6. Construct a permutation null distribution

Construct a permutation distribution that:

1.  keeps δ¹³C values fixed;
2.  shuffles context labels;
3.  preserves group sizes;
4.  recalculates the difference;
5.  repeats many times.

Using `infer`, this may involve `specify()`,
`hypothesize(null = "independence")`, `generate(type = "permute")`, and
`calculate()`.

Visualize the **null distribution**, indicate the observed difference,
and calculate a **two-sided p-value** from permuted statistics at least
as extreme as the observed statistic.

## 7. Interpret the p-value

Report the p-value as a continuous value and explain it as a **tail
probability conditional on the null model**.

Make clear that it is **not**:

-   the probability that (H_0) is true;
-   the probability that management occurred;
-   the probability that chance caused the result;
-   the magnitude of the isotope difference; or
-   a measure of archaeological importance.

## 8. Integrate estimation and testing

Interpret together:

1.  the observed difference in means;
2.  the 95% bootstrap confidence interval;
3.  the two-sided permutation p-value.

Answer: How large is the contrast? How uncertain is it? What range of
differences is compatible with the data under the bootstrap procedure?
How unusual is the observed difference under the null model? Do these
quantities tell a coherent story?

Do not let the p-value replace the estimate or confidence interval.

## 9. Return to archaeology

Relate the statistical evidence to Somerville et al. (2016). Discuss:

-   what higher δ¹³C may imply about C4/CAM consumption;
-   why cultivated-food access may be consistent with provisioning;
-   why provisioning is not automatically management or breeding;
-   how archaeological/iconographic context contributes to
    interpretation; and
-   at least one plausible limitation or alternative explanation.

Possible limitations include sampling and preservation, context or
chronology, independence, environmental/dietary baselines, and
coexistence of hunting and management.

Distinguish **what the statistical analysis establishes about the
isotope contrast** from **what the broader archaeological evidence
suggests about human--leporid relationships**.

## 10. Final interpretation

Write a concise conclusion integrating:

-   effect magnitude;
-   uncertainty;
-   null-model comparison;
-   archaeological relevance;
-   limitations.

Avoid a conclusion consisting only of "reject (H_0)" or "statistically
significant."

> **Estimate first. Quantify uncertainty. Test a clearly defined null
> model when useful. Then return to archaeology.**

## What to submit

Submit:

1.  the completed `.qmd`; and
2.  the rendered HTML.

The document must render from a clean R session. Include only output
needed to support the analysis.

## Scope

You are **not** required to reproduce all procedures in Somerville et
al. (2016), or to perform ANOVA, Mann--Whitney tests, t-tests, Bayesian
analysis, or causal modeling.

This assignment is limited to methods taught in Week 8: point
estimation, observed-data visualization, bootstrap confidence intervals,
null hypotheses, permutation null distributions, p-values as conditional
tail probabilities, and archaeological interpretation of magnitude and
uncertainty.

## Required reading

Somerville, A. D., Sugiyama, N., Manzanilla, L. R., & Schoeninger, M. J.
(2016). Animal management at the ancient metropolis of Teotihuacan,
Mexico: Stable isotope analysis of leporid (cottontail and jackrabbit)
bone mineral. *PLOS ONE, 11*(8), e0159982.
https://doi.org/10.1371/journal.pone.0159982
