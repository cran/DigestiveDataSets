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

# campylobacter_infections_ts

library(testthat)

# Test 1: Check that the object is a time series
test_that("campylobacter_infections_ts is of class ts", {
  expect_s3_class(campylobacter_infections_ts, "ts")
})

# Test 2: Check length (number of time points)
test_that("campylobacter_infections_ts has 140 time points", {
  expect_equal(length(campylobacter_infections_ts), 140)
})

# Test 3: Check start time
test_that("campylobacter_infections_ts starts in 1990, period 1", {
  expect_equal(start(campylobacter_infections_ts), c(1990, 1))
})

# Test 4: Check end time
test_that("campylobacter_infections_ts ends in 2000, period 10", {
  expect_equal(end(campylobacter_infections_ts), c(2000, 10))
})

# Test 5: Check frequency is 13
test_that("campylobacter_infections_ts has a frequency of 13", {
  expect_equal(frequency(campylobacter_infections_ts), 13)
})

# Test 6: Ensure the object has numeric values (NA allowed)
test_that("campylobacter_infections_ts contains numeric values", {
  expect_true(is.numeric(campylobacter_infections_ts))
})

# Test 7: Ensure not all values are NA (dataset must contain valid numeric entries)
test_that("campylobacter_infections_ts is not all NA", {
  expect_true(any(!is.na(campylobacter_infections_ts)))
})
