##########################################################
# Example Script
# author: Ignacio Sarmiento-Barbieri
##########################################################


#Separate each section with labels
# Clean the workspace -----------------------------------------------------
rm(list=ls())
cat("\014")
local({r <- getOption("repos"); r["CRAN"] <- "http://cran.r-project.org"; options(repos=r)}) #set repo



# Load Packages -----------------------------------------------------------
require("pacman")
p_load("dplyr")



# Load data ---------------------------------------------------------------
# I recomend you using the package here
dta<-read.table("../stores/US90.txt", sep="", header=TRUE)


# plot data ---------------------------------------------------------------

plot(dta$gdpgr, dta$gdpcapgr, pch="o")
title(main = "GDP  and GDPpc growth",
      xlab = "GDPpc", ylab = "GDP")
