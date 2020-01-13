# simple regression simulation
#
# generate x values as a sequence from 1 to 50
x = seq(1,50)

# set slope and intercept

intercept = 5
slope = 3

# set standard deviation for noise element

sigma_e = 50

# generate y values without noise

y_true = intercept + slope*x

plot (y_true~x)

# generate vector of noise values

e = rnorm(length(x),0,sigma_e)

plot(e)

# compute true regression plus noise

y = y_true + e

plot(y~x)

# compute the ordinary least squares estimates

lm1 = lm(y~x)
summary(lm1)
