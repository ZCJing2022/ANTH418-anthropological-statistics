# Data Provenance

## Parent publication

Bird, D., Miranda, L., Vander Linden, M., Robinson, E., Bocinsky, R. K., Nicholson, C., Capriles, J. M., et al. (2022). p3k14c, a synthetic global database of archaeological radiocarbon dates. *Scientific Data, 9*, 27.

https://doi.org/10.1038/s41597-022-01118-7

## Frozen case-study source

Repository: `people3k/PopulationExpansion2025`

Pinned Git commit:

`f8aa38b84e435ec0d87dab7a726e3881b87edad5`

Repository file:

`data/SoCaldates.csv`

Verified Git blob:

`09d1ae6d0e938fd9b7040c3cdececd7808244a56`

## How the 984-row subset was produced

The repository's `CaseStudyRadiocarbon.R` reads the broader p3k14c-derived data and defines the Southern California case-study subset with:

```r
Latitude > 27 &
Latitude < 36.01 &
Longitude > -122 &
Longitude < -116 &
Material != "SHELL"
```

The resulting teaching file contains **984 radiocarbon determinations**. It is **not the full p3k14c database**.

## Verified teaching-file characteristics

`data/p3k14c_sampling.csv` has:

- 984 rows;
- no missing `age`;
- no missing `error`;
- no missing latitude/longitude coordinates;
- no shell observations;
- 510 missing `method` values;
- 3 missing `site_id` values;
- 559 missing `site_name` values;
- no duplicate laboratory identifiers.

Missing metadata are retained because they are source metadata gaps rather than evidence that a radiocarbon determination is invalid.

## Assignment 4 teaching frame

For the random-sampling portion of Assignment 4, the full 984-row file is treated as a **reference population for teaching purposes**.

For the sampling-bias demonstration, students deliberately restrict the available frame to:

```r
longitude > -118
```

This produces **310 eligible determinations** in the current frozen teaching file. The restriction is intentionally pedagogical: it creates a transparent example of how changing the sampling frame can shift an estimate. It is **not** presented as a substantive archaeological boundary.

## Interpretation limits

`age` is conventional uncalibrated radiocarbon age in years BP. Assignment 4 uses its mean to demonstrate sampling variability, sampling distributions, standard error, and sampling bias.

The exercise does **not** support interpreting mean conventional radiocarbon age as a calibrated calendar date, occupation date, or direct regional population chronology. It also does not reproduce the full dates-as-data analyses discussed by Bird et al. (2022).

## Reproducibility

The teaching dataset was built reproducibly in the instructor data repository. Students do not need the build script to complete Assignment 4 and should not edit the supplied CSV manually.
