# Assignment 3 — Detailed Instructions

## Missing Data in the Seshat Moralizing Gods Debate

**Week:** 6  
**Statistical focus:** Missing values, recoding, and sensitivity analysis

## Purpose

Assignment 3 examines a fundamental problem in data analysis: **missing information is not the same thing as an observed zero or documented absence**.

The exercise uses an aggregated teaching summary based on the missing-data issue discussed by Beheim et al. (2021) in relation to the Seshat moralizing-gods debate.

You are not being asked to reproduce the original regression models or decide the broader historical debate. Instead, you will investigate a narrower methodological question:

> **How much can the apparent descriptive pattern change when unknown observations are represented differently?**

This is a data-preparation and sensitivity-analysis exercise.

## Learning goals

By completing this assignment, you should be able to:

1. distinguish a missing or unknown value from a recorded zero or documented absence;
2. distinguish the rows of an aggregate teaching file from the underlying observational units they summarize;
3. calculate and interpret counts, proportions, and percentages;
4. preserve uncertainty explicitly in a visualization;
5. create an alternative coding without overwriting the original representation;
6. compare two data representations numerically and visually;
7. explain sensitivity analysis in plain language;
8. distinguish a change in analytical coding from a change in historical evidence; and
9. state clearly what a descriptive sensitivity analysis can and cannot establish.

## Required preparation

Before beginning:

1. read the Week 6 Study Guide;
2. read the assigned Seshat case-study material;
3. read `README.md`;
4. read `codebook.md`;
5. read `provenance.md`; and
6. open `assignment03_seshat_missing.qmd`.

Render the starter once before editing it. This confirms that R, the required packages, and the data path work correctly.

## Teaching dataset

Use:

`data/seshat_missingness_counts.csv`

The file contains **three aggregate rows**, not 801 case-level rows.

The categories are:

- `known_present` — 299 underlying observations;
- `known_absent` — 12 underlying observations;
- `missing_unknown` — 490 underlying observations.

Together they summarize **801 underlying observations**.

The underlying unit of analysis is one observation in the documented regression frame. One row in the teaching CSV is an aggregate status category.

This distinction matters. The teaching file does not contain 490 literal `NA` cells. Instead, the row `missing_unknown` records that 490 underlying observations had an unknown or missing outcome.

## Analytical workflow

Follow this sequence:

> **Inspect → Quantify → Preserve uncertainty → Recode separately → Compare → Visualize → Interpret**

### 1. Inspect the data

Load the CSV and inspect its structure.

Confirm:

- the number of rows;
- the number of variables;
- what one row represents;
- the underlying unit of analysis;
- what `count` means; and
- why `known_absent` and `missing_unknown` are different evidential states.

Do not use `is.na()` to search for 490 missing cells in this aggregate teaching file.

### 2. Quantify the documented outcome statuses

Calculate the count, proportion, and percentage represented by each of the three statuses.

Check that:

- counts sum to 801;
- proportions sum to 1; and
- percentages sum to 100.

Report the percentages for:

- documented presence;
- documented absence; and
- missing/unknown outcomes.

Then identify the most important descriptive feature of this distribution before any recoding occurs.

Always make the denominator clear. Here the percentages refer to the complete documented 801-observation frame summarized by the teaching file.

### 3. Preserve unknown as unknown

Create a visualization showing all three categories separately.

Your figure should make the distinction among:

- evidence of presence;
- evidence of absence; and
- absence of information

visually clear.

Refine the starter plot so that the ordering and labels are easy to interpret.

Do not collapse `missing_unknown` into `known_absent` in this first representation.

### 4. Construct the alternative `unknown → absent` representation

Create a **new object** representing the alternative coding decision.

Do not overwrite the original data object.

In this alternative representation:

- `known_present` remains `present`;
- `known_absent` becomes `absent`;
- `missing_unknown` is also classified as `absent`.

Recalculate counts and percentages.

Verify that the total remains 801.

Report:

- the number and percentage classified as present;
- the number and percentage classified as absent; and
- the number of underlying observations whose analytical classification changes.

Be precise in your language. The 490 observations do not acquire new historical evidence. Their **analytical label** changes.

### 5. Compare the two representations

Create a compact comparison showing:

**Representation A — uncertainty preserved**

- Present
- Absent
- Unknown

**Representation B — unknown recoded as absent**

- Present
- Absent

Use the comparison to answer:

- Does documented presence change?
- Does documented absence in the source evidence change?
- Does the total amount of historical evidence change?
- What changes analytically?
- How does the apparent balance between presence and absence change?

Explain why the percentages differ rather than merely reporting that they differ.

### 6. Visualize the sensitivity analysis

Create a figure that makes the two representations directly comparable.

The figure should allow a reader to see:

- what remains unchanged;
- what changes substantially;
- that the change results from recoding rather than new observations; and
- why the two representations can create different impressions of the same underlying evidence.

### 7. Interpret the analytical consequences

Your final interpretation should distinguish clearly among:

1. **the documented evidence**;
2. **the missing or unknown information**;
3. **the analytical recoding decision**; and
4. **the resulting descriptive pattern**.

Explain why unknown and documented absence are not interchangeable.

Explain what information is lost when a three-state representation is collapsed into two states.

Explain whether the descriptive pattern is sensitive to the coding decision.

Finally, state what this exercise does **not** establish about the true historical presence or absence of moralizing gods.

## What sensitivity analysis means here

A sensitivity analysis asks:

> **Does the substantive pattern change when an important analytical choice changes?**

If two reasonable representations lead to substantially different descriptive impressions, the result is sensitive to that choice.

Sensitivity analysis does not automatically tell us which representation is historically correct.

It tells us that the analytical conclusion depends on how uncertainty is handled.

## Statistical scope

Keep the assignment within Week 6.

Do **not** perform:

- t-tests;
- chi-square tests;
- regression;
- confidence intervals;
- Bayesian models;
- multiple imputation;
- MICE;
- phylogenetic models; or
- other inferential analyses.

Do not attempt to reproduce the full analyses of Whitehouse et al. (2019) or Beheim et al. (2021) from this three-row teaching summary.

The assignment is intentionally descriptive.

## Interpretation boundaries

Avoid statements such as:

- “the 490 cases had no moralizing gods”;
- “missing means absent”;
- “the sensitivity analysis proves which coding is correct”;
- “this exercise resolves the Seshat debate”; or
- “the recoded values are new historical observations.”

Instead, distinguish observed information from analytical assumptions.

A strong conclusion explains how the representation of uncertainty changes the descriptive pattern while recognizing that the teaching summary cannot determine the unknown historical states.

## Required outputs

Your completed report should contain:

1. inspection of the teaching data;
2. confirmation of the 801 underlying observations;
3. the three-category count/proportion/percentage summary;
4. a visualization preserving unknown outcomes;
5. the alternative `unknown → absent` summary;
6. a direct numerical comparison of the two representations;
7. a comparative visualization;
8. a concise interpretation of the sensitivity analysis; and
9. a statement of the limits of inference.

## Submission

Submit both:

1. the completed Quarto source file (`.qmd`); and
2. the rendered HTML file (`.html`).

Keep your analysis reproducible.

Do not manually type calculated percentages when R can calculate them from the teaching file.

Before submitting:

1. save your work;
2. restart R;
3. render the complete document from a clean session;
4. confirm that all code executes;
5. confirm that all figures and tables appear correctly; and
6. reread the final interpretation for any accidental equation of unknown with absence.

## Central lesson

> **Preparation is analysis.**

A recoding decision can change the empirical pattern presented to a reader even when the underlying historical evidence has not changed.
