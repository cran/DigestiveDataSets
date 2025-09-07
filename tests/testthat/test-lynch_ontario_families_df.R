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

# lynch_ontario_families_df

library(testthat)

# Test 1: Object class is a data.frame
test_that("lynch_ontario_families_df is a data.frame", {
  expect_s3_class(lynch_ontario_families_df, "data.frame")
})

# Test 2: Number of columns is 11
test_that("lynch_ontario_families_df has 11 columns", {
  expect_equal(length(lynch_ontario_families_df), 11)
})

# Test 3: Number of rows is 765
test_that("lynch_ontario_families_df has 765 rows", {
  expect_equal(nrow(lynch_ontario_families_df), 765)
})

# Test 4: Column names match expected values
test_that("lynch_ontario_families_df has the expected column names", {
  expect_equal(
    names(lynch_ontario_families_df),
    c("famID", "indID", "fatherID", "motherID", "gender", "status", "time",
      "currentage", "mgene", "proband", "relation")
  )
})

# Test 5: All columns are of integer type (as per str output)
test_that("All columns are of type integer", {
  expect_type(lynch_ontario_families_df$famID, "integer")
  expect_type(lynch_ontario_families_df$indID, "integer")
  expect_type(lynch_ontario_families_df$fatherID, "integer")
  expect_type(lynch_ontario_families_df$motherID, "integer")
  expect_type(lynch_ontario_families_df$gender, "integer")
  expect_type(lynch_ontario_families_df$status, "integer")
  expect_type(lynch_ontario_families_df$time, "integer")
  expect_type(lynch_ontario_families_df$currentage, "integer")
  expect_type(lynch_ontario_families_df$mgene, "integer")
  expect_type(lynch_ontario_families_df$proband, "integer")
  expect_type(lynch_ontario_families_df$relation, "integer")
})




