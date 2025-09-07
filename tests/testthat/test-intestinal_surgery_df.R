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

# intestinal_surgery_df


library(testthat)

# Test 1: Object is a data.frame
test_that("intestinal_surgery_df is a data.frame", {
  expect_s3_class(intestinal_surgery_df, "data.frame")
})

# Test 2: Dataset has exactly 2 columns
test_that("intestinal_surgery_df has 2 columns", {
  expect_equal(length(intestinal_surgery_df), 2)
})

# Test 3: Dataset has exactly 844 rows
test_that("intestinal_surgery_df has 844 rows", {
  expect_equal(nrow(intestinal_surgery_df), 844)
})

# Test 4: Column names match expected
test_that("intestinal_surgery_df has correct column names", {
  expect_equal(
    names(intestinal_surgery_df),
    c("n", "s")
  )
})

# Test 5: Column types are correct
test_that("intestinal_surgery_df has correct column types", {
  expect_type(intestinal_surgery_df$n, "double")  # 'num' in str()
  expect_type(intestinal_surgery_df$s, "double")
})



