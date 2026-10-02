# Assignment 2 Instructions: Visualizing Kinship Diversity with Kinbank

## Purpose

This assignment applies the Week 5 workflow for **exploratory data
analysis and visualization** to the Kinbank teaching dataset. The goal
is not to test a hypothesis or establish a causal explanation. Your task
is to use graphics to learn what the dataset contains, compare observed
patterns responsibly, and identify questions that would require further
analysis.

Use the supplied file: `data/kinbank_teaching.csv`.

The dataset contains **1,287 languages** with `language_id`, `language`,
`family`, `macroarea`, `latitude`, `longitude`, and `kin_term_count`.
The **observational unit is a language**.

## 1. Inspect the data

Import the dataset and inspect its structure. Confirm the number of
observations and variables; identify categorical and numerical
variables; check variables used in your analysis for missing values; and
state that each row represents one language.

## 2. Visualize the structure of the evidence

Create a **bar chart** showing the number of languages represented by
either `family` or `macroarea`. Choose the grouping that produces a
clear, interpretable graphic.

Briefly describe which groups are most and least represented, whether
representation is balanced or strongly uneven, and why unequal
representation matters for later comparisons. Sample composition is part
of the evidence, not merely background information.

## 3. Examine the distribution of `kin_term_count`

Create a **histogram** of `kin_term_count`. During exploration, try more
than one reasonable bin width before choosing the version that
communicates the distribution most clearly.

Describe relevant features such as center, spread, skewness, modes,
gaps, and unusually high or low observations.

Do not interpret `kin_term_count` as a complete measure of
kinship-system complexity. It is a useful teaching summary of recorded
kin-term diversity, but languages with similar counts may organize kin
relations differently.

## 4. Make one purposeful comparison across groups

Choose **one** comparison of `kin_term_count` across either `macroarea`
or `family`. Suitable graphics include a boxplot (preferably with raw
observations where useful), faceted histograms, or another Week 5
graphic that clearly matches the variables and comparison.

Briefly explain why you chose the graphic, what similarities and
differences are visible **in this sample**, and whether unequal group
sizes or graphical design affect the comparison. If you use facets,
fixed scales are generally preferable when direct comparison across
panels is the goal.

## 5. Consider non-independence

In a short paragraph, explain how one or both of these could affect the
patterns you visualized:

-   **phylogenetic autocorrelation** --- related languages may resemble
    one another because of shared ancestry and inherited terminology;
-   **spatial autocorrelation** --- geographically close languages may
    resemble one another because of contact, borrowing, regional
    history, or shared environments.

You do **not** need to calculate autocorrelation, construct a
phylogenetic tree, or fit a phylogenetic model. The goal is to recognize
that visualization can reveal dependence but does not correct for it.

## 6. Write a concise EDA interpretation

Conclude by answering:

1.  **What do your visualizations show about the observed Kinbank
    teaching sample?**
2.  **What is one question or apparent pattern worth investigating
    further?**
3.  **What is one conclusion these visualizations alone do not
    justify?**

Use descriptive language such as "In this sample...," "The distribution
shows...," "The graph suggests...," and "This pattern would be worth
investigating...". Do not claim that the visualizations prove a
universal pattern, causal relationship, or evolutionary process.

## What your report should contain

Your report should contain a brief data inspection; one bar chart of
sample composition; one histogram of `kin_term_count`; one purposeful
group comparison; concise interpretation of each visualization; a short
discussion of cross-cultural non-independence; and a final
description--question--limitation synthesis.

All graphics should have readable labels and visual encodings
appropriate to the variables. Apply the Week 5 `ggplot2` principle:
**variable inside `aes()`; fixed appearance outside `aes()`**.

## What is not required

Do **not** conduct hypothesis tests, p-values, confidence intervals,
causal analysis, phylogenetic comparative models, spatial
autocorrelation tests, or formal tests of differences among families or
macroareas. Assignment 2 stops at responsible exploratory description.

## Submission

Submit:

1.  completed Quarto source file (`.qmd`); and
2.  rendered HTML file (`.html`).

Both files should reproduce the same analysis and visualizations.
