# DigestiveDataSets - A Curated Collection of Digestive System and Gastrointestinal Disease Datasets
# Version 0.2.0
# Copyright (C) 2025 Renzo Caceres Rossi
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

# view_datasets_DigestiveDataSets

library(testthat)
library(DigestiveDataSets)

test_that("view_datasets_DigestiveDataSets works when package is loaded", {
  result <- view_datasets_DigestiveDataSets()
  expect_type(result, "character")
  expect_true(length(result) > 0)
})

test_that("view_datasets_DigestiveDataSets prints correct message", {
  output <- capture_messages(view_datasets_DigestiveDataSets())
  expect_match(
    output[1],
    "Datasets available in the 'DigestiveDataSets' package:",
    fixed = TRUE
  )
})

test_that("view_datasets_DigestiveDataSets returns expected datasets", {
  datasets <- view_datasets_DigestiveDataSets()
  expected_datasets <- c(
    "weight_loss_df",
    "anorexia_weight_change_df",
    "gi_damage_prevention_df",
    "colonoscopy_features_tbl_df",
    "pancreatic_cancer_df",
    "digestive_cancer_survival_df",
    "helicobacter_children_tbl_df",
    "gastric_cancer_trial_df",
    "bleeding_ulcers_df",
    "post_ercp_pancreatitis_tbl_df",
    "intestinal_smartpill_df",
    "campylobacter_infections_ts",
    "ecoli_infections_df",
    "cholera_deaths_1849_tbl_df",
    "colon_stageBC_chemo_df",
    "crc_mirnas_pubmed_tbl_df",
    "lynch_ontario_families_df",
    "horse_colic_surgery_df",
    "norovirus_derbyshire_df",
    "intestinal_surgery_df",
    "liver_cirrhosis_prednisone_df",
    "pbc_mayo_survival_df",
    "ugi_bleeding_df",
    "ibs_cam_trials_df",
    "cystic_fibrosis_snps_df"

  )
  # Check if all expected datasets are present
  missing_datasets <- setdiff(expected_datasets, datasets)
  expect_true(
    length(missing_datasets) == 0,
    info = paste("Missing datasets:", paste(missing_datasets, collapse = ", "))
  )
})
