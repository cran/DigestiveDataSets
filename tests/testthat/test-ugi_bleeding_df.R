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

# ugi_bleeding_df


library(testthat)

# Test 1: The object is a data.frame
test_that("ugi_bleeding_df is a data.frame", {
  expect_s3_class(ugi_bleeding_df, "data.frame")
})

# Test 2: Dataset has exactly 14 columns
test_that("ugi_bleeding_df has 14 columns", {
  expect_equal(length(ugi_bleeding_df), 14)
})

# Test 3: Dataset has exactly 27 rows
test_that("ugi_bleeding_df has 27 rows", {
  expect_equal(nrow(ugi_bleeding_df), 27)
})

# Test 4: Column names are correct
test_that("ugi_bleeding_df has correct column names", {
  expect_equal(
    names(ugi_bleeding_df),
    c(
      "id", "trial", "year", "ref", "trt", "ctrl", "nti",
      "b.xti", "o.xti", "d.xti", "nci", "b.xci", "o.xci", "d.xci"
    )
  )
})

# Test 5: Each column has the expected type
test_that("ugi_bleeding_df columns have correct types", {
  expect_type(ugi_bleeding_df$id, "integer")
  expect_type(ugi_bleeding_df$trial, "character")
  expect_type(ugi_bleeding_df$year, "integer")
  expect_type(ugi_bleeding_df$ref, "integer")
  expect_type(ugi_bleeding_df$trt, "character")
  expect_type(ugi_bleeding_df$ctrl, "character")
  expect_type(ugi_bleeding_df$nti, "integer")
  expect_type(ugi_bleeding_df$b.xti, "integer")
  expect_type(ugi_bleeding_df$o.xti, "integer")
  expect_type(ugi_bleeding_df$d.xti, "integer")
  expect_type(ugi_bleeding_df$nci, "integer")
  expect_type(ugi_bleeding_df$b.xci, "integer")
  expect_type(ugi_bleeding_df$o.xci, "integer")
  expect_type(ugi_bleeding_df$d.xci, "integer")
})


