cat("Reading Arrow.R\n")


#======================================================
# Arrows:|
#======================================================
#
#
# Normalized length: 25 cm
# Normalized weight (7mm): 230g


#-------------------------------------------------------
# SYMMETRICAL ARROWS:|
#-----------------------

# Writes out CAD points for LibreCAD and computes weight
#
# @param f scale factor. Applied to normal scale = 25cm long.
# @param d steel density kg/dm^3 = 1e6 kg/mm^3
# @param th thickness in mm
# @param ID name of knive
#
# Scale factor is applied only to length and width, not thickness.
#
knife_Arrow <- function(f,th,d){
  
  msg <- "\n\nLine1:\n"
  msg <- paste(msg,f*250,",",f*15,"\n")
  msg <- paste(msg,f*180,",",f*25,"\n")
  
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*180,",",f*25,"\n")
  msg <- paste(msg,f*140,",",f*23,"\n")
  msg <- paste(msg,f*35,",",f*29,"\n")
  msg <- paste(msg,f*10,",",f*27,"\n")
  msg <- paste(msg,0,",",f*15,"\n")
  msg <- paste(msg,f*10,",",f*3,"\n")
  msg <- paste(msg,f*35,",",f*1,"\n")
  msg <- paste(msg,f*140,",",f*7,"\n")
  msg <- paste(msg,f*180,",",f*5,"\n")
  
  msg <- paste(msg,"\n\nLine2:\n")
  msg <- paste(msg,f*180,",",f*5,"\n")
  msg <- paste(msg,f*250,",",f*15,"\n")
  
  msg <- paste(msg,"\n\nCircle:\n")
  msg <- paste(msg,f*15,",",f*15,"\n")
  msg <- paste(msg,"Radius = 2mm\n")
  
  ID <- "Arrow"
  outFile <- paste("knives/Arrow/",ID,"_th=",th,"_f=",f,".txt",sep="")
  cat(msg,file=outFile,append=FALSE)
  
  # approximate weight (normalized size)
  vol <- th*(250*30 - 0.4*70*30 - 180*14)
  weight <- f*f*vol*d/1e6
  msg <- paste("\n\nLength: ",f*25,"cm, thickness: ",th,"mm\n",sep="")
  msg <- paste(msg,"Weight: ",round(weight,3)," kg.\n",sep="")
  cat(msg,file=outFile,append=TRUE)
  
  cat("\nFinished, result in",outFile,"\n")
}


# One single spline, not a straight line to the tip,
# Does not work aesthetically, do not pursue
#
# Writes out CAD points for LibreCAD and computes weight
#
# @param f scale factor. Applied to normal scale = 25cm long.
# @param d steel density kg/dm^3 = 1e6 kg/mm^3
# @param th thickness in mm
# @param ID name of knive
#
# Scale factor is applied only to length and width, not thickness.
#
knife_SmoothArrow <- function(f,th,d){
  
  msg <- "\n\nSpline through points (_not closed_):\n"
  msg <- paste(msg,f*250,",",f*15,"\n")
  msg <- paste(msg,f*180,",",f*25,"\n")
  msg <- paste(msg,f*140,",",f*23,"\n")
  msg <- paste(msg,f*35,",",f*29,"\n")
  msg <- paste(msg,f*10,",",f*27,"\n")
  msg <- paste(msg,0,",",f*15,"\n")
  msg <- paste(msg,f*10,",",f*3,"\n")
  msg <- paste(msg,f*35,",",f*1,"\n")
  msg <- paste(msg,f*140,",",f*7,"\n")
  msg <- paste(msg,f*180,",",f*5,"\n")
  msg <- paste(msg,f*250,",",f*15,"\n")
  
  msg <- paste(msg,"\n\nCircle:\n")
  msg <- paste(msg,f*15,",",f*15,"\n")
  msg <- paste(msg,"Radius = 2mm\n")
  
  ID <- "SmoothArrow"
  outFile <- paste("knives/Arrow/",ID,"_th=",th,"_f=",f,".txt",sep="")
  cat(msg,file=outFile,append=FALSE)
  
  # approximate weight (normalized size)
  vol <- th*(250*30 - 0.4*70*30 - 180*14)
  weight <- f*f*vol*d/1e6
  msg <- paste("\n\nLength: ",f*25,"cm, thickness: ",th,"mm\n",sep="")
  msg <- paste(msg,"Weight: ",round(weight,3)," kg.\n",sep="")
  cat(msg,file=outFile,append=TRUE)
  
  cat("\nFinished, result in",outFile,"\n")
}




# Slimmed down version of arrow, not as handle heavy.
# Normalized length: 25cm
# Thickness 8mm, weight = 241g
# Thickness 6mm, weight = 181g
#
#
# Writes out CAD points for LibreCAD and computes weight
#
# @param f scale factor. Applied to normal scale = 25cm long.
# @param d steel density kg/dm^3 = 1e6 kg/mm^3
# @param th thickness in mm
# @param ID name of knive
#
# Scale factor is applied only to length and width, not thickness.
#
knife_SlimArrow <- function(f,th,d){
  
  msg <- "\n\nLine1:\n"
  msg <- paste(msg,f*250,",",f*20,"\n")
  msg <- paste(msg,f*175,",",f*30,"\n")
  
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*175,",",f*30,"\n")
  msg <- paste(msg,f*90,",",f*27,"\n")
  msg <- paste(msg,f*30,",",f*32,"\n")
  msg <- paste(msg,f*5,",",f*31,"\n")
  msg <- paste(msg,0,",",f*23,"\n")
  msg <- paste(msg,0,",",f*17,"\n")
  msg <- paste(msg,f*5,",",f*9,"\n")
  msg <- paste(msg,f*30,",",f*8,"\n")
  msg <- paste(msg,f*90,",",f*13,"\n")
  msg <- paste(msg,f*175,",",f*10,"\n")
  
  msg <- paste(msg,"\n\nLine2:\n")
  msg <- paste(msg,f*175,",",f*10,"\n")
  msg <- paste(msg,f*250,",",f*20,"\n")
  
  msg <- paste(msg,"\n\nCircle:\n")
  msg <- paste(msg,f*12,",",f*20,"\n")
  msg <- paste(msg,"Radius = 2mm\n")
  
  ID <- "SlimArrow"
  outFile <- paste("knives/Arrow/",ID,"_th=",th,"_f=",f,".txt",sep="")
  cat(msg,file=outFile,append=FALSE)
  
  # approximate weight (normalized size)
  vol <- 181*(th/6)*(d/7.9)
  weight <- f*f*vol*d/1e6
  msg <- paste("\n\nLength: ",f*25,"cm, thickness: ",th,"mm\n",sep="")
  msg <- paste(msg,"Weight: ",round(weight,3)," kg.\n",sep="")
  cat(msg,file=outFile,append=TRUE)
  
  cat("\nFinished, result in",outFile,"\n")
}




# Slimmed down version of arrow, for 8mm thickness
# Normalized length: 24cm
# Thichness 8mm, weight = 
# Thickness 7mm, weight = 
#
#
# Writes out CAD points for LibreCAD and computes weight
#
# @param f scale factor. Applied to normal scale = 25cm long.
# @param d steel density kg/dm^3 = 1e6 kg/mm^3
# @param th thickness in mm
# @param ID name of knive
#
# Scale factor is applied only to length and width, not thickness.
#
knife_ThickArrow <- function(f,th,d){
  
  msg <- "\n\nTip layer:\n"
  msg <- paste(msg,"Line1:\n")
  msg <- paste(msg,f*250,",",f*25,"\n")
  msg <- paste(msg,f*190,",",f*34,"\n")
  
  msg <- paste(msg,"\n\nLine2:\n")
  msg <- paste(msg,f*190,",",f*16,"\n")
  msg <- paste(msg,f*250,",",f*25,"\n")
  
  msg <- paste(msg,"\n\nHandle layer\n:")
  msg <- paste(msg,"Spline through points:\n")
  msg <- paste(msg,f*190,",",f*34,"\n")
  msg <- paste(msg,f*160,",",f*32,"\n")
  msg <- paste(msg,f*40,",",f*38,"\n")
  msg <- paste(msg,f*15,",",f*38,"\n")
  msg <- paste(msg,10,",",f*36,"\n")
  msg <- paste(msg,10,",",f*14,"\n")
  msg <- paste(msg,f*15,",",f*12,"\n")
  msg <- paste(msg,f*40,",",f*12,"\n")
  msg <- paste(msg,f*160,",",f*18,"\n")
  msg <- paste(msg,f*190,",",f*16,"\n")
  
  msg <- paste(msg,"\n\nGrip hole:\n")
  msg <- paste(msg,"Circle:\n")
  msg <- paste(msg,f*20,",",f*25,"\n")
  msg <- paste(msg,"Radius = 2mm\n")
  
  ID <- "ThickArrow"
  outFile <- paste("knives/Arrow/",ID,"_th=",th,"_f=",f,".txt",sep="")
  cat(msg,file=outFile,append=FALSE)
  
  # approximate weight (normalized size)
  vol <- th*(250*15 + 10*4)
  weight <- f*f*vol*d/1e6
  msg <- paste("\n\nLength: ",f*24,"cm, thickness: ",th,"mm\n",sep="")
  msg <- paste(msg,"Weight: ",round(weight,3)," kg.\n",sep="")
  cat(msg,file=outFile,append=TRUE)
  
  cat("\nFinished, result in",outFile,"\n")
}





