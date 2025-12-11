
library(ggplot2)


ds <- read.csv("reported.csv")

ds$crime_rate_total <- ds$crimes.total   / ds$population * 100000
ds$drunkdrive_rate  <- ds$drunk.driving / ds$population * 100000

p_corr <- ggplot(ds, aes(x = drunkdrive_rate,
                         y = crime_rate_total)) +
  geom_point() +
  geom_smooth(method = "lm", se = TRUE) +
  labs(
    title = "Relationship between Total Crime Rate and Drunk Driving Rate",
    x = "Drunk driving rate (per 100,000 population)",
    y = "Total crime rate (per 100,000 population)"
  ) +
  theme_minimal()
