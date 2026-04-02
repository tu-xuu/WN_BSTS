# install.packages("CausalImpact")
# install.packages("zoo")

library(CausalImpact)
library(zoo)

set.seed(1)

date <- seq(as.Date("2020-06-01"), by = "day", length.out = 150)

x1 <- 35 + arima.sim(model = list(ar = 0.95), n = 150)
y <- 1.2 * x1 + 1.5 * sin(2 * pi * (1:150) / 7) + rnorm(150, sd = 0.8)
y[93:150] <- y[93:150] - 6

data <- zoo(cbind(y, x1), date)

pre.period <- as.Date(c("2020-06-01", "2020-08-31"))
post.period <- as.Date(c("2020-09-01", "2020-10-28"))

impact <- CausalImpact(data, pre.period, post.period)

plot(impact)
summary(impact)
summary(impact, "report")