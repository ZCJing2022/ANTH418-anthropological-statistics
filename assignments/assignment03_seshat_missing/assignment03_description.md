# Assignment 3 — Missing Data in the Seshat Moralizing Gods Debate

**Week:** 6  
**Statistical focus:** Missing values, recoding, and sensitivity analysis

## Research question

How does the apparent descriptive pattern of moralizing-gods outcomes change when missing or unknown observations are preserved as unknown versus recoded as known absence?

## Case study

This assignment uses the missing-data controversy surrounding the Seshat moralizing-gods analysis. Beheim et al. (2021) argued that treatment of missing outcome information materially affected conclusions drawn from the Seshat data.

The teaching exercise focuses on one fundamental distinction:

> **Unknown is not the same as absent.**

## Teaching data

The file `data/seshat_missingness_counts.csv` is an aggregated teaching summary of a documented 801-observation regression frame.

It contains three rows:

- `known_present`: 299;
- `known_absent`: 12;
- `missing_unknown`: 490.

One row in the CSV is therefore an **aggregate outcome category**, not one historical observation. The underlying unit of analysis is one observation in the documented regression frame.

## What you will do

You will:

1. inspect the aggregate teaching data;
2. calculate counts and proportions for present, absent, and unknown outcomes;
3. visualize the evidence while preserving unknown as its own category;
4. construct an alternative representation in which unknown outcomes are recoded as absent;
5. compare the two representations numerically and visually;
6. interpret what changes and why; and
7. explain what the sensitivity analysis can and cannot establish.

The purpose is not to determine the true historical status of the 490 unknown observations. It is to examine how an analytical coding decision changes the empirical pattern presented to the reader.

## Statistical scope

This is a **descriptive sensitivity analysis**.

Do not use regression, hypothesis tests, confidence intervals, multiple imputation, MICE, or other advanced missing-data methods.

The assignment asks how a data-preparation decision affects description. It does not reproduce the original published models or resolve the broader debate about moralizing gods.

## Central principle

> **Preparation is analysis.**

Recoding missing information can change the apparent empirical pattern even when no new historical evidence has been added.
