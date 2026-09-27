# Assignment 2: Kinbank: Exploring Global Kinship Terminology

**Week:** 5  
**Statistical focus:** Exploratory Data Analysis and Visualization

## Research question

How is kinship terminology distributed across selected languages, families, and macroareas, and what can visualization reveal without assuming languages are independent observations?

## Published case study

Passmore, Sam, et al. 2023. Kinbank: A Global Database of Kinship Terminology. *PLOS ONE* 18(5): e0283218.

DOI: https://doi.org/10.1371/journal.pone.0283218

## Teaching snapshot

ANTH418 uses a frozen later Kinbank snapshot containing:

- 1,314 metadata language records;
- 1,287 languages represented by at least one form record;
- 27 metadata-only language records not represented in the form table;
- 218,412 form records represented in the teaching table.

The student teaching file contains the 1,287 represented languages. The 27 metadata-only records are **not** coded as languages with zero kin terms.

The 2023 publication reports an earlier database snapshot of 1,229 languages and 210,903 data points. See `provenance.md` for the version relationship.

## Workflow

1. Read the case-study article before analysis.
2. Read `codebook.md` and `provenance.md`.
3. Open `assignment02_kinbank_visualization.qmd`.
4. Render once before editing to confirm that R, packages, and data paths work.
5. Work through **Code → Describe → Visualize → Interpret**.
6. Keep only output needed to support your reasoning.

## Recurring interpretation questions

1. What is the unit of analysis?
2. What exploratory or descriptive result matters most?
3. What anthropological interpretation is consistent with the pattern?
4. What claim does the result not support?

## Data

The student file `data/kinbank_teaching.csv` is a frozen teaching dataset built reproducibly from a pinned Kinbank snapshot. See `provenance.md`.
