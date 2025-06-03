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

# weight_loss_df

library(testthat)

# Test 1: Verify data frame structure and class
test_that("weight_loss_df has correct structure", {
  expect_s3_class(weight_loss_df, "data.frame")
  expect_false("tbl_df" %in% class(weight_loss_df))  # Explicitly not a tibble
})

# Test 2: Validate dimensions
test_that("weight_loss_df has correct dimensions", {
  expect_equal(ncol(weight_loss_df), 2)
  expect_equal(nrow(weight_loss_df), 52)
})

# Test 3: Check key column names
test_that("weight_loss_df has correct column names", {
  expect_true(all(c("Days", "Weight") %in% names(weight_loss_df)))
})

# Test 4: Verify column storage types
test_that("weight_loss_df has expected column types", {
  expect_type(weight_loss_df$Days, "integer")
  expect_type(weight_loss_df$Weight, "double")  # numeric in R is stored as double
})

# Test 5: Ensure no columns are entirely NA
test_that("No columns are completely NA", {
  expect_false(any(sapply(weight_loss_df, function(x) all(is.na(x)))))
})

# Test 6: Basic integrity check (structure accessible)
test_that("Data is accessible and consistent", {
  expect_equal(length(weight_loss_df), 2)
  expect_true("Days" %in% names(weight_loss_df))
  expect_true("Weight" %in% names(weight_loss_df))
})

# Test 7: Verify column name syntax
test_that("Column names are valid", {
  expect_true(all(grepl("^[A-Za-z0-9_]+$", names(weight_loss_df))))
})








