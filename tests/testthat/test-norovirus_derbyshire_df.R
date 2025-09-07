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

# norovirus_derbyshire_df

library(testthat)

# Test 1: Object is a data.frame
test_that("norovirus_derbyshire_df is a data.frame", {
  expect_s3_class(norovirus_derbyshire_df, "data.frame")
})

# Test 2: Dataset has exactly 5 columns
test_that("norovirus_derbyshire_df has 5 columns", {
  expect_equal(length(norovirus_derbyshire_df), 5)
})

# Test 3: Dataset has exactly 492 rows
test_that("norovirus_derbyshire_df has 492 rows", {
  expect_equal(nrow(norovirus_derbyshire_df), 492)
})

# Test 4: Column names match the expected ones
test_that("norovirus_derbyshire_df has the expected column names", {
  expect_equal(
    names(norovirus_derbyshire_df),
    c("class", "day_absent", "start_illness", "end_illness", "day_vomiting")
  )
})

# Test 5: Specific type checks for each column
test_that("Column types are correct", {
  expect_s3_class(norovirus_derbyshire_df$class, "factor")
  expect_type(norovirus_derbyshire_df$day_absent, "integer")
  expect_type(norovirus_derbyshire_df$start_illness, "integer")
  expect_type(norovirus_derbyshire_df$end_illness, "integer")
  expect_type(norovirus_derbyshire_df$day_vomiting, "integer")
})
