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

# cholera_deaths_1849_tbl_df


library(testthat)

# Test 1: Confirm the dataset is a tibble (tbl_df subclass)
test_that("cholera_deaths_1849_tbl_df is a tibble", {
  expect_s3_class(cholera_deaths_1849_tbl_df, "tbl_df")
})

# Test 2: Confirm number of columns
test_that("cholera_deaths_1849_tbl_df has 6 columns", {
  expect_equal(length(cholera_deaths_1849_tbl_df), 6)
})

# Test 3: Confirm number of rows
test_that("cholera_deaths_1849_tbl_df has 730 rows", {
  expect_equal(nrow(cholera_deaths_1849_tbl_df), 730)
})

# Test 4: Confirm expected column names
test_that("cholera_deaths_1849_tbl_df has correct column names", {
  expect_equal(
    names(cholera_deaths_1849_tbl_df),
    c("month", "cause_of_death", "day_of_month", "deaths", "date", "day_of_week")
  )
})

# Test 5: Confirm column data types (allowing NA values)
test_that("cholera_deaths_1849_tbl_df has correct column types", {
  expect_type(cholera_deaths_1849_tbl_df$month, "character")
  expect_s3_class(cholera_deaths_1849_tbl_df$cause_of_death, "factor")
  expect_type(cholera_deaths_1849_tbl_df$day_of_month, "character")
  expect_type(cholera_deaths_1849_tbl_df$deaths, "double")
  expect_s3_class(cholera_deaths_1849_tbl_df$date, "Date")
  expect_s3_class(cholera_deaths_1849_tbl_df$day_of_week, "ordered")
})

# Test 6: Confirm factor and ordered factor levels exist
test_that("Factor variables have levels", {
  expect_gt(nlevels(cholera_deaths_1849_tbl_df$cause_of_death), 0)
  expect_gt(nlevels(cholera_deaths_1849_tbl_df$day_of_week), 0)
})
