#' Filter Yarra River water quality data
#'
#' This helper function returns a filtered version of the `yarra_wq` dataset
#' (included in the yarraWQ package). It lets you select which water quality
#' parameter to look at (for example "pH", "temperature", "turbidity"),
#' and optionally limit to a single monitoring site.
#'
#' This is useful because both the plotting function (`plot_yarra_metric()`)
#' and the Shiny app do the same type of filtering. Putting this logic in one
#' place avoids repeating the same code in multiple places.
#'
#' @param data A data frame with the same columns as `yarra_wq`.
#'        Typically you will just pass `yarra_wq`.
#' @param parameter_name A string giving the parameter to filter on,
#'        for example `"pH"`, `"temperature"`, `"turbidity"`, `"dissolved_oxygen"`.
#'        This will be matched to the `parameter` column.
#' @param site_name Optional. A string giving the site to filter on
#'        (matching the `name` column, e.g. `"YARRA @ CHANDLER HWY"`).
#'        If `NULL` (the default), all sites are included.
#'
#' @return A tibble/data.frame containing only rows that match the requested
#'         parameter and (if provided) site. If nothing matches, the returned
#'         tibble will have 0 rows.
#'
#' @examples
#' # Keep only pH measurements (all sites):
#' # filtered <- filter_yarra_data(yarra_wq, parameter_name = "pH")
#'
#' # Keep only pH at one specific site:
#' # filtered_site <- filter_yarra_data(
#' #   yarra_wq,
#' #   parameter_name = "pH",
#' #   site_name = "YARRA @ CHANDLER HWY"
#' # )
#'
#' @export
filter_yarra_data <- function(data,
                              parameter_name,
                              site_name = NULL) {
  # Basic safety checks
  if (!("parameter" %in% colnames(data))) {
    stop("Column 'parameter' was not found in the provided data.")
  }
  if (!("name" %in% colnames(data))) {
    stop("Column 'name' was not found in the provided data.")
  }

  # Filter by parameter first
  out <- data[data$parameter == parameter_name, , drop = FALSE]

  # Optionally filter by site
  if (!is.null(site_name)) {
    out <- out[out$name == site_name, , drop = FALSE]
  }

  out
}
