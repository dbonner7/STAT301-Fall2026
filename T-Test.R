# Author: Dontavious Bonner, 9/23/2026, Purpose: To perform T-Test

#Create variables x and y with some dummy dataset
x = rnorm(10)
y = rnorm(10)

#Make a normal distribution plot/curve for reference
pts = seq(-4.5,4.5,length=100)
plot(pts,dt(pts,df=9),col='red',type='l')

#Add x and y points on existing plot
lines(density(x), col='green')
lines(density(y), col='blue')

#Add another curve, color Yellow with 100 points between 2 to 4
pts = seq(2,4,length=100)
	lines(density(pts), col='yellow')
	
	#Apply the T-test function to check differences between variables x and y
		ttest = t.test(x,y)
		
		Welch Two Sample t-test

data:  x and y
t = -1.071, df = 16.793, p-value = 0.2993
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -1.6624665  0.5436251
sample estimates:
 mean of x  mean of y 
-0.2520274  0.3073933 

# x and y are not significantly different variables/groups

