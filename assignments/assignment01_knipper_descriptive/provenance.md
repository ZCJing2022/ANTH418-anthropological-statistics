# Data Provenance

## Publication

Knipper, Corina, Cristina Rihuete-Herrada, Jordi Voltas, Petra Held, Vicente Lull, Rafael Micó, Roberto Risch, and Kurt W. Alt. 2020. Reconstructing Bronze Age Diets and Farming Strategies at the Early Bronze Age Sites of La Bastida and Gatas (Southeast Iberia) Using Stable Isotope Analysis. PLOS ONE 15(3): e0229398.

**DOI:** https://doi.org/10.1371/journal.pone.0229398

## Original source files

- `knipper2020_s1.xlsx` — https://journals.plos.org/plosone/article/file?id=info:doi/10.1371/journal.pone.0229398.s001&type=supplementary

## Teaching file

`data/knipper2020_humans.csv`

## Unit of analysis

See the assignment README and the original publication. The teaching build script
preserves source observations while reducing the dataset to variables needed for
the ANTH418 exercise.

## Permitted teaching-file operations

- standardize column names;
- retain only relevant variables;
- preserve or create a transparent source-row identifier;
- remove fully blank rows;
- remove only observations explicitly identified by the source publication as invalid;
- select a documented subset where the full dataset is unnecessarily complex.

## Prohibited operations

- no fabricated observations;
- no manual alteration of measured values;
- no removal of statistical outliers merely to improve results;
- no claim that the ANTH418 analysis reproduces advanced methods not taught in the course.

## Build script

The teaching dataset was built reproducibly in the instructor repository using:

`scripts/build_teaching_data.R`

The build script is not included in the student package and is not needed to complete this assignment.

After building, record source and teaching-file checksums in
`data_registry/file_manifest.csv`.
