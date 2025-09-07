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

# post_ercp_pancreatitis_tbl_df

library(testthat)

# Test 1: Check class
test_that("post_ercp_pancreatitis_tbl_df is a tibble/data.frame", {
  expect_s3_class(post_ercp_pancreatitis_tbl_df, "tbl_df")
  expect_s3_class(post_ercp_pancreatitis_tbl_df, "data.frame")
})

# Test 2: Number of columns
test_that("post_ercp_pancreatitis_tbl_df has 33 columns", {
  expect_equal(ncol(post_ercp_pancreatitis_tbl_df), 33)
})

# Test 3: Number of rows
test_that("post_ercp_pancreatitis_tbl_df has 602 rows", {
  expect_equal(nrow(post_ercp_pancreatitis_tbl_df), 602)
})

# Test 4: Column names
test_that("post_ercp_pancreatitis_tbl_df has correct column names", {
  expect_equal(
    names(post_ercp_pancreatitis_tbl_df),
    c("id", "site", "age", "risk", "gender", "outcome", "sod", "pep", "recpanc",
      "psphinc", "precut", "difcan", "pneudil", "amp", "paninj", "acinar",
      "brush", "asa81", "asa325", "asa", "prophystent", "therastent",
      "pdstent", "sodsom", "bsphinc", "bstent", "chole", "pbmal", "train",
      "status", "type", "rx", "bleed")
  )
})

# Test 5: Dataset length is 33 (same as number of columns)
test_that("Dataset length matches number of columns", {
  expect_equal(length(post_ercp_pancreatitis_tbl_df), 33)
})

# Test 6: No column is entirely NA
test_that("Each column has at least one non-NA value", {
  expect_true(all(sapply(post_ercp_pancreatitis_tbl_df, function(x) any(!is.na(x)))))
})

# Test 7: Check types of selected columns (as described)
test_that("Selected columns have expected types", {
  expect_type(post_ercp_pancreatitis_tbl_df$id, "double")
  expect_s3_class(post_ercp_pancreatitis_tbl_df$site, "factor")
  expect_type(post_ercp_pancreatitis_tbl_df$age, "double")
  expect_type(post_ercp_pancreatitis_tbl_df$risk, "double")
  expect_s3_class(post_ercp_pancreatitis_tbl_df$gender, "factor")
  expect_s3_class(post_ercp_pancreatitis_tbl_df$outcome, "factor")
  expect_s3_class(post_ercp_pancreatitis_tbl_df$sod, "factor")
  expect_s3_class(post_ercp_pancreatitis_tbl_df$asa, "factor")
  expect_type(post_ercp_pancreatitis_tbl_df$bleed, "double")
})
