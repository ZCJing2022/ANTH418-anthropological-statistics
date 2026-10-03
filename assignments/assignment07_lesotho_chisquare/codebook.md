# Codebook

Teaching file: `lesotho_raw_material.csv`

**Teaching population:** 1,060 source observations across BAS, RBL-CLBRF, RF, and BARF.

**Unit of analysis:** one lithic observation/artifact record represented in the source flake dataset and retained in the four-layer analytical frame.

| Variable | Type | Meaning | Units |
|---|---|---|---|
| `artifact_id` | integer | Teaching identifier derived from source row | — |
| `level` | categorical | Published archaeological layer: BAS, RBL-CLBRF, RF, or BARF | — |
| `raw_material` | categorical | One of seven preserved source raw-material categories | — |
| `artifact_class` | categorical | Lithic artifact class from the source | — |
| `completeness` | categorical | Source completeness category where recorded | — |

For the Assignment 7 chi-square analysis, students create an **analysis-time** variable `material_group`:

- `CrystallineQuartz`
- `Dolerite`
- `FineChert`
- `Other` = Agate + CoarseChert + Quartzite + Sandstone

`Other` is not an original source category in the teaching CSV. No observations are deleted when the four rare source categories are combined into `Other`.
