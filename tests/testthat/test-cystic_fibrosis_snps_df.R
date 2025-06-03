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

# cystic_fibrosis_snps_df

library(testthat)

# Test 1: Dataset is a data.frame
test_that("cystic_fibrosis_snps_df is a data.frame", {
  expect_s3_class(cystic_fibrosis_snps_df, "data.frame")
})

# Test 2: Dataset has exactly 24 columns
test_that("cystic_fibrosis_snps_df has 24 columns", {
  expect_equal(length(cystic_fibrosis_snps_df), 24)
})

# Test 3: Dataset has exactly 186 rows
test_that("cystic_fibrosis_snps_df has 186 rows", {
  expect_equal(nrow(cystic_fibrosis_snps_df), 186)
})

# Test 4: Column names are correct
test_that("cystic_fibrosis_snps_df has the correct column names", {
  expect_equal(
    names(cystic_fibrosis_snps_df),
    c("y", paste0("loc", 1:23))
  )
})

# Test 5: All columns are of integer type
test_that("All columns in cystic_fibrosis_snps_df are integers", {
  for (col in names(cystic_fibrosis_snps_df)) {
    expect_type(cystic_fibrosis_snps_df[[col]], "integer")
  }
})
