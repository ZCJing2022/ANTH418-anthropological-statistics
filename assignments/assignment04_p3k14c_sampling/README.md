# Assignment 4: Sampling Archaeological Radiocarbon Data

**Week:** 7  
**Statistical focus:** Probability, Sampling, and Sampling Distributions

## Research question

How do sample size and sampling design affect estimates from archaeological radiocarbon data, and why can a large biased sample remain biased?

## Case study

Bird, D., Miranda, L., Vander Linden, M., Robinson, E., Bocinsky, R. K., Nicholson, C., Capriles, J. M., et al. (2022). p3k14c, a synthetic global database of archaeological radiocarbon dates. *Scientific Data, 9*, 27. https://doi.org/10.1038/s41597-022-01118-7

## Teaching population

ANTH418 uses a frozen **Southern California case-study subset** derived from p3k14c, not the full global database. The teaching file contains **984 radiocarbon determinations**. For this exercise only, the complete 984-row file is treated as the **reference population**.

The unit of analysis is one radiocarbon determination.

## Statistical focus

The assignment applies only concepts introduced in Week 7:

- population, sample, parameter, and statistic;
- random sampling;
- sampling variability;
- sampling distributions;
- standard error and sample size;
- sampling frames;
- selection bias and representativeness; and
- archaeological sampling filters.

The exercise deliberately contrasts two problems:

1. **Sampling variability** — random sample-to-sample fluctuation, which generally decreases as sample size increases.
2. **Sampling bias** — systematic distortion created by the sampling frame or selection process, which does not necessarily disappear with a larger sample.

## Workflow

1. Read Bird et al. (2022), then read `codebook.md` and `provenance.md`.
2. Open `assignment04_p3k14c_sampling.qmd`.
3. Render once before editing to confirm that R, packages, and data paths work.
4. Work through **Inspect → Sample repeatedly → Visualize sampling distributions → Compare sample sizes → Restrict the sampling frame → Interpret**.
5. Keep only output needed to support your reasoning.
6. Submit the completed `.qmd` and rendered `.html`.

## Scope guardrails

`age` is conventional **uncalibrated** radiocarbon age in years BP. It is used here as a numerical variable for studying sampling behavior.

Do **not** use this exercise to infer a calibrated occupation chronology or prehistoric population history. Confidence intervals, hypothesis tests, radiocarbon calibration, summed probability distributions, and paleodemographic modelling are outside the scope of Assignment 4.

## Data

The student file is:

`data/p3k14c_sampling.csv`

See `codebook.md` for variable definitions and `provenance.md` for the reproducible origin of the teaching subset.
