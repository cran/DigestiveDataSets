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

# pbc_mayo_survival_df

library(testthat)

# Test 1: The object is a data.frame
test_that("pbc_mayo_survival_df is a data.frame", {
  expect_s3_class(pbc_mayo_survival_df, "data.frame")
})

# Test 2: Dataset has exactly 16 columns
test_that("pbc_mayo_survival_df has 16 columns", {
  expect_equal(length(pbc_mayo_survival_df), 16)
})

# Test 3: Dataset has exactly 1945 rows
test_that("pbc_mayo_survival_df has 1945 rows", {
  expect_equal(nrow(pbc_mayo_survival_df), 1945)
})

# Test 4: Column names are correct
test_that("pbc_mayo_survival_df has correct column names", {
  expect_equal(
    names(pbc_mayo_survival_df),
    c(
      "ID", "Time", "death", "obstime", "serBilir", "albumin", "alkaline",
      "platelets", "drug", "age", "gender", "ascites", "hepatom",
      "start", "stop", "event"
    )
  )
})

# Test 5: Each column has the correct type
test_that("pbc_mayo_survival_df columns have correct types", {
  expect_type(pbc_mayo_survival_df$ID, "integer")
  expect_type(pbc_mayo_survival_df$Time, "double")
  expect_type(pbc_mayo_survival_df$death, "double")
  expect_type(pbc_mayo_survival_df$obstime, "double")
  expect_type(pbc_mayo_survival_df$serBilir, "double")
  expect_type(pbc_mayo_survival_df$albumin, "double")
  expect_type(pbc_mayo_survival_df$alkaline, "integer")
  expect_type(pbc_mayo_survival_df$platelets, "integer")
  expect_s3_class(pbc_mayo_survival_df$drug, "factor")
  expect_type(pbc_mayo_survival_df$age, "double")
  expect_s3_class(pbc_mayo_survival_df$gender, "factor")
  expect_s3_class(pbc_mayo_survival_df$ascites, "factor")
  expect_s3_class(pbc_mayo_survival_df$hepatom, "factor")
  expect_type(pbc_mayo_survival_df$start, "double")
  expect_type(pbc_mayo_survival_df$stop, "double")
  expect_type(pbc_mayo_survival_df$event, "double")
})

