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

# anorexia_weight_change_df


library(testthat)

# Test 1: Verify data frame structure and class
test_that("anorexia_weight_change_df has correct structure", {
  expect_s3_class(anorexia_weight_change_df, "data.frame")
  expect_false("tbl_df" %in% class(anorexia_weight_change_df))  # Ensure it's not a tibble
})

# Test 2: Validate dimensions
test_that("anorexia_weight_change_df has correct dimensions", {
  expect_equal(ncol(anorexia_weight_change_df), 3)
  expect_equal(nrow(anorexia_weight_change_df), 72)
})

# Test 3: Check key column names
test_that("anorexia_weight_change_df has correct column names", {
  expect_true(all(c("Treat", "Prewt", "Postwt") %in% names(anorexia_weight_change_df)))
})

# Test 4: Verify column storage types
test_that("anorexia_weight_change_df has expected column types", {
  expect_true(is.factor(anorexia_weight_change_df$Treat))
  expect_type(anorexia_weight_change_df$Prewt, "double")   # numeric is double
  expect_type(anorexia_weight_change_df$Postwt, "double")
})

# Test 5: Ensure no columns are completely NA
test_that("No columns are completely NA", {
  expect_false(any(sapply(anorexia_weight_change_df, function(x) all(is.na(x)))))
})

# Test 6: Basic integrity check
test_that("anorexia_weight_change_df is accessible and consistent", {
  expect_equal(length(anorexia_weight_change_df), 3)
  expect_true("Treat" %in% names(anorexia_weight_change_df))
  expect_true("Prewt" %in% names(anorexia_weight_change_df))
  expect_true("Postwt" %in% names(anorexia_weight_change_df))
})

# Test 7: Validate column naming convention
test_that("Column names follow naming conventions", {
  expect_true(all(grepl("^[A-Za-z0-9_]+$", names(anorexia_weight_change_df))))
})

