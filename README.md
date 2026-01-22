# IJC437 - PM2.5 in Sheffield and Leeds from 2017 to 2025
This repository contains an analysis of PM2.5 concentrations in Sheffield and Leeds between 2017 and 2025, for the data science module IJC437
# Repository contents
- `data/raw/`

  Hourly PM2.5 datasets for years 2017-2025 for Sheffield Barnsley Road, Leeds Centre and Leeds Headingley Kerbside, 2022-2025 for Sheffield Tinsley.
- `pm25_analysis.R`  
  Cleans hourly PM2.5 data, calculates daily means, seasonal and annual summaries, exceedances, and runs regression models.
- `pm25_plots.R`  
  Generates all figures used in the report (annual trends, seasonal means, diurnal variation).
- `README.md`  
  Project overview and instructions.

  # How to run the analysis
  1. Download or clone this repository (raw data are included in data/raw/)
  2. OpenRStudio and set the working directory to the project root.
  3. Run `pm25_analysis.R` to process the data
  4. Run `pm25_plots.R` to generate all visualisations used in the report

## Key findings

- PM2.5 concentrations generally declined between 2017 and 2025, with differing trends by monitoring site.
- Urban traffic sites recorded consistently higher PM2.5 concentrations than urban background sites.
- Seasonal patterns showed highest concentrations in spring and lowest in summer.
- Diurnal patterns showed highest concentrations in the late evening (approximately 20:00-22:00), and lowest in the early afternoon (13:00-15:00).
- PM2.5 levels frequently exceeded the WHO guideline of 5 µg/m³ across all sites.
