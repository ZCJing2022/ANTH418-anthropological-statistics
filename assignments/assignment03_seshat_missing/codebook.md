# Codebook

Teaching file: `seshat_missingness_counts.csv`

**Underlying unit of analysis:** one observation in the documented 801-case regression frame.

**Teaching-file structure:** the CSV contains three aggregate rows summarizing those 801 underlying observations.

| Variable | Type | Meaning | Units |
|---|---|---|---|
| `status` | categorical | Outcome category in the documented regression frame | — |
| `count` | integer | Number of underlying observations in that category | count |
| `meaning` | character | Interpretive meaning of the category | — |

Status definitions:

- `known_present` — moralizing gods recorded as present;
- `known_absent` — moralizing gods recorded as absent;
- `missing_unknown` — outcome missing or unknown; **not equivalent to absence**.

The teaching counts are:

- `known_present`: 299;
- `known_absent`: 12;
- `missing_unknown`: 490.

> This codebook describes the aggregated teaching summary, not every variable in the original source data.
