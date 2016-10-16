#assign variables
crim <- housing$V1
zn <- housing$V2
indus <- housing$V3
chas <- housing$V4
nox <- housing$V5
rm <- housing$V6
age <- housing$V7
dis <- housing$V8
rad <- housing$V9
tax <- housing$V10
ptratio <- housing$V11
b <- housing$V12
lstat <- housing$V13
medv <- housing$V14

#want to create the best model to predict housing prices in Boston suburbs

#initial check of data
pairs(~medv + crim + zn + indus + chas + nox + rm + age + dis + rad + tax + ptratio + b + lstat)
#remove nox because nitric oxide and lung function has not been studied very closely therefore is irrelevent here
pairs(~medv + crim + zn + indus + chas + rm + age + dis + rad + tax + ptratio + b + lstat)
#log adjustment on crim
pairs(~medv + crim)
pairs(~medv + log(crim))
