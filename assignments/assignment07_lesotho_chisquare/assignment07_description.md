# Assignment 7: Lithic Raw Materials in Highland Lesotho

**Week:** 11\
**Statistical focus:** Chi-Square and Tests of Proportions

## Overview

Assignment 7 examines variation in lithic raw-material composition among
four published archaeological layers at Sehonghong in Highland Lesotho.
Using a frozen teaching dataset derived from Gregory, Mitchell, and
Pargeter (2023), you will move from categorical counts and within-layer
proportions to Pearson's chi-square test of independence, expected-count
diagnostics, standardized residuals, and Cramér's V.

The central research question is:

> **Does lithic raw-material composition differ among BAS, RBL-CLBRF,
> RF, and BARF, which layer/material combinations contribute most
> strongly to the association, and how strong is the association?**

The assignment emphasizes that a small p-value is not the end of the
analysis. You will first describe and visualize raw-material
composition, then determine whether layer and raw-material group are
associated, locate the cells that contribute most strongly, quantify
association magnitude, and interpret the pattern archaeologically.

## Teaching data

The frozen file contains **1,060 source observations** from the four
archaeological layers and preserves seven source raw-material
categories. For the Week 11 analysis, four rarer categories are
transparently combined at analysis time into `Other`, producing a
validated 4 × 4 contingency table with no expected counts below 5.

The unit of analysis is **one lithic observation/artifact record
represented in the source flake dataset and retained in the four-layer
analytical frame**.

## Workflow

> **Inspect → Group categories → Count and calculate row proportions →
> Visualize → Build contingency table → Inspect expected counts →
> Chi-square → Standardized residuals → Cramér's V → Sparse-table
> reasoning → Interpret archaeologically**

Your final interpretation should distinguish among three questions:

1.  **Is there an association?** --- Pearson chi-square.
2.  **Where is the association concentrated?** --- proportions and
    standardized residuals.
3.  **How strong is the association?** --- Cramér's V.

A statistical association does not by itself establish a unique
procurement strategy, mobility pattern, climatic cause, or social
mechanism.

## Published case study

Gregory, A., Mitchell, P., & Pargeter, J. (2023). Raw material surveys
and their behavioral implications in Highland Lesotho. *Journal of
Paleolithic Archaeology, 6*, 18.
https://doi.org/10.1007/s41982-023-00138-y
