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

# gi_damage_prevention_df


library(testthat)

# Test 1: Verify structure and class
test_that("gi_damage_prevention_df has correct structure", {
  expect_s3_class(gi_damage_prevention_df, "data.frame")
  expect_false("tbl_df" %in% class(gi_damage_prevention_df))  # Ensure not a tibble
})

# Test 2: Validate dimensions
test_that("gi_damage_prevention_df has correct dimensions", {
  expect_equal(ncol(gi_damage_prevention_df), 3)
  expect_equal(nrow(gi_damage_prevention_df), 198)
})

# Test 3: Verify expected column names
test_that("gi_damage_prevention_df has correct column names", {
  expect_true(all(c("study", "treatment", "classification") %in% names(gi_damage_prevention_df)))
})

# Test 4: Validate column types
test_that("gi_damage_prevention_df has correct column types", {
  expect_true(is.factor(gi_damage_prevention_df$study))
  expect_true(is.factor(gi_damage_prevention_df$treatment))
  expect_true(is.ordered(gi_damage_prevention_df$classification))  # Ordered factor
})

# Test 5: Check for completely NA columns
test_that("No columns are entirely NA", {
  expect_false(any(sapply(gi_damage_prevention_df, function(x) all(is.na(x)))))
})

# Test 6: Basic integrity check
test_that("gi_damage_prevention_df is accessible and valid", {
  expect_equal(length(gi_damage_prevention_df), 3)
  expect_true("study" %in% names(gi_damage_prevention_df))
  expect_true("treatment" %in% names(gi_damage_prevention_df))
  expect_true("classification" %in% names(gi_damage_prevention_df))
})

# Test 7: Validate column name format
test_that("Column names follow naming conventions", {
  expect_true(all(grepl("^[A-Za-z0-9_]+$", names(gi_damage_prevention_df))))
})
