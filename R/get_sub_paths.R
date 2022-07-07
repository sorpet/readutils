get_sub_paths <- function(path, pattern, col_name = "abs_path") {
  # obs create functionality if path point to single file instead of folder
  path |>
    base::list.files(pattern = pattern, full.names = TRUE) |>
    #tibble::tibble(!!col_name := .) %>% #doesn't work due to |> instead of %>%
    (function(.) tibble::tibble(!!col_name := .))() |>
    identity()
}
#get_sub_paths("./data", pattern = ".csv")
