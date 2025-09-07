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

# colonoscopy_features_tbl_df

library(testthat)

# Test 1: Verify Tibble Structure and Class
test_that("colonoscopy_features_tbl_df has correct structure", {
  expect_s3_class(colonoscopy_features_tbl_df, "spec_tbl_df")
  expect_s3_class(colonoscopy_features_tbl_df, "tbl_df")
  expect_s3_class(colonoscopy_features_tbl_df, "tbl")
  expect_s3_class(colonoscopy_features_tbl_df, "data.frame")
})

# Test 2: Validate Dimensions
test_that("colonoscopy_features_tbl_df has correct dimensions", {
  expect_equal(ncol(colonoscopy_features_tbl_df), 7)
  expect_equal(nrow(colonoscopy_features_tbl_df), 76)
})

# Test 3: Check Column Names Presence
test_that("colonoscopy_features_tbl_df has expected columns", {
  expected_columns <- c("feature 294", "feature 441", "feature 472", "feature 486",
                        "class_agreement", "missinglabel_indicator", "ground truth")
  expect_true(all(expected_columns %in% names(colonoscopy_features_tbl_df)))
})

# Test 4: Verify Column Types
test_that("colonoscopy_features_tbl_df has correct column types", {
  expect_true(is.numeric(colonoscopy_features_tbl_df$`feature 294`))
  expect_true(is.numeric(colonoscopy_features_tbl_df$`feature 441`))
  expect_true(is.numeric(colonoscopy_features_tbl_df$`feature 472`))
  expect_true(is.numeric(colonoscopy_features_tbl_df$`feature 486`))
  expect_true(is.numeric(colonoscopy_features_tbl_df$class_agreement))
  expect_true(is.numeric(colonoscopy_features_tbl_df$missinglabel_indicator))
  expect_true(is.character(colonoscopy_features_tbl_df$`ground truth`))
})

# Test 5: Check for Fully NA Columns
test_that("No columns are completely NA", {
  expect_false(any(sapply(colonoscopy_features_tbl_df, function(x) all(is.na(x)))))
})

# Test 6: Basic Integrity Check
test_that("colonoscopy_features_tbl_df is intact", {
  expect_equal(length(colonoscopy_features_tbl_df), 7)
  expect_true(nrow(colonoscopy_features_tbl_df) > 0)
})

# Test 7: Validate Column Name Format (allowing spaces)
test_that("Column names use valid characters including spaces", {
  expect_true(all(grepl("^[A-Za-z0-9 _]+$", names(colonoscopy_features_tbl_df))))
})
