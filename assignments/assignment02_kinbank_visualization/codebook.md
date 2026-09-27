# Codebook

Teaching file: `kinbank_teaching.csv`

**Unit of analysis:** one language represented by at least one Kinbank form record in the frozen snapshot used for ANTH418.

| Variable | Type | Meaning | Units |
|---|---|---|---|
| `language_id` | character | Kinbank/CLDF language identifier | — |
| `language` | character | Language name | — |
| `family` | categorical | Language family where available | — |
| `macroarea` | categorical | Glottolog macroarea where available | — |
| `latitude` | numeric | Language-location latitude where available | degrees |
| `longitude` | numeric | Language-location longitude where available | degrees |
| `kin_term_count` | integer | Number of Kinbank **form records** linked to the language in the frozen snapshot | count |

The teaching file contains 1,287 represented languages. Missing family, macroarea, and coordinate values are retained as source metadata gaps.

`kin_term_count` is a count of form records linked to a language. It is not automatically equivalent to the number of unique kin concepts or to the linguistic complexity of a kinship system.

> This codebook describes the standardized teaching file, not every variable in Kinbank.
