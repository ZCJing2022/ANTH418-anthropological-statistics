# Data Provenance

## Publication

Passmore, Sam, et al. 2023. Kinbank: A Global Database of Kinship Terminology. *PLOS ONE* 18(5): e0283218.

**DOI:** https://doi.org/10.1371/journal.pone.0283218

## Frozen Kinbank source snapshot

ANTH418 uses Kinbank commit:

`925cc0e702ae5481cfe0088aaa0e69c3991000f3`

Pinned source files:

- `kinbank_languages.csv` — `https://raw.githubusercontent.com/kinbank/kinbank/925cc0e702ae5481cfe0088aaa0e69c3991000f3/kinbank/cldf/languages.csv`
- `kinbank_forms.csv` — `https://raw.githubusercontent.com/kinbank/kinbank/925cc0e702ae5481cfe0088aaa0e69c3991000f3/kinbank/cldf/forms.csv`

The local source files were verified against the Git blobs at this commit.

## Snapshot relationship

At the frozen ANTH418 commit:

- metadata language records: **1,314**;
- languages represented by at least one form record: **1,287**;
- metadata-only language records with no linked forms: **27**;
- total form records represented: **218,412**.

The 27 metadata-only language records are excluded from the teaching table rather than coded as `kin_term_count = 0`, because absence from the form table is not evidence that the language has zero kin terms.

Passmore et al. (2023) describe an earlier Kinbank snapshot with **1,229 languages and 210,903 data points**. The larger ANTH418 counts reflect a later database snapshot, not an attempt to reproduce the publication-era totals exactly.

## Teaching file

`data/kinbank_teaching.csv`

The teaching file contains the 1,287 languages represented by at least one form record in the frozen source snapshot.

## Unit of analysis

One represented language.

`kin_term_count` is the number of Kinbank form records linked to that language in the frozen snapshot.

## Missing metadata retained

The teaching file retains source missingness:

- missing `family`: 199;
- missing `macroarea`: 38;
- missing `latitude`: 130;
- missing `longitude`: 130.

These are metadata gaps, not substantive categories.

## Reproducible build

The teaching dataset was built reproducibly from the pinned Kinbank source snapshot.

The build procedure is maintained outside the student package and is not needed to complete this assignment.

## Prohibited operations

- no fabricated observations;
- no coding of metadata-only languages as zero kin-term languages;
- no manual alteration of form counts;
- no claim that the teaching table is the exact 2023 publication snapshot;
- no assumption that languages are statistically independent without genealogical or geographic justification.
