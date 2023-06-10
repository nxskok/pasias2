data {
  int<lower=0> n;
  real a;
  real b;
  array[n] int<lower=0, upper=1> x;
}

parameters {
  real<lower=0,upper=1> p;
}

model {
  // prior
  p ~ beta(a, b);
  // likelihood
  x ~ bernoulli(p);
}
