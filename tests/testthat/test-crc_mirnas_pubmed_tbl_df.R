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

# crc_mirnas_pubmed_tbl_df


library(testthat)

# Test 1: Object class is a tibble/data.frame
test_that("crc_mirnas_pubmed_tbl_df is a tibble", {
  expect_s3_class(crc_mirnas_pubmed_tbl_df, "tbl_df")
  expect_s3_class(crc_mirnas_pubmed_tbl_df, "data.frame")
})

# Test 2: Column count is correct
test_that("crc_mirnas_pubmed_tbl_df has 8 columns", {
  expect_equal(length(crc_mirnas_pubmed_tbl_df), 8)
})

# Test 3: Row count is correct
test_that("crc_mirnas_pubmed_tbl_df has 508 rows", {
  expect_equal(nrow(crc_mirnas_pubmed_tbl_df), 508)
})

# Test 4: Column names are valid
test_that("crc_mirnas_pubmed_tbl_df has the expected column names", {
  expect_equal(
    names(crc_mirnas_pubmed_tbl_df),
    c("PMID", "Year", "Title", "Abstract", "Language", "Type", "Topic", "miRNA")
  )
})

# Test 5: Column types are correct
test_that("crc_mirnas_pubmed_tbl_df column types are correct", {
  expect_type(crc_mirnas_pubmed_tbl_df$PMID, "double")
  expect_type(crc_mirnas_pubmed_tbl_df$Year, "double")
  expect_type(crc_mirnas_pubmed_tbl_df$Title, "character")
  expect_type(crc_mirnas_pubmed_tbl_df$Abstract, "character")
  expect_type(crc_mirnas_pubmed_tbl_df$Language, "character")
  expect_type(crc_mirnas_pubmed_tbl_df$Type, "character")
  expect_type(crc_mirnas_pubmed_tbl_df$Topic, "character")
  expect_type(crc_mirnas_pubmed_tbl_df$miRNA, "character")
})




