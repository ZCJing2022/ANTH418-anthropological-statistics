# Assignment 7 Instructions: Lithic Raw Materials in Highland Lesotho

**Week:** 11\
**Statistical focus:** Chi-Square and Tests of Proportions\
**Case study:** Gregory, Mitchell, and Pargeter (2023)

## Purpose

This assignment develops your ability to analyze **categorical
archaeological evidence**. You will examine whether lithic raw-material
composition differs among four archaeological layers at Sehonghong in
Highland Lesotho.

The purpose is not simply to obtain a chi-square p-value. Work through:

> **counts → proportions → visualization → contingency table → expected
> counts → chi-square → residuals → effect size → archaeological
> interpretation**

By the end, distinguish evidence for association, the cells producing
that association, its magnitude, and the archaeological claims the
association does and does not justify.

## Research question

> **Does lithic raw-material composition differ among BAS, RBL-CLBRF,
> RF, and BARF, which layer/material combinations contribute most
> strongly to the association, and how strong is the association?**

## Learning goals

You should be able to identify the unit of analysis and categorical
variables; distinguish counts from proportions; construct and interpret
a contingency table; explain observed and expected counts; run Pearson's
chi-square test; diagnose sparse expected counts; use standardized
residuals; calculate Cramér's V; explain when Fisher's exact test is
useful; and distinguish statistical association from behavioral or
causal explanation.

## Read before beginning

Read the Week 11 lecture materials and Gregory et al. (2023). Also read
`README.md`, `codebook.md`, `provenance.md`, and `data/README.md`.

## Teaching dataset

Use `data/lesotho_raw_material.csv`.

The file contains **1,060 source observations**: BAS = 234, RBL-CLBRF =
270, RF = 251, and BARF = 305.

The source CSV preserves seven raw-material categories: `Agate`,
`CoarseChert`, `CrystallineQuartz`, `Dolerite`, `FineChert`,
`Quartzite`, and `Sandstone`.

### Unit of analysis

The unit of analysis is **one lithic observation/artifact record
represented in the source flake dataset and retained in the four-layer
analytical frame**.

Do not interpret 1,060 artifact records as 1,060 independent behavioral
events. Artifact frequencies can be affected by reduction,
fragmentation, deposition, recovery, classification, and other formation
processes.

## Analysis-time raw-material grouping

Retain `CrystallineQuartz`, `Dolerite`, and `FineChert` separately.
Combine `Agate`, `CoarseChert`, `Quartzite`, and `Sandstone` into
`Other`.

`Other` is **not** an original source category. It is a transparent
analysis-time teaching grouping; no observations are deleted. It is used
because the original seven-category table contains sparse cells, whereas
the validated 4 × 4 teaching table avoids sparse expected counts.

## Workflow

### 1. Import and inspect

Import the CSV and confirm the number of rows, four archaeological
layers, seven source raw-material categories, and variables. Identify
the unit of analysis in your own words. Keep the four published layers
exactly as provided.

### 2. Create `material_group`

Create the four-category teaching variable. Verify that all 1,060
observations remain, no `material_group` is missing, and the original
`raw_material` variable remains unchanged. Explain why the transparent
grouping is preferable to applying Pearson's chi-square test to a sparse
table.

### 3. Count and compare proportions

Create the **4 × 4 contingency table** of archaeological `level` by
`material_group`. Calculate **row proportions**.

A row proportion answers:

> **Within this archaeological layer, what proportion of lithic
> observations belongs to each raw-material group?**

Make the denominator explicit and describe the main compositional
differences before formal testing.

### 4. Visualize composition

Create a proportional stacked bar chart, grouped proportional bar chart,
or another appropriate categorical visualization. Use clear labels and
explain briefly what the figure suggests.

### 5. State hypotheses

State the null hypothesis in plain English: archaeological layer and
raw-material group are statistically independent. State the alternative
hypothesis as well.

### 6. Pearson chi-square test

Run Pearson's chi-square test of independence. Report chi-square,
degrees of freedom, and p-value. Interpret the p-value as evidence about
compatibility with the null model, not as effect size or the probability
that the null is true.

### 7. Inspect expected counts

Report the minimum expected count and number of cells below 5. Explain
whether the usual Pearson chi-square approximation is reasonable. Treat
the expected-count guideline as a diagnostic rather than a magical
cutoff.

### 8. Locate the association

Inspect standardized residuals. Positive residuals mean more
observations than expected under independence; negative residuals mean
fewer. Pay particular attention to absolute residuals around **2 or
greater**. Identify the strongest positive and negative cells and
connect them to the row proportions.

### 9. Calculate Cramér's V

Calculate **Cramér's V** and use it to discuss association magnitude. Do
not interpret the p-value as effect size, and do not turn conventional
effect-size labels into archaeological conclusions.

### 10. Sparse-table alternatives

Explain when **Fisher's exact test** or another sparse-table strategy
would be preferable. Then explain why Fisher's exact test is **not
required here** if your expected-count diagnostics show that all cells
are comfortably above the sparse-count range.

### 11. Interpret archaeologically

Compare your result with Gregory et al. (2023). Discuss compositional
differences, the cells that depart most strongly from independence, and
association magnitude. Consider how the pattern might relate to
raw-material selection, procurement, technological organization, or
mobility.

Then distinguish statistical association from archaeological
explanation. The chi-square analysis alone does not establish a unique
procurement strategy, particular mobility pattern, climatic causation,
directed procurement from a specific source, or social-network
mechanism. Gregory et al. draw broader interpretations from multiple
lines of evidence, including landscape survey, cortex, and technological
ratios.

## Required outputs

Your rendered assignment should contain:

1.  research question and unit of analysis;
2.  code creating `material_group`;
3.  the 4 × 4 observed contingency table;
4.  within-layer row proportions;
5.  one purposeful composition visualization;
6.  null and alternative hypotheses;
7.  Pearson chi-square results;
8.  expected-count diagnostics;
9.  standardized residuals and identification of the strongest cells;
10. Cramér's V;
11. a brief explanation of Fisher's exact test and why it is not
    required here; and
12. a concise archaeological interpretation integrating statistical
    evidence, effect magnitude, and limitations.

Keep only output needed to support your reasoning.

## Final interpretation questions

1.  What is the unit of analysis?
2.  How does raw-material composition vary among the four layers?
3.  What does Pearson's chi-square test tell you about layer and
    raw-material composition?
4.  Are expected counts adequate for the ordinary approximation?
5.  Which cells contribute most strongly, and in what direction?
6.  What does Cramér's V add beyond the p-value?
7.  Why is Fisher's exact test not required here, and when would it
    become useful?
8.  What behavioral, procurement, mobility, climatic, or social claim
    does the association **not** establish by itself?

## Scope

Do not use logistic or multinomial regression, log-linear models,
correspondence analysis, ANOVA, permutation tests, bootstrap inference,
or formal mobility models. Do not reproduce every analysis in Gregory et
al. (2023).

## Submission

Submit the completed Quarto work in the format specified on Canvas. It
must render from a clean R session, contain understandable code, include
the required visualization and statistical quantities, and provide a
clear archaeological interpretation with assumptions and limitations. If
permitted GenAI materially contributes, include the brief AI Use
Statement required by the syllabus.
