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

# ibs_cam_trials_df

library(testthat)

# Test 1: The object is a data.frame
test_that("ibs_cam_trials_df is a data.frame", {
  expect_s3_class(ibs_cam_trials_df, "data.frame")
})

# Test 2: Dataset has exactly 12 columns
test_that("ibs_cam_trials_df has 12 columns", {
  expect_equal(length(ibs_cam_trials_df), 12)
})

# Test 3: Dataset has exactly 19 rows
test_that("ibs_cam_trials_df has 19 rows", {
  expect_equal(nrow(ibs_cam_trials_df), 19)
})

# Test 4: Column names are correct
test_that("ibs_cam_trials_df has correct column names", {
  expect_equal(
    names(ibs_cam_trials_df),
    c("id", "study", "year", "country", "ibs.crit", "days", "visits",
      "jadad", "x.a", "n.a", "x.p", "n.p")
  )
})

# Test 5: Each column has the expected type
test_that("ibs_cam_trials_df columns have correct types", {
  expect_type(ibs_cam_trials_df$id, "integer")
  expect_type(ibs_cam_trials_df$study, "character")
  expect_type(ibs_cam_trials_df$year, "integer")
  expect_type(ibs_cam_trials_df$country, "character")
  expect_type(ibs_cam_trials_df$ibs.crit, "character")
  expect_type(ibs_cam_trials_df$days, "integer")
  expect_type(ibs_cam_trials_df$visits, "integer")
  expect_type(ibs_cam_trials_df$jadad, "integer")
  expect_type(ibs_cam_trials_df$x.a, "integer")
  expect_type(ibs_cam_trials_df$n.a, "integer")
  expect_type(ibs_cam_trials_df$x.p, "integer")
  expect_type(ibs_cam_trials_df$n.p, "integer")
})
