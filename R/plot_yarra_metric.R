#' Plot a water quality parameter over time
#'
#' Draw a time series of a chosen water quality parameter (e.g. "pH",
#' "Turbidity", etc.) from the `yarra_wq` dataset. The data are in long
#' format: each row is one observation of one parameter at one time.
#'
#' @param parameter_name Character. Which parameter to plot, e.g. "pH".
#' @param site_name Optional character. If provided, filter to that site
#'   (matches the `name` column in `yarra_wq`). If NULL, use all sites.
#'
#' @return A ggplot object (time series of measured values).
#'
#' @examples
#' # After loading the package:
#' # plot_yarra_metric(parameter_name = "pH")
#' # plot_yarra_metric(parameter_name = "pH",
#' #                    site_name = "YARRA @ WARRANDYTE (ROAD BRIDGE)")
#'
#' @export
plot_yarra_metric <- function(parameter_name = "pH",
                              site_name = NULL) {
  
  data <- yarra_wq
  
  # pick datetime column
  time_col <- dplyr::case_when(
    "datetime" %in% names(data) ~ "datetime",
    "date" %in% names(data) ~ "date",
    TRUE ~ NA_character_
  )
  
  if (is.na(time_col)) {
    stop("No time column called 'datetime' or 'date' found in yarra_wq.")
  }
  
  # filter by parameter
  data <- data |>
    dplyr::filter(.data$parameter == parameter_name)
  
  # optionally filter by site
  if (!is.null(site_name)) {
    data <- data |>
      dplyr::filter(.data$name == site_name)
  }
  
  if (nrow(data) == 0) {
    stop(
      "No rows left after filtering.\n",
      "parameter_name = '", parameter_name, "' ",
      if (!is.null(site_name)) paste0("site_name = '", site_name, "'") else ""
    )
  }
  
  # extract the time + value we want to plot
  plot_data <- data |>
    dplyr::select(
      time = dplyr::all_of(time_col),
      value
    )
  
  # make sure time is POSIXct or Date
  if (!inherits(plot_data$time, "POSIXct") &&
      !inherits(plot_data$time, "Date")) {
    suppressWarnings({
      plot_data$time <- as.POSIXct(plot_data$time)
    })
  }
  
  ggplot2::ggplot(plot_data,
                  ggplot2::aes(x = time, y = value)
  ) +
    ggplot2::geom_line() +
    ggplot2::labs(
      x = "Time",
      y = paste0(parameter_name, " (", unique(data$unit_of_measurement), ")"),
      title = paste0(
        "Yarra River ", parameter_name,
        if (!is.null(site_name)) paste0(" at ", site_name) else ""
      )
    ) +
    ggplot2::theme_minimal()
}
