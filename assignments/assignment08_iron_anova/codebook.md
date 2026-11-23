# Codebook

Each of the 240 rows represents one published legacy chemical analysis of a slag or ore sample. Sites or localities can contribute multiple rows.

| Variable | Type | Meaning |
|---|---|---|
| `source_row_id` | Integer | Row identifier in the source analytical dataset |
| `region` | Categorical | HCM (Holy Cross Mountains, 80), MAS (Masovia, 64), SIL (Silesia, 84), or JUR (Kraków–Częstochowa Jura comparator, 12) |
| `element` | Text | Fixed response label `Si_CLR` |
| `element_value` | Numeric | Centered log-ratio of Si within the imputed Si–Ca–Al–Mn composition |

A higher CLR-Si value means that Si is higher relative to the geometric mean of the four components within that observation. The value is in log-ratio units.
