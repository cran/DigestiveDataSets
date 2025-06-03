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

# intestinal_smartpill_df

library(testthat)

# Test 1: Check class
test_that("intestinal_smartpill_df is a data.frame", {
  expect_s3_class(intestinal_smartpill_df, "data.frame")
})

# Test 2: Number of columns
test_that("intestinal_smartpill_df has 22 columns", {
  expect_equal(ncol(intestinal_smartpill_df), 22)
})

# Test 3: Number of rows
test_that("intestinal_smartpill_df has 95 rows", {
  expect_equal(nrow(intestinal_smartpill_df), 95)
})

# Test 4: Column names are correct
test_that("intestinal_smartpill_df has correct column names", {
  expect_equal(
    names(intestinal_smartpill_df),
    c("Group", "Gender", "Race", "Height", "Weight", "Age",
      "GE.Time", "SB.Time", "C.Time", "WG.Time",
      "S.Contractions", "S.Sum.of.Amplitudes", "S.Mean.Peak.Amplitude", "S.Mean.pH",
      "SB.Contractions", "SB.Sum.of.Amplitudes", "SB.Mean.Peak.Amplitude", "SB.Mean.pH",
      "Colon.Contractions", "Colon.Sum.of.Amplitudes", "C.Mean.Peak.Amplitude", "C.Mean.pH")
  )
})

# Test 5: Length of object is 22 (number of columns)
test_that("intestinal_smartpill_df length is 22", {
  expect_equal(length(intestinal_smartpill_df), 22)
})

# Test 6: All columns are numeric (as described)
test_that("All columns in intestinal_smartpill_df are numeric", {
  expect_true(all(sapply(intestinal_smartpill_df, is.numeric)))
})

# Test 7: Each column contains at least one non-NA value
test_that("No column is entirely NA", {
  expect_true(all(sapply(intestinal_smartpill_df, function(x) any(!is.na(x)))))
})
