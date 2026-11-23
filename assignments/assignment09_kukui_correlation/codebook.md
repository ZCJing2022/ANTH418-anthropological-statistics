# Codebook

Teaching file: `kukui_sites.csv`

**Teaching population:** 71 sampled kukui location/site records.

**Unit of analysis:** one sampled kukui site record. Isotope values summarize multiple fruits per site.

| Variable | Type | Meaning | Units |
|---|---|---|---|
| `source_row_id` | integer | Row identifier from the published supporting table | — |
| `latitude` | numeric | Sampling location latitude | degrees |
| `longitude` | numeric | Sampling location longitude. See the provenance note for three invalid source values. | degrees |
| `elevation` | numeric | Elevation of the sampling location | m |
| `rainfall` | numeric | Annual rainfall at the sampling location | mm/year |
| `d13c` | numeric | Kukui carbon-isotope value | ‰ |
| `d15n` | numeric | Kukui nitrogen-isotope value | ‰ |

Assignment 9 focuses on the bivariate association between `elevation` and `d13c`, with `rainfall` explored as a continuous environmental variable that may covary with both.

Exploring rainfall does not by itself statistically control for rainfall.
