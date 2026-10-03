# Assignment 7: Lithic Raw Materials in Highland Lesotho

**Week:** 11\
**Statistical focus:** Chi-Square and Tests of Proportions

## Research question

Does lithic raw-material composition differ among the four published
Sehonghong archaeological layers --- BAS, RBL-CLBRF, RF, and BARF ---
which layer/material combinations contribute most strongly to the
association, and how strong is the association?

## Teaching comparison

The frozen teaching file contains **1,060 source observations** across
BAS, RBL-CLBRF, RF, and BARF. The unit of analysis is one lithic
observation/artifact record represented in the source flake dataset and
retained in the four-layer analytical frame.

The seven source raw-material categories remain in the CSV. For the Week
11 analysis, students create `CrystallineQuartz`, `Dolerite`,
`FineChert`, and `Other`, where `Other` combines Agate, CoarseChert,
Quartzite, and Sandstone. `Other` is an analysis-time teaching grouping,
not a source category.

## Workflow

**Inspect → Group categories → Count and calculate row proportions →
Visualize → Build contingency table → Inspect expected counts →
Chi-square → Standardized residuals → Cramér's V → Sparse-table
reasoning → Interpret archaeologically**

## Data

The student file `data/lesotho_raw_material.csv` is a frozen teaching
dataset built reproducibly from the published source data. See
`provenance.md`.

## Published case study

Gregory, A., Mitchell, P., & Pargeter, J. (2023). Raw material surveys
and their behavioral implications in Highland Lesotho. *Journal of
Paleolithic Archaeology, 6*, 18.
https://doi.org/10.1007/s41982-023-00138-y
