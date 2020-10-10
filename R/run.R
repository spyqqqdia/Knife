source("R/Arrow.R")
source("R/MMY.R")
source("R/StraightTop.R")
source("R/LAV.R")

# setwd("~/Projects/R/knife/")
# source("R/run.R")


# Steel densities (kg/dm³ = g/cm³):
#
# 1.7102: 7.45
# 1.4301: 7.88
# 1.4310: 7.9

doArrows <- FALSE
doSmoothArrows <- FALSE
doSlimArrows <- FALSE
doThickArrows <- FALSE
doMMY <- FALSE
do_Slim_MMY <- FALSE
do_Viz_MMY <- FALSE
do_SlimViz_MMY <- FALSE
do_StraightTop <- FALSE
do_LAV <- TRUE





if(doArrows){
  
  th <- 7
  d <- 7.9  # kg/dm³
  for(f in c(1,24/25)) knife_Arrow(f,th,d)
}

if(doSmoothArrows){
  
  th <- 7
  d <- 7.9  # kg/dm³
  for(f in c(1,24/25)) knife_SmoothArrow(f,th,d) 
}


if(doSlimArrows){
  
  th <- 8
  d <- 7.9  # kg/dm³
  for(f in c(1,23/24)) knife_ThickArrow(f,th,d) 
}


if(doThickArrows){
  
  th <- 8
  d <- 7.9  # kg/dm³
  for(f in c(1,0.95)) knife_ThickArrow(f,th,d) 
}


if(doMMY){
  
  th <- 7
  f <- 1
  d <- 7.9  # kg/dm³
  knife_MMY(f,th,d)  
}



if(do_Slim_MMY){
  
  th <- 7
  f <- 1
  d <- 7.9  # kg/dm³
  knife_Slim_MMY(f,th,d)  
}


if(do_Viz_MMY){
  
  th <- 7
  f <- 1
  d <- 7.9  # kg/dm³
  knife_Viz_MMY(f,th,d)  
}

if(do_SlimViz_MMY){
  
  th <- 7
  f <- 1
  d <- 7.9  # kg/dm³
  knife_SlimViz_MMY(f,th,d)  
}


if(do_StraightTop){
  
  th <- 7
  f <- 1
  d <- 7.9  # kg/dm³
  knife_StraightTop(f,th,d) 
  knife_StraightTop1(f,th,d)  
}


if(do_LAV){
  
  th <- 6
  f <- 1
  d <- 7.9  # kg/dm³
  knife_LAV_27cm(f,th,d) 
  knife_LAV_2sided_27cm(f,th,d) 
  knife_LAV_26cm(f,th,d) 
}


