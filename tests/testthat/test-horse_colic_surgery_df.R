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

# horse_colic_surgery_df


library(testthat)

# Test 1: Object is a data.frame
test_that("horse_colic_surgery_df is a data.frame", {
  expect_s3_class(horse_colic_surgery_df, "data.frame")
})

# Test 2: Number of columns is 31
test_that("horse_colic_surgery_df has 31 columns", {
  expect_equal(length(horse_colic_surgery_df), 31)
})

# Test 3: Number of rows is 300
test_that("horse_colic_surgery_df has 300 rows", {
  expect_equal(nrow(horse_colic_surgery_df), 300)
})

# Test 4: Column names match the expected list
test_that("horse_colic_surgery_df has the expected column names", {
  expect_equal(
    names(horse_colic_surgery_df),
    c("surgery", "age", "hospitalID", "temp_rectal", "pulse", "respiratory_rate",
      "temp_extreme", "pulse_peripheral", "capillayr_refill_time", "pain", "peristalsis",
      "abdominal_distension", "nasogastric_tube", "nasogastric_reflux", "nasogastric_reflux_PH",
      "rectal_examination", "abdomen", "cell_volume", "protein", "abdominocentesis_appearance",
      "abdomcentesis_protein", "outcome", "surgical_lesion", "lesion_type1", "lesion_type2",
      "lesion_type3", "cp_data", "temp_extreme_ordered", "temp_extreme_num",
      "mucous_membranes_col", "mucous_membranes_group")
  )
})

# Test 5: Specific column type checks
test_that("Column types are as expected", {
  expect_s3_class(horse_colic_surgery_df$surgery, "factor")
  expect_s3_class(horse_colic_surgery_df$age, "factor")
  expect_type(horse_colic_surgery_df$hospitalID, "integer")
  expect_type(horse_colic_surgery_df$temp_rectal, "double")
  expect_type(horse_colic_surgery_df$pulse, "double")
  expect_s3_class(horse_colic_surgery_df$temp_extreme, "factor")
  expect_s3_class(horse_colic_surgery_df$pulse_peripheral, "factor")
  expect_s3_class(horse_colic_surgery_df$capillayr_refill_time, "factor")
  expect_s3_class(horse_colic_surgery_df$outcome, "factor")
  expect_s3_class(horse_colic_surgery_df$surgical_lesion, "factor")
  expect_s3_class(horse_colic_surgery_df$lesion_type1, "factor")
  expect_type(horse_colic_surgery_df$lesion_type2, "integer")
  expect_s3_class(horse_colic_surgery_df$temp_extreme_ordered, "ordered")
  expect_s3_class(horse_colic_surgery_df$mucous_membranes_col, "factor")
  expect_s3_class(horse_colic_surgery_df$mucous_membranes_group, "factor")
})
