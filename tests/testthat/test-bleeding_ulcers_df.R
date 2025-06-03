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

# bleeding_ulcers_df

library(testthat)

# Test 1: Confirm it is a data.frame
test_that("bleeding_ulcers_df is a data.frame", {
  expect_s3_class(bleeding_ulcers_df, "data.frame")
})

# Test 2: Check it has 9 columns
test_that("bleeding_ulcers_df has 9 columns", {
  expect_equal(ncol(bleeding_ulcers_df), 9)
})

# Test 3: Check it has 80 rows
test_that("bleeding_ulcers_df has 80 rows", {
  expect_equal(nrow(bleeding_ulcers_df), 80)
})

# Test 4: Confirm correct column names
test_that("bleeding_ulcers_df has correct column names", {
  expect_equal(
    names(bleeding_ulcers_df),
    c("author", "year", "quality", "age", "r", "m", "bleed", "treat", "table")
  )
})

# Test 5: Check column types
test_that("bleeding_ulcers_df column types are correct", {
  expect_true(is.factor(bleeding_ulcers_df$author))
  expect_true(is.integer(bleeding_ulcers_df$year))
  expect_true(is.integer(bleeding_ulcers_df$quality))
  expect_true(is.integer(bleeding_ulcers_df$age))
  expect_true(is.integer(bleeding_ulcers_df$r))
  expect_true(is.integer(bleeding_ulcers_df$m))
  expect_true(is.integer(bleeding_ulcers_df$bleed))
  expect_true(is.factor(bleeding_ulcers_df$treat))
  expect_true(is.factor(bleeding_ulcers_df$table))
})

# Test 6: Check that each column has at least one non-NA value
test_that("Each column has at least one non-NA value", {
  expect_true(all(sapply(bleeding_ulcers_df, function(x) any(!is.na(x)))))
})

# Test 7: Dataset length matches number of columns
test_that("Dataset length is 9", {
  expect_equal(length(bleeding_ulcers_df), 9)
})
