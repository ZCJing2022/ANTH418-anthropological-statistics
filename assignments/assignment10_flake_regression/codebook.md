# Codebook

Teaching file: `flake_regression.csv`

**Teaching population:** 300 experimental flint flakes retained from the published experimental dataset.

**Unit of analysis:** one experimental flake.

| Variable | Type | Meaning | Units |
|---|---|---|---|
| `source_row_id` | integer | Source-row identifier | — |
| `length` | numeric | Flake length | mm |
| `width` | numeric | Flake width | mm |
| `mean_thickness` | numeric | Mean flake thickness | mm |
| `max_thickness` | numeric | Maximum flake thickness | mm |
| `weight` | numeric | Flake mass | g |
| `platform_area` | numeric | Platform-area measure retained from source field `Surf_Plat` | source units |

## Assignment 10 derived variable

The student assignment creates:

`log_weight = log10(weight)`

This is the base-10 logarithm of flake mass in grams.

## Validated physical ranges in the teaching file

- `weight`: 0.5–96.2 g
- `mean_thickness`: 1.8–20.2 mm
- `length`: 15.4–86.8 mm
- `width`: 11.9–79.5 mm

Assignment 10 uses `mean_thickness` as the fixed predictor and `log_weight` as the response.

The regression slope is therefore measured in log10(g) per millimetre. It should not be interpreted directly as grams per millimetre.
