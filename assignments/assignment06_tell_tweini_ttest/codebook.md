# Codebook

Teaching file: `tell_tweini_ttest.csv`

**Unit of analysis:** one archaeological plant specimen/measurement represented in the source plant table.

| Variable | Type | Meaning | Units |
|---|---|---|---|
| `source_row_id` | integer | Source-row identifier in the imported plant table | — |
| `period` | categorical | Broad archaeological period | — |
| `taxon` | categorical | Plant taxon | — |
| `measure` | character | Teaching isotope variable; fixed as `delta13c` | — |
| `isotope_value` | numeric | Source-derived plant Δ13C value based on char-corrected δ13C and atmospheric δ13C data | ‰ |

The full teaching table contains 410 genuine plant observations.

Assignment 6 uses the fixed comparison:

- *Lolium cf. multiflorum*, Middle Bronze Age: `n = 10`;
- *Lolium cf. multiflorum*, Late Bronze Age: `n = 10`.

The effect is defined as:

**Middle Bronze Age − Late Bronze Age**

`isotope_value` is Δ13C, not raw measured plant δ13C.
