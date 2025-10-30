
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
#> ! Using bundled GitHub PAT. Please add your own PAT using `gitcreds::gitcreds_set()`.
#> ℹ Loading metadata database
#> ✔ Loading metadata database ... done
#> 
#> 
#> → Will install 62 packages.
#> → Will update 1 package.
#> → Will download 62 CRAN packages (76.57 MB).
#> → Will download 1 package with unknown size.
#> + base64enc                 0.1-3      🔧 ⬇ (35.07 kB)
#> + bit                       4.6.0      🔧 ⬇ (730.79 kB)
#> + bit64                     4.6.0-1    🔧 ⬇ (581.86 kB)
#> + bslib                     0.9.0       ⬇ (5.68 MB)
#> + cachem                    1.1.0      🔧 ⬇ (71.08 kB)
#> + cli                       3.6.5      🔧 ⬇ (1.47 MB)
#> + clipr                     0.8.0       ⬇ (51.91 kB)
#> + commonmark                2.0.0      🔧 ⬇ (139.17 kB)
#> + crayon                    1.5.3       ⬇ (164.91 kB)
#> + digest                    0.6.37     🔧 ⬇ (356.98 kB)
#> + dplyr                     1.1.4      🔧 ⬇ (1.61 MB)
#> + farver                    2.1.2      🔧 ⬇ (1.97 MB)
#> + fastmap                   1.2.0      🔧 ⬇ (192.97 kB)
#> + fontawesome               0.5.3       ⬇ (1.39 MB)
#> + fs                        1.6.6      🔧 ⬇ (641.28 kB)
#> + generics                  0.1.4       ⬇ (82.60 kB)
#> + ggplot2                   4.0.0       ⬇ (5.92 MB)
#> + glue                      1.8.0      🔧 ⬇ (175.14 kB)
#> + gtable                    0.3.6       ⬇ (225.12 kB)
#> + hms                       1.1.4       ⬇ (103.49 kB)
#> + htmltools                 0.5.8.1    🔧 ⬇ (361.75 kB)
#> + httpuv                    1.6.16     🔧 ⬇ (2.79 MB)
#> + isoband                   0.2.7      🔧 ⬇ (1.87 MB)
#> + janitor                   2.2.1       ⬇ (287.80 kB)
#> + jquerylib                 0.1.4       ⬇ (526.50 kB)
#> + jsonlite                  2.0.0      🔧 ⬇ (1.11 MB)
#> + labeling                  0.4.3       ⬇ (61.83 kB)
#> + later                     1.4.4      🔧 ⬇ (755.51 kB)
#> + lifecycle                 1.0.4       ⬇ (125.64 kB)
#> + lubridate                 1.9.4      🔧 ⬇ (1.01 MB)
#> + magrittr                  2.0.4      🔧 ⬇ (231.97 kB)
#> + memoise                   2.0.1       ⬇ (49.48 kB)
#> + mime                      0.13       🔧 ⬇ (48.28 kB)
#> + pillar                    1.11.1      ⬇ (660.11 kB)
#> + pkgconfig                 2.0.3       ⬇ (18.47 kB)
#> + promises                  1.4.0       ⬇ (1.70 MB)
#> + purrr                     1.1.0      🔧 ⬇ (585.88 kB)
#> + R6                        2.6.1       ⬇ (87.28 kB)
#> + rappdirs                  0.3.3      🔧 ⬇ (48.63 kB)
#> + RColorBrewer              1.1-3       ⬇ (51.79 kB)
#> + Rcpp                      1.1.0      🔧 ⬇ (3.37 MB)
#> + readr                     2.1.5      🔧 ⬇ (1.99 MB)
#> + rlang                     1.1.6      🔧 ⬇ (1.91 MB)
#> + S7                        0.2.0      🔧 ⬇ (343.17 kB)
#> + sass                      0.4.10     🔧 ⬇ (2.41 MB)
#> + scales                    1.4.0       ⬇ (873.34 kB)
#> + shiny                     1.11.1      ⬇ (4.44 MB)
#> + snakecase                 0.11.1      ⬇ (161.79 kB)
#> + sourcetools               0.1.7-1    🔧 ⬇ (135.37 kB)
#> + stringi                   1.8.7      🔧 ⬇ (14.79 MB)
#> + stringr                   1.5.2       ⬇ (313.18 kB)
#> + tibble                    3.3.0      🔧 ⬇ (692.99 kB)
#> + tidyr                     1.3.1      🔧 ⬇ (1.32 MB)
#> + tidyselect                1.2.1       ⬇ (226.89 kB)
#> + timechange                0.3.0      🔧 ⬇ (888.95 kB)
#> + tzdb                      0.5.0      🔧 ⬇ (1.28 MB)
#> + utf8                      1.2.6      🔧 ⬇ (209.74 kB)
#> + vctrs                     0.6.5      🔧 ⬇ (1.89 MB)
#> + viridisLite               0.4.2       ⬇ (1.30 MB)
#> + vroom                     1.6.6      🔧 ⬇ (3.12 MB)
#> + withr                     3.0.2       ⬇ (224.91 kB)
#> + xtable                    1.8-4       ⬇ (706.86 kB)
#> + yarraWQ      0.0.0.9000 → 0.0.0.9000 👷🏾‍♀️🔧 ⬇ (GitHub: e971524)
#> ℹ Getting 62 pkgs (76.57 MB) and 1 pkg with unknown size
#> ✔ Got bit64 4.6.0-1 (aarch64-apple-darwin20) (581.86 kB)
#> ✔ Got base64enc 0.1-3 (aarch64-apple-darwin20) (35.07 kB)
#> ✔ Got Rcpp 1.1.0 (aarch64-apple-darwin20) (3.37 MB)
#> ✔ Got yarraWQ 0.0.0.9000 (source) (48.26 kB)
#> ✔ Got R6 2.6.1 (aarch64-apple-darwin20) (87.28 kB)
#> ✔ Got RColorBrewer 1.1-3 (aarch64-apple-darwin20) (51.79 kB)
#> ✔ Got dplyr 1.1.4 (aarch64-apple-darwin20) (1.61 MB)
#> ✔ Got S7 0.2.0 (aarch64-apple-darwin20) (343.17 kB)
#> ✔ Got gtable 0.3.6 (aarch64-apple-darwin20) (225.12 kB)
#> ✔ Got lifecycle 1.0.4 (aarch64-apple-darwin20) (125.64 kB)
#> ✔ Got commonmark 2.0.0 (aarch64-apple-darwin20) (139.17 kB)
#> ✔ Got glue 1.8.0 (aarch64-apple-darwin20) (175.14 kB)
#> ✔ Got crayon 1.5.3 (aarch64-apple-darwin20) (164.91 kB)
#> ✔ Got pillar 1.11.1 (aarch64-apple-darwin20) (660.11 kB)
#> ✔ Got hms 1.1.4 (aarch64-apple-darwin20) (103.49 kB)
#> ✔ Got promises 1.4.0 (aarch64-apple-darwin20) (1.70 MB)
#> ✔ Got rappdirs 0.3.3 (aarch64-apple-darwin20) (48.63 kB)
#> ✔ Got janitor 2.2.1 (aarch64-apple-darwin20) (287.80 kB)
#> ✔ Got scales 1.4.0 (aarch64-apple-darwin20) (873.34 kB)
#> ✔ Got htmltools 0.5.8.1 (aarch64-apple-darwin20) (361.75 kB)
#> ✔ Got snakecase 0.11.1 (aarch64-apple-darwin20) (161.79 kB)
#> ✔ Got fontawesome 0.5.3 (aarch64-apple-darwin20) (1.39 MB)
#> ✔ Got magrittr 2.0.4 (aarch64-apple-darwin20) (231.97 kB)
#> ✔ Got farver 2.1.2 (aarch64-apple-darwin20) (1.97 MB)
#> ✔ Got rlang 1.1.6 (aarch64-apple-darwin20) (1.91 MB)
#> ✔ Got lubridate 1.9.4 (aarch64-apple-darwin20) (1.01 MB)
#> ✔ Got stringr 1.5.2 (aarch64-apple-darwin20) (313.18 kB)
#> ✔ Got cachem 1.1.0 (aarch64-apple-darwin20) (71.08 kB)
#> ✔ Got tidyselect 1.2.1 (aarch64-apple-darwin20) (226.89 kB)
#> ✔ Got clipr 0.8.0 (aarch64-apple-darwin20) (51.91 kB)
#> ✔ Got xtable 1.8-4 (aarch64-apple-darwin20) (706.86 kB)
#> ✔ Got fastmap 1.2.0 (aarch64-apple-darwin20) (192.97 kB)
#> ✔ Got generics 0.1.4 (aarch64-apple-darwin20) (82.60 kB)
#> ✔ Got memoise 2.0.1 (aarch64-apple-darwin20) (49.48 kB)
#> ✔ Got sourcetools 0.1.7-1 (aarch64-apple-darwin20) (135.37 kB)
#> ✔ Got stringi 1.8.7 (aarch64-apple-darwin20) (14.79 MB)
#> ✔ Got tibble 3.3.0 (aarch64-apple-darwin20) (692.99 kB)
#> ✔ Got httpuv 1.6.16 (aarch64-apple-darwin20) (2.79 MB)
#> ✔ Got readr 2.1.5 (aarch64-apple-darwin20) (1.99 MB)
#> ✔ Got purrr 1.1.0 (aarch64-apple-darwin20) (585.88 kB)
#> ✔ Got vctrs 0.6.5 (aarch64-apple-darwin20) (1.89 MB)
#> ✔ Got tzdb 0.5.0 (aarch64-apple-darwin20) (1.28 MB)
#> ✔ Got labeling 0.4.3 (aarch64-apple-darwin20) (61.83 kB)
#> ✔ Got withr 3.0.2 (aarch64-apple-darwin20) (224.91 kB)
#> ✔ Got utf8 1.2.6 (aarch64-apple-darwin20) (209.74 kB)
#> ✔ Got pkgconfig 2.0.3 (aarch64-apple-darwin20) (18.47 kB)
#> ✔ Got viridisLite 0.4.2 (aarch64-apple-darwin20) (1.30 MB)
#> ✔ Got jquerylib 0.1.4 (aarch64-apple-darwin20) (526.50 kB)
#> ✔ Got tidyr 1.3.1 (aarch64-apple-darwin20) (1.32 MB)
#> ✔ Got ggplot2 4.0.0 (aarch64-apple-darwin20) (5.92 MB)
#> ✔ Got mime 0.13 (aarch64-apple-darwin20) (48.28 kB)
#> ✔ Got digest 0.6.37 (aarch64-apple-darwin20) (356.98 kB)
#> ✔ Got bit 4.6.0 (aarch64-apple-darwin20) (730.79 kB)
#> ✔ Got shiny 1.11.1 (aarch64-apple-darwin20) (4.44 MB)
#> ✔ Got isoband 0.2.7 (aarch64-apple-darwin20) (1.87 MB)
#> ✔ Got bslib 0.9.0 (aarch64-apple-darwin20) (5.68 MB)
#> ✔ Got later 1.4.4 (aarch64-apple-darwin20) (755.51 kB)
#> ✔ Got fs 1.6.6 (aarch64-apple-darwin20) (641.28 kB)
#> ✔ Got cli 3.6.5 (aarch64-apple-darwin20) (1.47 MB)
#> ✔ Got vroom 1.6.6 (aarch64-apple-darwin20) (3.12 MB)
#> ✔ Got timechange 0.3.0 (aarch64-apple-darwin20) (888.95 kB)
#> ✔ Got jsonlite 2.0.0 (aarch64-apple-darwin20) (1.11 MB)
#> ✔ Got sass 0.4.10 (aarch64-apple-darwin20) (2.41 MB)
#> ✔ Installed R6 2.6.1  (83ms)
#> ✔ Installed RColorBrewer 1.1-3  (92ms)
#> ✔ Installed S7 0.2.0  (73ms)
#> ✔ Installed base64enc 0.1-3  (77ms)
#> ✔ Installed bit64 4.6.0-1  (82ms)
#> ✔ Installed Rcpp 1.1.0  (132ms)
#> ✔ Installed bit 4.6.0  (118ms)
#> ✔ Installed cachem 1.1.0  (51ms)
#> ✔ Installed bslib 0.9.0  (190ms)
#> ✔ Installed cli 3.6.5  (77ms)
#> ✔ Installed clipr 0.8.0  (46ms)
#> ✔ Installed commonmark 2.0.0  (29ms)
#> ✔ Installed crayon 1.5.3  (31ms)
#> ✔ Installed digest 0.6.37  (35ms)
#> ✔ Installed dplyr 1.1.4  (35ms)
#> ✔ Installed farver 2.1.2  (60ms)
#> ✔ Installed fastmap 1.2.0  (33ms)
#> ✔ Installed fontawesome 0.5.3  (31ms)
#> ✔ Installed fs 1.6.6  (31ms)
#> ✔ Installed generics 0.1.4  (30ms)
#> ✔ Installed ggplot2 4.0.0  (36ms)
#> ✔ Installed glue 1.8.0  (36ms)
#> ✔ Installed gtable 0.3.6  (31ms)
#> ✔ Installed hms 1.1.4  (58ms)
#> ✔ Installed htmltools 0.5.8.1  (33ms)
#> ✔ Installed httpuv 1.6.16  (36ms)
#> ✔ Installed isoband 0.2.7  (34ms)
#> ✔ Installed janitor 2.2.1  (32ms)
#> ✔ Installed jquerylib 0.1.4  (31ms)
#> ✔ Installed jsonlite 2.0.0  (29ms)
#> ✔ Installed labeling 0.4.3  (57ms)
#> ✔ Installed later 1.4.4  (34ms)
#> ✔ Installed lifecycle 1.0.4  (31ms)
#> ✔ Installed lubridate 1.9.4  (32ms)
#> ✔ Installed magrittr 2.0.4  (32ms)
#> ✔ Installed memoise 2.0.1  (30ms)
#> ✔ Installed mime 0.13  (29ms)
#> ✔ Installed pillar 1.11.1  (30ms)
#> ✔ Installed pkgconfig 2.0.3  (56ms)
#> ✔ Installed promises 1.4.0  (32ms)
#> ✔ Installed purrr 1.1.0  (33ms)
#> ✔ Installed rappdirs 0.3.3  (34ms)
#> ✔ Installed readr 2.1.5  (37ms)
#> ✔ Installed rlang 1.1.6  (35ms)
#> ✔ Installed sass 0.4.10  (34ms)
#> ✔ Installed scales 1.4.0  (60ms)
#> ✔ Installed snakecase 0.11.1  (21ms)
#> ✔ Installed shiny 1.11.1  (75ms)
#> ✔ Installed sourcetools 0.1.7-1  (33ms)
#> ✔ Installed stringr 1.5.2  (18ms)
#> ✔ Installed stringi 1.8.7  (78ms)
#> ✔ Installed tibble 3.3.0  (48ms)
#> ✔ Installed tidyr 1.3.1  (56ms)
#> ✔ Installed tidyselect 1.2.1  (60ms)
#> ✔ Installed timechange 0.3.0  (33ms)
#> ✔ Installed tzdb 0.5.0  (37ms)
#> ✔ Installed utf8 1.2.6  (36ms)
#> ✔ Installed vctrs 0.6.5  (33ms)
#> ✔ Installed viridisLite 0.4.2  (32ms)
#> ✔ Installed withr 3.0.2  (17ms)
#> ✔ Installed vroom 1.6.6  (93ms)
#> ✔ Installed xtable 1.8-4  (26ms)
#> ℹ Packaging yarraWQ 0.0.0.9000
#> ✔ Packaged yarraWQ 0.0.0.9000 (328ms)
#> ℹ Building yarraWQ 0.0.0.9000
#> ✔ Built yarraWQ 0.0.0.9000 (554ms)
#> ✔ Installed yarraWQ 0.0.0.9000 (github::ETC5523-2025/assignment-4-packages-and-shiny-apps-RuoWei-ctrl@e971524) (17ms)
#> ✔ 1 pkg + 63 deps: kept 1, upd 1, added 62, dld 63 (NA B) [14.7s]
```

## Example

Here’s how to explore the included dataset:

``` r
library(yarraWQ)
head(yarra_wq)

# filter just pH measurements
filtered <- filter_yarra_data(yarra_wq, parameter_name = "pH")
head(filtered)
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
