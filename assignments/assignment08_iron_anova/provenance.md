# Data provenance

The teaching dataset is derived from the 240-observation analytical dataset associated with Żabiński, Grzegorz, Jarosław Gramacki, Artur Gramacki, Ivan S. Stepanov, and Marcin Woźniak. 2023. *Old Wine into New Wineskins? “Legacy Data” in Research on Roman Period East Germanic Iron Smelting*. PLOS ONE 18(10), e0289771. [Article and supporting data](https://doi.org/10.1371/journal.pone.0289771)

The teaching file uses the study’s S5 reproducibility materials, including the imputed `przeworsk.csv` and the ANOVA preprocessing described in `read_data_for_ANOVA.R`. The study replaced 43 missing or non-positive component values (Si 3, Ca 3, Al 26, Mn 11) using regional minima. The teaching file retains all 240 rows and one coordinate from the centered log-ratio transformation. For each observation, that coordinate is the log of Si divided by the geometric mean of the imputed Si, Ca, Al, and Mn composition. Imputation in any of the four components can affect this coordinate.

The data pool legacy slag and ore analyses, with multiple observations from some sites or localities and variable documentation of measurement and archaeological context. Jura serves as a comparator and includes late-medieval slag and modern ore. The teaching file lacks site, chronology, and material fields for adjusting for those differences.
