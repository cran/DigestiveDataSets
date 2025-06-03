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

# digestive_cancer_survival_df


library(testthat)

# Test 1: Check class
test_that("digestive_cancer_survival_df is a data.frame", {
  expect_s3_class(digestive_cancer_survival_df, "data.frame")
})

# Test 2: Check number of columns
test_that("digestive_cancer_survival_df has 5 columns", {
  expect_equal(ncol(digestive_cancer_survival_df), 5)
})

# Test 3: Check number of rows
test_that("digestive_cancer_survival_df has 17 observations", {
  expect_equal(nrow(digestive_cancer_survival_df), 17)
})

# Test 4: Check column names
test_that("digestive_cancer_survival_df has correct column names", {
  expected_names <- c("stomach", "bronchus", "colon", "ovary", "breast")
  expect_equal(names(digestive_cancer_survival_df), expected_names)
})

# Test 5: Check column types are integer
test_that("All columns in digestive_cancer_survival_df are integers", {
  expect_true(all(sapply(digestive_cancer_survival_df, is.integer)))
})

# Test 6: Check column length consistency
test_that("Length of digestive_cancer_survival_df equals number of columns", {
  expect_equal(length(digestive_cancer_survival_df), 5)
})

# Test 7: Check no column is completely NA
test_that("No column in digestive_cancer_survival_df is completely NA", {
  expect_false(any(sapply(digestive_cancer_survival_df, function(x) all(is.na(x)))))
})



