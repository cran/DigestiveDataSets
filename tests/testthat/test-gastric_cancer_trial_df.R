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

# gastric_cancer_trial_df

library(testthat)

# Test 1: Check that the object is a data.frame
test_that("gastric_cancer_trial_df is a data.frame", {
  expect_s3_class(gastric_cancer_trial_df, "data.frame")
})

# Test 2: Check number of columns
test_that("gastric_cancer_trial_df has 3 columns", {
  expect_equal(ncol(gastric_cancer_trial_df), 3)
})

# Test 3: Check number of rows
test_that("gastric_cancer_trial_df has 90 rows", {
  expect_equal(nrow(gastric_cancer_trial_df), 90)
})

# Test 4: Check column names
test_that("gastric_cancer_trial_df has correct column names", {
  expect_equal(names(gastric_cancer_trial_df), c("time", "event", "group"))
})

# Test 5: Check column types
test_that("Columns have correct types", {
  expect_true(is.numeric(gastric_cancer_trial_df$time))
  expect_true(is.numeric(gastric_cancer_trial_df$event))
  expect_true(is.factor(gastric_cancer_trial_df$group))
})

# Test 6: Check dataset length equals number of columns
test_that("Length of gastric_cancer_trial_df equals 3", {
  expect_equal(length(gastric_cancer_trial_df), 3)
})

# Test 7: Check each column has at least one non-NA value
test_that("Each column has at least one non-NA value", {
  expect_true(all(sapply(gastric_cancer_trial_df, function(x) any(!is.na(x)))))
})

