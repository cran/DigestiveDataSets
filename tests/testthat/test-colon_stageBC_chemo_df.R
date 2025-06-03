# DigestiveDataSets - A Curated Collection of Digestive System and Gastrointestinal Disease Datasets
# Version 0.1.0
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

# colon_stageBC_chemo_df


library(testthat)

# Test 1: Object is a data.frame
test_that("colon_stageBC_chemo_df is a data.frame", {
  expect_s3_class(colon_stageBC_chemo_df, "data.frame")
})

# Test 2: Number of variables (columns)
test_that("colon_stageBC_chemo_df has 16 variables", {
  expect_equal(length(colon_stageBC_chemo_df), 16)
})

# Test 3: Number of observations (rows)
test_that("colon_stageBC_chemo_df has 1858 observations", {
  expect_equal(nrow(colon_stageBC_chemo_df), 1858)
})

# Test 4: Column names are correct
test_that("colon_stageBC_chemo_df column names are valid", {
  expect_equal(
    names(colon_stageBC_chemo_df),
    c("id", "study", "rx", "sex", "age", "obstruct", "perfor", "adhere", "nodes",
      "status", "differ", "extent", "surg", "node4", "time", "etype")
  )
})

# Test 5: Check variable types
test_that("colon_stageBC_chemo_df variable types are correct", {
  expect_type(colon_stageBC_chemo_df$id, "double")
  expect_type(colon_stageBC_chemo_df$study, "double")
  expect_s3_class(colon_stageBC_chemo_df$rx, "factor")
  expect_type(colon_stageBC_chemo_df$sex, "double")
  expect_type(colon_stageBC_chemo_df$age, "double")
  expect_type(colon_stageBC_chemo_df$obstruct, "double")
  expect_type(colon_stageBC_chemo_df$perfor, "double")
  expect_type(colon_stageBC_chemo_df$adhere, "double")
  expect_type(colon_stageBC_chemo_df$nodes, "double")
  expect_type(colon_stageBC_chemo_df$status, "double")
  expect_type(colon_stageBC_chemo_df$differ, "double")
  expect_type(colon_stageBC_chemo_df$extent, "double")
  expect_type(colon_stageBC_chemo_df$surg, "double")
  expect_type(colon_stageBC_chemo_df$node4, "double")
  expect_type(colon_stageBC_chemo_df$time, "double")
  expect_type(colon_stageBC_chemo_df$etype, "double")
})

# Test 6: Factor variable has levels
test_that("rx variable is a factor with levels", {
  expect_gt(nlevels(colon_stageBC_chemo_df$rx), 0)
})


