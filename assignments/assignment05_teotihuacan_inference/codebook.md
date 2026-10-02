# Codebook

Teaching file: `teotihuacan_leporids.csv`

**Unit of analysis:** one archaeological leporid specimen with a recorded δ13C value.

| Variable | Type | Meaning | Units |
|---|---|---|---|
| `source_row_id` | integer | Source-row identifier in the imported supporting table | — |
| `context` | categorical | Broad archaeological site/context from the source `Site` field | — |
| `species` | categorical | Leporid taxonomic identification where available | — |
| `d13c` | numeric | Bone-apatite stable carbon isotope value | ‰ VPDB |
| `d18o` | numeric | Bone-apatite stable oxygen isotope value | ‰ VSMOW |
| `valid` | logical | Whether the **δ13C observation** is retained under the source-defined exclusion rule used for Assignment 5 | TRUE/FALSE |

`valid` is not a generic validity flag for every analytical variable.

The teaching file contains 127 observations with nonmissing δ13C; 115 are retained as `valid == TRUE`.

Assignment 5 uses the valid δ13C observations from:

- Oztoyahualco: `n = 15`;
- Moon Pyramid: `n = 50`.

The assignment defines the difference as **Oztoyahualco − Moon Pyramid**.
