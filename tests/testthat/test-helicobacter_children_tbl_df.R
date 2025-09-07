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

# helicobacter_children_tbl_df


library(testthat)

# Test 1: Check that the object is a tibble (inherits from tbl_df)
test_that("helicobacter_children_tbl_df is a tibble", {
  expect_s3_class(helicobacter_children_tbl_df, "tbl_df")
})

# Test 2: Check number of columns
test_that("helicobacter_children_tbl_df has 2 columns", {
  expect_equal(ncol(helicobacter_children_tbl_df), 2)
})

# Test 3: Check number of rows
test_that("helicobacter_children_tbl_df has 863 rows", {
  expect_equal(nrow(helicobacter_children_tbl_df), 863)
})

# Test 4: Check column names
test_that("helicobacter_children_tbl_df has correct column names", {
  expect_equal(names(helicobacter_children_tbl_df), c("ulcer", "infected"))
})

# Test 5: Check both columns are factors
test_that("Both columns in helicobacter_children_tbl_df are factors", {
  expect_true(all(sapply(helicobacter_children_tbl_df, is.factor)))
})

# Test 6: Check dataset length equals number of columns
test_that("Length of helicobacter_children_tbl_df equals number of columns", {
  expect_equal(length(helicobacter_children_tbl_df), 2)
})

# Test 7: Check columns have at least one non-NA value
test_that("Each column has at least one non-NA value", {
  expect_true(all(sapply(helicobacter_children_tbl_df, function(x) any(!is.na(x)))))
})



