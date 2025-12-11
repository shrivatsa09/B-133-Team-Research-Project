print(p_hist)
cor_test <- cor.test(ds$crime_rate_total,
                     ds$drunkdrive_rate,
                     method = "pearson")

cor_test
model_corr <- lm(crime_rate_total ~ drunkdrive_rate, data = ds)
summary(model_corr)
