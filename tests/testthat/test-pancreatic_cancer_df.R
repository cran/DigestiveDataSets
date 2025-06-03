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

# pancreatic_cancer_df

library(testthat)

# Test 1: Validate class
test_that("pancreatic_cancer_df is a data.frame", {
  expect_s3_class(pancreatic_cancer_df, "data.frame")
})

# Test 2: Validate number of columns
test_that("pancreatic_cancer_df has 4 columns", {
  expect_equal(ncol(pancreatic_cancer_df), 4)
})

# Test 3: Validate number of rows
test_that("pancreatic_cancer_df has 41 observations", {
  expect_equal(nrow(pancreatic_cancer_df), 41)
})

# Test 4: Validate column names
test_that("pancreatic_cancer_df has correct column names", {
  expected_names <- c("stage", "onstudy", "progression", "death")
  expect_equal(names(pancreatic_cancer_df), expected_names)
})

# Test 5: Validate column types are all factors
test_that("All columns in pancreatic_cancer_df are factors", {
  expect_true(all(sapply(pancreatic_cancer_df, is.factor)))
})

# Test 6: Validate factor levels
test_that("Factor levels per column are as expected", {
  expect_equal(nlevels(pancreatic_cancer_df$stage), 2)
  expect_equal(nlevels(pancreatic_cancer_df$onstudy), 41)
  expect_equal(nlevels(pancreatic_cancer_df$progression), 27)
  expect_equal(nlevels(pancreatic_cancer_df$death), 41)
})

# Test 7: Validate column length
test_that("Length of pancreatic_cancer_df equals number of columns", {
  expect_equal(length(pancreatic_cancer_df), 4)
})

# Test 8: Check for entirely NA columns
test_that("No column is completely NA", {
  expect_false(any(sapply(pancreatic_cancer_df, function(x) all(is.na(x)))))
})
