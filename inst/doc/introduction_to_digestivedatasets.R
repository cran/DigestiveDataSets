## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(DigestiveDataSets)
library(ggplot2)
library(dplyr)

## ----digestive-datasets,echo = TRUE,message = FALSE,warning = FALSE,results = 'markup'----


view_datasets_DigestiveDataSets()



## ----digestive-cancer-plot, fig.width=6, fig.height=4.5, out.width="90%"------


# Minimal data processing WITHOUT tidyr
digestive_cancer_survival_df %>%
  summarise(
    Stomach = sum(stomach, na.rm = TRUE),
    Colon = sum(colon, na.rm = TRUE)
  ) %>% 
  # Convert to plot-ready format WITHOUT tidyr
  {data.frame(
    Cancer = names(.),
    Cases = unlist(., use.names = FALSE)
  )} %>% 
  # Plot
  ggplot(aes(x = Cancer, y = Cases)) +
  geom_col(fill = c("#e63946", "#1d3557")) +
  labs(title = "Stomach vs Colon Cancer Cases") +
  theme_minimal()


## ----campylobacter-infections-plot, fig.width=6, fig.height=4.5, out.width="90%"----

# Convert ts to numeric vector and numeric time
campy_df <- data.frame(
  infections = as.numeric(campylobacter_infections_ts),
  time = as.numeric(time(campylobacter_infections_ts))
)

# Plot without warning by using numeric 'time'
ggplot(campy_df, aes(x = time, y = infections)) +
  geom_line(color = "steelblue") +
  geom_point(color = "steelblue") +
  labs(
    title = "Campylobacter Infections Over Time",
    x = "Time (year.fraction)",
    y = "Number of Infections"
  ) +
  theme_minimal()



## ----cholera-deaths-plot, fig.width=6, fig.height=4.5, out.width="90%"--------

ggplot(cholera_deaths_1849_tbl_df, aes(x = date, y = deaths, color = cause_of_death)) +
  geom_line() +
  labs(
    title = "Cholera Deaths Over Time in 1849",
    x = "Date",
    y = "Number of Deaths",
    color = "Cause of Death"
  ) +
  theme_minimal()




