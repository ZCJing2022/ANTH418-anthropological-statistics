# Assignment 6 --- Tell Tweini: Comparing Two Groups with t-tests

## Detailed Instructions

**Week:** 9\
**Statistical focus:** Independent groups · Welch's t-test · t-based
confidence interval · effect magnitude · robustness and interpretation\
**Case study:** Middle Bronze Age and Late Bronze Age wild ryegrass Δ13C
at Tell Tweini

## 1. Purpose

This assignment develops your ability to compare the means of **two
independent groups** and to interpret the result statistically and
archaeologically.

You have already worked with visualization, estimation, confidence
intervals, null hypotheses, p-values, bootstrap uncertainty, and
permutation tests. Assignment 6 does not ask you to repeat those topics
from the beginning. Instead, it introduces the parametric logic of the
two-sample t-test.

The central workflow is:

**identify → visualize and describe → estimate → quantify uncertainty
with a t model → assess effect magnitude → compare procedures →
interpret**

Your primary statistical procedure is **Welch's independent-samples
t-test**.

## 2. Case study and research question

The case study is based on:

Fuller, Benjamin T., Simone Riehl, Veerle Linseele, Elena Marinova, Bea
De Cupere, Joachim Bretschneider, Michael P. Richards, and Wim Van Neer.
2024. "Agropastoral and Dietary Practices of the Northern Levant Facing
Late Holocene Climate and Environmental Change: Isotopic Analysis of
Plants, Animals and Humans from Bronze to Iron Age Tell Tweini." *PLOS
ONE* 19(6): e0301775.

Assignment 6 asks:

> **How large is the difference in wild ryegrass (*Lolium
> cf. multiflorum*) Δ13C between the Middle Bronze Age and Late Bronze
> Age at Tell Tweini, how uncertain is that difference, and what does a
> Welch two-sample t-test contribute to its interpretation?**

This is a focused teaching comparison using published observations. It
is **not** a reproduction of the full statistical analysis in Fuller et
al. (2024).

## 3. Files and preparation

The assignment package contains:

-   `assignment06_tell_tweini_ttest.qmd` --- your working Quarto
    document;
-   `README.md` --- package overview;
-   `codebook.md` --- variable definitions;
-   `provenance.md` --- source and construction of the teaching dataset;
-   `data/README.md` --- data note;
-   `data/tell_tweini_ttest.csv` --- frozen teaching dataset.

Before analyzing the data:

1.  read the Fuller et al. (2024) case study;
2.  read `codebook.md` and `provenance.md`;
3.  render the starter QMD once before editing;
4.  confirm that the data import and initial filtering work.

The full teaching file contains **410 plant observations**. The
assignment comparison uses **20 *Lolium cf. multiflorum* observations**:

-   Middle Bronze Age: `n = 10`;
-   Late Bronze Age: `n = 10`.

The outcome is **Δ13C**, stored in `isotope_value`. Do not describe it
as raw measured plant δ13C.

## 4. Define the comparison before testing

Throughout the assignment, define the effect as:

**Middle Bronze Age − Late Bronze Age**

A positive difference therefore means that mean Δ13C is higher in the
Middle Bronze Age.

Before running a t-test, identify in complete sentences:

-   the observational unit;
-   the numerical outcome variable;
-   the categorical grouping variable;
-   why the observations form two independent groups rather than paired
    measurements;
-   the direction of the effect.

The purpose is to establish the research design and estimand before
choosing a statistical procedure.

## 5. Visualize and describe the evidence

Create a graph that makes the two period distributions directly
comparable **and shows the individual observations**. A boxplot may be
useful, but do not allow a summary graphic to hide the small number of
actual observations.

For each period report:

-   `n`;
-   mean Δ13C;
-   standard deviation;
-   median.

Calculate the observed raw difference:

**mean(Middle Bronze Age) − mean(Late Bronze Age)**

Describe:

-   the direction and approximate magnitude of the difference;
-   overlap between the groups;
-   within-group variation;
-   any unusual observations or visible asymmetry.

At this stage, remain descriptive. A graph alone does not establish a
population difference or its cause.

## 6. Consider design, assumptions, and robustness

The validity of a two-sample t-test depends on the research design as
well as the numerical distributions.

Consider:

-   whether observations can reasonably be treated as independent for
    this teaching comparison;
-   distribution shape within each period;
-   possible influential or extreme observations;
-   whether severe skew would make a mean-based comparison questionable;
-   whether the two groups appear to have similar or different spreads.

For comparison with Fuller et al. (2024), calculate **Shapiro--Wilk
diagnostics within each period**. Fuller et al. also assessed
homogeneity of variance, but you do **not** need to use a preliminary
variance test to choose between Student's and Welch's t-tests.

Do not interpret a non-significant Shapiro--Wilk result as proof of
normality. With only 10 observations in each group, formal normality
diagnostics have limited power. A normality diagnostic also cannot
establish independence.

Conclude this section by explaining briefly whether a t-based comparison
appears reasonable and what limitations remain.

## 7. Run the primary analysis: Welch's two-sample t-test

Use **Welch's independent-samples t-test** as the primary inferential
analysis. In R, the default two-independent-group `t.test()` uses
Welch's procedure.

Report:

-   the Middle Bronze Age mean;
-   the Late Bronze Age mean;
-   the raw Middle Bronze Age − Late Bronze Age mean difference;
-   the 95% confidence interval for that difference;
-   the t statistic;
-   the Welch--Satterthwaite degrees of freedom;
-   the two-sided p-value.

Your interpretation should explain the logic of the t statistic:

> the observed difference between sample means is evaluated relative to
> the estimated standard error of that difference.

Welch's degrees of freedom need not be a whole number.

Do **not** reduce the result to a binary statement such as "significant"
or "not significant." Interpret the magnitude of the difference, its
uncertainty, and the p-value together.

## 8. Interpret the 95% confidence interval

Use the t-test output to interpret the 95% confidence interval for the
Middle Bronze Age − Late Bronze Age mean difference.

Address:

-   the range of differences represented by the interval;
-   the direction of differences compatible with the data under the
    t-based procedure;
-   the precision of the estimate.

Do not interpret the interval only by asking whether it contains zero,
and do not say that there is a 95% probability that the fixed population
difference lies inside this particular frequentist interval.

## 9. Assess effect magnitude

Calculate **Cohen's d** using the pooled within-group standard deviation
as a standardized descriptive effect size.

Report both:

1.  the raw mean difference in Δ13C units;
2.  Cohen's `d`.

Interpret Cohen's `d` as the observed difference expressed in pooled
within-group standard-deviation units.

Do not rely solely on conventional labels such as "small," "medium," or
"large." Those labels do not determine archaeological importance. Return
to the raw Δ13C difference when discussing substantive meaning.

## 10. Compare Welch with the publication-aligned pooled test

Fuller et al. (2024) used an independent-samples t-test after assessing
distributional and variance assumptions. To understand the relationship
between procedures, also run the **equal-variance Student two-sample
t-test**.

Compare the pooled result with Welch's result:

-   Does the estimated mean difference change?
-   Does the t statistic change?
-   How do the degrees of freedom differ?
-   How do the 95% confidence intervals compare?
-   How do the p-values compare?
-   Does the substantive conclusion change?

The purpose is **not** to use a preliminary variance test as a switch
for deciding which test to run. Welch remains the primary ANTH418
analysis because it does not require equal population variances.

## 11. Understand the role of rank-based alternatives

You do not need to run a non-parametric test in Assignment 6.

Instead, explain briefly what you might consider if the data showed
severe skew, influential extreme observations, or other features that
made a mean-based t-test difficult to justify.

Your response should:

-   name the Mann--Whitney/Wilcoxon rank-sum test as a commonly used
    rank-based alternative for two independent groups;
-   explain that it is **not simply "the t-test for non-normal data"**;
-   recognize that a rank-based procedure does not automatically answer
    exactly the same question as a comparison of arithmetic means.

## 12. Interpret the result archaeologically

Return to Fuller et al. (2024) and distinguish different levels of
inference.

### What was measured

A difference in wild ryegrass (*Lolium cf. multiflorum*) Δ13C between
Middle Bronze Age and Late Bronze Age observations.

### What the isotope pattern may indicate

In the case-study framework, Δ13C contributes evidence concerning plant
water status and growing conditions.

### Possible archaeological explanations

The observed period difference may be considered in relation to
processes such as:

-   crop-field association;
-   agricultural water availability;
-   environmental change;
-   other differences in growing conditions or agricultural practice.

### What the analysis cannot establish

The t-test does **not** identify a unique causal mechanism. A
statistical difference between period samples does not by itself
demonstrate a particular climatic event, irrigation regime, farming
decision, or other single explanation.

Your interpretation should therefore integrate:

**raw effect magnitude + confidence interval + t-test evidence +
standardized effect + archaeological context + limitations**

rather than treating the p-value as the archaeological conclusion.

## 13. Required final interpretation

Answer the following questions in complete sentences:

1.  What is the observational unit, and why is this an
    independent-groups comparison?
2.  What is the estimated Middle Bronze Age − Late Bronze Age mean Δ13C
    difference, and what does its sign mean?
3.  What range of mean differences is represented by the 95% Welch
    confidence interval?
4.  What do the Welch t statistic, degrees of freedom, and p-value
    contribute beyond the descriptive comparison?
5.  What does Cohen's `d` add, and why should the raw Δ13C difference
    still be reported?
6.  Does the publication-aligned equal-variance t-test materially alter
    the interpretation?
7.  What climatic or agricultural claim does this analysis **not**
    establish by itself?

## 14. Required outputs

Your rendered assignment should include:

-   identification of the observational unit, variables,
    independent-groups design, and effect direction;
-   one clear visualization showing the individual observations;
-   group `n`, means, SDs, and medians;
-   the raw Middle Bronze Age − Late Bronze Age mean difference;
-   Shapiro--Wilk diagnostics and a short, non-mechanical discussion of
    assumptions;
-   the Welch two-sample t-test;
-   the 95% confidence interval for the mean difference;
-   Cohen's `d`;
-   the pooled Student t-test for comparison;
-   the conceptual discussion of a rank-based alternative;
-   the archaeological interpretation;
-   answers to all Final Interpretation questions.

Keep only output that contributes to the analysis or interpretation.

## 15. Scope

For Assignment 6, you are **not required to**:

-   repeat the bootstrap confidence interval from Assignment 5;
-   repeat the permutation test from Assignment 5;
-   perform a paired-samples t-test;
-   run a Mann--Whitney/Wilcoxon rank-sum test;
-   conduct ANOVA;
-   conduct regression;
-   use a preliminary variance test to decide whether Welch's test is
    allowed;
-   identify a unique causal mechanism for the isotope difference.

The new statistical focus is the logic and interpretation of the
**independent-groups Welch t-test**, its t-based confidence interval,
degrees of freedom, and effect magnitude.

## 16. Submission

Complete the supplied `assignment06_tell_tweini_ttest.qmd` rather than
creating a separate analysis from scratch.

Before submission:

1.  restart R and render the document from beginning to end;
2.  confirm that all code executes without errors;
3.  check that figures and tables are readable;
4.  remove unnecessary diagnostic output;
5.  check that the direction of every reported difference remains
    **Middle Bronze Age − Late Bronze Age**;
6.  confirm that you refer to the outcome as **Δ13C**, not raw plant
    δ13C;
7.  proofread the statistical and archaeological interpretations.

Submit the completed assignment in the format specified for ANTH418 on
Canvas.
