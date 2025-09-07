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

# liver_cirrhosis_prednisone_df

library(testthat)

# Test 1: Object is a data.frame
test_that("liver_cirrhosis_prednisone_df is a data.frame", {
  expect_s3_class(liver_cirrhosis_prednisone_df, "data.frame")
})

# Test 2: Dataset has exactly 9 columns
test_that("liver_cirrhosis_prednisone_df has 9 columns", {
  expect_equal(length(liver_cirrhosis_prednisone_df), 9)
})

# Test 3: Dataset has exactly 2968 rows
test_that("liver_cirrhosis_prednisone_df has 2968 rows", {
  expect_equal(nrow(liver_cirrhosis_prednisone_df), 2968)
})

# Test 4: Column names match expected
test_that("liver_cirrhosis_prednisone_df has correct column names", {
  expect_equal(
    names(liver_cirrhosis_prednisone_df),
    c("ID", "Time", "death", "obstime", "proth", "Trt", "start", "stop", "event")
  )
})

# Test 5: Column types are correct
test_that("liver_cirrhosis_prednisone_df has correct column types", {
  expect_type(liver_cirrhosis_prednisone_df$ID, "integer")
  expect_type(liver_cirrhosis_prednisone_df$Time, "double")
  expect_type(liver_cirrhosis_prednisone_df$death, "integer")
  expect_type(liver_cirrhosis_prednisone_df$obstime, "double")
  expect_type(liver_cirrhosis_prednisone_df$proth, "integer")
  expect_s3_class(liver_cirrhosis_prednisone_df$Trt, "factor")
  expect_type(liver_cirrhosis_prednisone_df$start, "double")
  expect_type(liver_cirrhosis_prednisone_df$stop, "double")
  expect_type(liver_cirrhosis_prednisone_df$event, "double")
})

