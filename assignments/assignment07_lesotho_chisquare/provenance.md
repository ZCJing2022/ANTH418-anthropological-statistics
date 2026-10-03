# Data Provenance

## Publication

Gregory, A., Mitchell, P., & Pargeter, J. (2023). Raw material surveys
and their behavioral implications in Highland Lesotho. *Journal of
Paleolithic Archaeology, 6*, 18.
https://doi.org/10.1007/s41982-023-00138-y

## Original source

Local source file: `source/sehonghong_flakes.csv`\
Repository: `Agregory198/lesotho-stone-resources`

## Teaching population

The teaching build retains the seven source raw-material categories used
in the authors' archaeological raw-material table. Source levels `rbl`
and `clbrf` are combined as `RBL-CLBRF`.

-   BAS: 234
-   RBL-CLBRF: 270
-   RF: 251
-   BARF: 305

Total: **1,060 source observations**.

## Source-code inconsistency documented

The authors' R Markdown contains an internal inconsistency: an earlier
object is filtered to `Completeness == "Complete"`, but the later
hard-coded archaeological chi-square table corresponds to the **1,060
observations retained here without that completeness filter**.

ANTH418 follows the source observations that reproduce the authors'
archaeological raw-material contingency table and documents this
discrepancy explicitly.

## Teaching transformation

The source CSV preserves all seven raw-material categories. For the
introductory ANTH418 analysis only, students create:

-   `CrystallineQuartz`
-   `Dolerite`
-   `FineChert`
-   `Other` = Agate + CoarseChert + Quartzite + Sandstone

This transparent collapse eliminates sparse expected cells while
preserving every authentic observation. `Other` is not an original
source category.

## Unit of analysis

One lithic observation/artifact record represented in the source flake
dataset and retained in the four-layer analytical frame.

## Statistical scope

The teaching analysis uses Pearson's chi-square test of independence,
expected-count diagnostics, standardized residuals, and Cramér's V.

Fisher's exact test is discussed as a strategy for genuinely sparse
contingency tables but is not required for the validated four-by-four
teaching table because all expected counts exceed 5.

The statistical association does not by itself establish a unique
behavioral, procurement, mobility, climatic, raw-material-access, or
social mechanism.

## Build script

The teaching dataset was built reproducibly in the instructor repository
using:

`scripts/build_teaching_data.R`

The build script is not included in the student package and is not
needed to complete this assignment.
