# Assignment 5 --- Teotihuacan Leporid Management

**Statistical method:** Bootstrap confidence intervals and permutation
tests

**Case study:** Stable carbon-isotope variation in Teotihuacan leporids

## Research question

How large is the difference in leporid δ¹³C between **Oztoyahualco** and
the **Moon Pyramid**, how uncertain is that estimated difference, and
how unusual would it be under a null model of no association between
archaeological context and δ¹³C?

## Assignment

Somerville et al. (2016) investigated whether cottontails and
jackrabbits at Teotihuacan were hunted, provisioned, managed, or bred.
Carbon-isotope values are relevant because greater consumption of C4/CAM
plants, including cultivated resources such as maize, can elevate
leporid δ¹³C values. Oztoyahualco is especially important because
archaeological and iconographic evidence independently makes leporid
management a plausible question there.

Using the frozen teaching dataset derived from the published study,
compare valid δ¹³C measurements from **Oztoyahualco** and the **Moon
Pyramid**. Follow the Week 8 inferential sequence:

> **Estimate → quantify uncertainty → test against a null model →
> interpret archaeologically**

First describe and visualize the two groups and estimate the mean
difference as **Oztoyahualco − Moon Pyramid**. Then use bootstrap
resampling to construct a **95% confidence interval** for that
difference. Next construct a **permutation null distribution**
representing no association between context and δ¹³C and calculate a
**two-sided p-value**. Finally, interpret the effect magnitude,
uncertainty, and p-value together.

Your conclusion must distinguish the statistical contrast from the
archaeological explanation. A small p-value does not give the
probability that leporid management occurred, and an isotope difference
does not by itself establish provisioning, management, or breeding.
Explain what the evidence supports, what it does not establish, and at
least one relevant archaeological limitation or alternative explanation.

## Required reading

Somerville, A. D., Sugiyama, N., Manzanilla, L. R., & Schoeninger, M. J.
(2016). Animal management at the ancient metropolis of Teotihuacan,
Mexico: Stable isotope analysis of leporid (cottontail and jackrabbit)
bone mineral. *PLOS ONE, 11*(8), e0159982.
https://doi.org/10.1371/journal.pone.0159982

## Submission

Submit your completed **Quarto (`.qmd`) file and rendered HTML** through
Canvas. Your document should render from a clean R session and contain
only the code, output, figures, and interpretation needed to support
your analysis.
