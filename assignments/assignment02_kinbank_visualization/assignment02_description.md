# Assignment 2: Visualizing Kinship Diversity with Kinbank

## Case Study

Kinbank is a global database of kinship terminology designed for
systematic cross-cultural comparison (Passmore et al., 2023). The
teaching dataset contains **1,287 languages** and the variables
`language_id`, `language`, `family`, `macroarea`, `latitude`,
`longitude`, and `kin_term_count`. Because languages differ in
geographical location and historical relatedness, Kinbank is also a
useful case for learning why the structure of a comparative sample
matters when interpreting visual patterns.

## Assignment

Using the provided Kinbank teaching dataset, conduct a concise
**exploratory data analysis (EDA) of kinship diversity**. Begin by
examining the structure of the evidence: identify the observational unit
and relevant categorical and numerical variables, and visualize how
languages are represented across **language families or macroareas**.
Then examine the distribution of `kin_term_count` and make one
purposeful visual comparison across groups.

Use appropriate graphics introduced in Week 5, such as **bar charts,
histograms, boxplots with observations, and faceting**. Your choice of
graphic should match the variable structure and the comparison you want
to make. Interpret what each visualization reveals about the observed
sample, including distributional shape, variability, group differences,
unequal representation, or other relevant patterns.

Your interpretation must maintain a clear distinction between
**description and inference**. Cross-cultural observations should not
automatically be treated as independent: languages may resemble one
another because of **shared ancestry, geographical proximity, contact,
or regional history**. You are not required to model these dependencies.
Instead, identify how they could affect interpretation, state one
question suggested by your EDA that would be worth investigating
further, and state one conclusion that the visualizations alone do
**not** justify.

## Submission

Submit **both** of the following files:

1.  Completed Quarto source file (`.qmd`)
2.  Rendered HTML file (`.html`)

The report should contain the required visualizations and a concise
interpretation. **No inferential statistical tests, phylogenetic models,
or spatial autocorrelation tests are required.**

## References

Passmore, S., Barth, W., Greenhill, S. J., Quinn, K., Sheard, C.,
Argyriou, P., et al. (2023). Kinbank: A global database of kinship
terminology. *PLOS ONE, 18*(5), e0283218.
https://doi.org/10.1371/journal.pone.0283218

Passmore, S., & Jordan, F. M. (2020). No universals in the cultural
evolution of kinship terminology. *Evolutionary Human Sciences, 2*, e42.
https://doi.org/10.1017/ehs.2020.41
