#' Launch the Yarra River Shiny app
#'
#' This function starts an interactive Shiny application
#' that lets you explore Yarra River water quality data.
#'
#' The app allows you to:
#' - choose a parameter (e.g. "pH"),
#' - choose a monitoring site,
#' - view a time series plot produced by `plot_yarra_metric()`.
#'
#' @return This function does not return anything; it launches the app.
#'
#' @examples
#' if (interactive()) {
#'   run_yarra_app()
#' }
#'
#' @export
run_yarra_app <- function() {
  app_dir <- system.file("shiny", package = "yarraWQ")
  if (app_dir == "") {
    stop("Could not find Shiny app directory. Try reinstalling yarraWQ.")
  }
  shiny::runApp(app_dir, display.mode = "normal")
}
