# Assignment 5: Teotihuacan Leporid Management

**Week:** 8  
**Statistical focus:** Confidence Intervals and Hypothesis Testing

## Research question

How large is the δ13C difference between leporids from **Oztoyahualco** and the **Moon Pyramid**, how uncertain is it, and how unusual would that difference be under a no-difference null model?

## Published case study

Somerville, Andrew D., Nawa Sugiyama, Linda R. Manzanilla, and Margaret J. Schoeninger. 2016. Animal Management at the Ancient Metropolis of Teotihuacan, Mexico: Stable Isotope Analysis of Leporid (Cottontail and Jackrabbit) Bone Mineral. *PLOS ONE* 11(8): e0159982.

DOI: https://doi.org/10.1371/journal.pone.0159982

## Teaching comparison

Assignment 5 uses source-valid δ13C observations from:

- Oztoyahualco: `n = 15`;
- Moon Pyramid: `n = 50`.

The effect is always defined as:

**Oztoyahualco − Moon Pyramid**

A positive value means that mean δ13C is higher (less negative) at Oztoyahualco.

## Week 8 workflow

> **Estimate → quantify uncertainty → test against a null model → interpret archaeologically**

Students will:

1. inspect and describe the two groups;
2. visualize the observed distributions;
3. estimate the mean δ13C difference;
4. construct a 95% bootstrap confidence interval;
5. specify a no-difference null model;
6. generate a permutation null distribution;
7. calculate and correctly interpret a two-sided p-value;
8. integrate effect magnitude, uncertainty, and null-model evidence;
9. return to the archaeological question and discuss limitations.

## Files

- `assignment05_teotihuacan_inference.qmd` — student starter;
- `assignment05_description.md` — concise assignment description;
- `assignment05_instructions.md` — detailed instructions;
- `data/teotihuacan_leporids.csv` — frozen teaching dataset;
- `data/README.md` — data note;
- `codebook.md` — variable definitions;
- `provenance.md` — source and teaching-data provenance.

## Workflow

1. Read Somerville et al. (2016).
2. Read `codebook.md` and `provenance.md`.
3. Open `assignment05_teotihuacan_inference.qmd`.
4. Render once before editing.
5. Complete the analysis in order.
6. Keep only output needed to support your reasoning.
7. Render again from a clean R session before submission.

## Interpretation standard

A strong submission distinguishes:

- the **observed effect**;
- the **bootstrap confidence interval**;
- the **permutation p-value**;
- the **archaeological interpretation**.

The confidence interval and p-value answer different questions.

Statistical evidence for a contextual isotope difference does **not** by itself establish one unique provisioning, management, or breeding mechanism.

## Data

The teaching file is a frozen dataset built reproducibly from the published supporting data. The existing `valid` field preserves the documented δ13C exclusion rule.

See `codebook.md` and `provenance.md` for details.