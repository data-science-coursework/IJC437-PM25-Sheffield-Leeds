# PM2.5 visualisations
# IJC437 coursework

library(tidyverse)
library(ggplot2)

# Load processed data
source("pm25_analysis.R")

# Set a colour palette to be used for all visualisations
site_cols <- c("Leeds Centre" = "#1f3c88",
  "Leeds Headingley Kerbside" = "#6aaed6",
  "Sheffield Barnsley Road" = "#d73027",
  "Sheffield Tinsley" = "darkgoldenrod2")

# Create plot 1: Annual trends 2017-2025
ggplot(pm25_yearly,
       aes(x = year, y = yearly_mean, colour = site_name)) +
  geom_line(linewidth = 1) +
  geom_point(size = 2) +
  scale_colour_manual(values = site_cols, name = "Monitoring site") +
  labs(
    title = "Annual mean PM2.5 concentrations (2017–2025)",
    x = "Year",
    y = expression("PM2.5 ("*mu*"g/m"^3*")"))
   + theme_minimal()

# Create plot 2: Seasonal means bar chart
pm25_seasonal_overall <- pm25_seasonal_overall %>%
  mutate(
    season = factor(season,
                    levels = c("Winter", "Spring", "Summer", "Autumn")))

ggplot(pm25_seasonal_overall,
       aes(x = season, y = mean_pm25, fill = site_name)) +
  geom_col(position = position_dodge(width = 0.8), width = 0.7) +
  scale_fill_manual(values = site_cols, name = "Monitoring site") +
  labs(
    title = "Seasonal mean PM2.5 concentrations",
    x = "Season",
    y = expression("PM2.5 ("*mu*"g/m"^3*")")) + theme_minimal()

# Create plot 3: Diurnal variation
ggplot(pm25_diurnal,
       aes(x = plot_hour, y = mean_pm25, colour = site_name)) +
  geom_line(linewidth = 1.2) +
  scale_colour_manual(values = site_cols, name = "Monitoring site") +
  scale_x_continuous(breaks = seq(0, 23, by = 3)) +
  labs(
    title = "Diurnal variation in PM2.5 concentrations",
    x = "Hour of day",
    y = expression("PM2.5 ("*mu*"g/m"^3*")")) +
  theme_minimal()
