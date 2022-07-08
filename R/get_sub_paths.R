#' Get sub paths
#'
#' @param path A path.
#' @param pattern A regex.
#' @param col_name A string.
#' @return tibble::tibble with character column col_name containing abs_paths of subfiles
#' @importFrom rlang :=
#' @export
#' @examples
#' get_sub_paths("./data", pattern = ".csv", col_name = "abs_path")
#' library(readutils)
#' readutils::get_sub_paths(
#'   path = "/Users/sorpet/Desktop/data",
#'   pattern = ".csv",
#'   col_name = "abs_path"
#' )
get_sub_paths <- function(path, pattern, col_name = "abs_path") {
  # obs create functionality if path point to single file instead of folder
  path |>
    base::list.files(pattern = pattern, full.names = TRUE) |>
    # tibble::tibble(!!col_name := .) %>% #doesn't work due to |> instead of %>%
    (function(.) tibble::tibble(!!col_name := .))() |>
    identity()
}
