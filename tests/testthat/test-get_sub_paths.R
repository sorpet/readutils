test_that("get_sub_paths() gets sub paths", {
  tibble1 <- get_sub_paths(path = "./testdata", pattern = ".csv", col_name = "abs_path")
  tibble2 <- tibble::tibble("abs_path" = c("./testdata/file1.csv", "./testdata/file2.csv"))
  expect_equal(tibble1, tibble2)
})
