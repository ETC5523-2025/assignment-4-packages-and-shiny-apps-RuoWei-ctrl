#' Launch the Yarra River Water Quality Shiny App
#'
#' This function opens an interactive dashboard for exploring the
#' Yarra River water quality dataset (`yarra_wq`).
#'
#' The app allows you to:
#' - Choose a parameter (e.g., pH, Temperature, DO)
#' - Choose a site or view all combined
#' - Explore how values change over time
#'
#' @return Launches a Shiny app; does not return a value.
#' @export
#'
#' @examples
#' if (interactive()) {
#'   run_yarra_app()
#' }
run_yarra_app <- function() {
  app_dir <- system.file("shiny", package = "yarraWQ")
  if (app_dir == "") {
    stop("Could not find Shiny app directory. Try reinstalling yarraWQ.")
  }
  shiny::runApp(app_dir, display.mode = "normal")
}
