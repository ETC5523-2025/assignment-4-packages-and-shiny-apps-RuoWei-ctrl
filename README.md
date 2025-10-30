
<!-- README.md is generated from README.Rmd. Please edit that file -->

# yarraWQ

yarraWQ is an R package designed to make the Yarra River Water Quality
dataset easy to use and explore. It provides clean, ready-to-analyze
data, helper functions for visualization, and an interactive Shiny app
for exploring trends in water parameters over time and across sites.

## Installation

You can install the development version of yarraWQ from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("ETC5523-2025/assignment-4-packages-and-shiny-apps-RuoWei-ctrl")
#>  Found  1  deps for  0/1  pkgs [⠋] Resolving ETC5523-2025/assignmen… Found  1  deps for  0/1  pkgs [⠙] Resolving ETC5523-2025/assignmen… Found  1  deps for  0/1  pkgs [⠹] Resolving ETC5523-2025/assignmen… Found  1  deps for  0/1  pkgs [⠸] Resolving ETC5523-2025/assignmen… Found  1  deps for  0/1  pkgs [⠼] Resolving ETC5523-2025/assignmen… Found  1  deps for  0/1  pkgs [⠴] Resolving ETC5523-2025/assignmen… Found  5  deps for  1/1  pkgs [⠦] Resolving standard (CRAN/BioC) p…                                                                      
#> ℹ No downloads are needed
#>  Installing...              ✔ 1 pkg + 46 deps: kept 46 [1.3s]
```

## Example

Here’s how to explore the included dataset:

``` r
library(yarraWQ)
head(yarra_wq)
```

Generate a simple time-series plot for a selected water quality
parameter (for example, pH):

``` r
plot_yarra_metric(parameter_name = "pH")
```

This function allows you to quickly visualize long-term water quality
changes in the Yarra River.

## Shiny App

For interactive exploration, you can launch the Shiny app:

``` r

run_yarra_app()
```

The app allows users to:

- Select a parameter and site

- View corresponding time trends

- Compare results across multiple monitoring stations

## Data Source

The dataset (`yarra_wq`) was adapted from your course-provided data file
**yarra_wq_clean.csv**, representing long-term monitoring records of the
Yarra River’s water quality.  
Variables include pH, temperature, turbidity, dissolved oxygen, and
more.
