# Data provenance

The teaching dataset uses the 300 experimental flint flakes in the authors’ `Data.csv`. The study used several flake measurements to model mass. This exercise isolates mean thickness for a simple regression. [Bustos-Pérez and Baena (2021)](https://doi.org/10.1080/01977261.2021.1881267) · [Authors’ data and analysis repository](https://github.com/GuillermoBustosPerez/Predicting-Flake-Mass-A-View-from-Machine-Learning)

The published CSV uses semicolon delimiters and decimal commas. The teaching file standardizes the delimiters, decimal marks and column names, and adds a source-row ID. It retains the measured fields `Length`, `Width`, `Mean_Thick`, `Max_Thick`, `Weight` and `Surf_Plat` in their original row order. All 300 rows meet the eligibility rule of positive, nonmissing mass and mean thickness. The QMD calculates log10 mass from the supplied values during analysis.

Each record is one experimental flake. The released data supply no core, knapper or reduction sequence identifiers. Generalization depends on how closely another assemblage matches the experimental conditions.
