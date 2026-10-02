# Codebook

Teaching file: `p3k14c_sampling.csv`

**Teaching population:** 984 radiocarbon determinations in the frozen Southern California case-study subset.

**Unit of analysis:** one radiocarbon determination.

| Variable | Type | Meaning | Units |
|---|---|---|---|
| `lab_id` | character | Radiocarbon laboratory identifier | — |
| `age` | numeric | Conventional **uncalibrated** radiocarbon age | years BP |
| `error` | numeric | Reported radiocarbon measurement error | years |
| `material` | character | Dated material | — |
| `method` | character | Dating method; may be missing in the source | — |
| `longitude` | numeric | Longitude | decimal degrees |
| `latitude` | numeric | Latitude | decimal degrees |
| `site_id` | character | Site identifier; may be missing in the source | — |
| `site_name` | character | Site name; may be missing in the source | — |
| `source` | character | Parent source/database identifier | — |

## Variables used directly in Assignment 4

- `age` — numerical variable whose mean is repeatedly estimated.
- `longitude` — used to define the deliberately restricted teaching frame `longitude > -118`.

Other variables provide archaeological and data-provenance context but are not required for the core simulation.

## Missing metadata

The teaching file retains source metadata gaps:

- 510 missing `method` values;
- 3 missing `site_id` values;
- 559 missing `site_name` values.

There are **no missing values in `age`, `error`, `longitude`, or `latitude`**. Missing metadata are not fabricated or automatically treated as grounds for deleting a radiocarbon determination.

## Interpretation note

For Assignment 4, `age` is used as a simple numerical variable for studying sampling distributions. A mean conventional radiocarbon age is **not** a calibrated calendar date, an archaeological occupation date, or a direct estimate of regional population chronology.

The full 984-row file is called the **reference population only for this teaching exercise**. It is itself a filtered regional subset of a much larger archaeological database.
