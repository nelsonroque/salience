library(imager)
#Sample functions and turn them into separate R,G,B channels
R <- as.cimg(function(x,y) cos(sin(cos(6*x*y^3))),100,100)
G <- as.cimg(function(x,y) cos(cos(3*x*y*x*y^9*y + pi^4/2^0.1)),100,100)
B <- as.cimg(function(x,y) cos(exp(-.03*x^4)),100,100)
trippy <- imappend(list(R,G,B),"c") #Bind the three channels into one image
plot(trippy)

R <- as.cimg(function(x,y) seq(1,10000,1),100,100)
G <- as.cimg(function(x,y) seq(1,10000,1),100,100)
B <- as.cimg(function(x,y) seq(1,10000,1),100,100)
gradient <- imappend(list(R,G,B),"c") #Bind the three channels into one image
plot(gradient)
