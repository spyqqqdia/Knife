cat("Reading StrainghtTop\n")


#======================================================
# StraightTop:|
#======================================================
#
#
# Normalized length: 27 cm
# Normalized weight  7mm: 290g, 6mm: 250


# Writes out CAD points for LibreCAD and computes weight
#
# @param f scale factor. Applied to normal scale = 25cm long.
# @param d steel density kg/dm^3 = 1e6 kg/mm^3
# @param th thickness in mm
#
# Symmetric, a little slimer in the middle and sooner.
#
knife_StraightTop <- function(f,th,d){
  
  msg <- "\n\nSpline through points (_not closed_):\n"
  msg <- paste(msg,f*270,",",f*30,"\n")
  msg <- paste(msg,f*90,",",f*30,"\n")
  msg <- paste(msg,f*30,",",f*32,"\n")
  msg <- paste(msg,f*5,",",f*51,"\n")
  msg <- paste(msg,0,",",f*30,"\n")
  msg <- paste(msg,0,",",f*10,"\n")
  msg <- paste(msg,f*30,",",f*4,"\n")
  msg <- paste(msg,f*90,",",f*10,"\n")
  msg <- paste(msg,f*180,",",f*10,"\n")
  msg <- paste(msg,f*270,",",f*30,"\n")
  
  msg <- paste(msg,"\n\nCircle:\n")
  msg <- paste(msg,f*14,",",f*18,"\n")
  msg <- paste(msg,"Radius = 2mm\n")
  
  ID <- "StraightTop"
  outFile <- paste("knives/",ID,"_th=",th,"_f=",f,".txt",sep="")
  cat(msg,file=outFile,append=FALSE)
  
  # approximate weight (normalized size)
  vol <- th*20*260
  weight <- f*f*vol*d/1e6
  msg <- paste("\n\nLength: ",f*23,"cm, thickness: ",th,"mm\n",sep="")
  msg <- paste(msg,"Weight: ",round(weight,3)," kg.\n",sep="")
  cat(msg,file=outFile,append=TRUE)
  
  cat("\nFinished, result in",outFile,"\n")
}



# Writes out CAD points for LibreCAD and computes weight
#
# @param f scale factor. Applied to normal scale = 25cm long.
# @param d steel density kg/dm^3 = 1e6 kg/mm^3
# @param th thickness in mm
#
# Symmetric, a little slimer in the middle and sooner.
#
knife_StraightTop1 <- function(f,th,d){
  
  msg <- "\n\nSpline through points (_not closed_):\n"
  msg <- paste(msg,f*250,",",f*30,"\n")
  msg <- paste(msg,f*90,",",f*30,"\n")
  msg <- paste(msg,f*30,",",f*32,"\n")
  msg <- paste(msg,f*5,",",f*51,"\n")
  msg <- paste(msg,0,",",f*30,"\n")
  msg <- paste(msg,0,",",f*10,"\n")
  msg <- paste(msg,f*30,",",f*5,"\n")
  msg <- paste(msg,f*90,",",f*10,"\n")
  msg <- paste(msg,f*180,",",f*10,"\n")
  msg <- paste(msg,f*265,",",f*25,"\n")
  
  msg <-paste(msg,"Line (2 points):\n")
  msg <- paste(msg,f*265,",",f*25,"\n")
  msg <- paste(msg,f*250,",",f*30,"\n")
  
  msg <- paste(msg,"\n\nCircle:\n")
  msg <- paste(msg,f*14,",",f*18,"\n")
  msg <- paste(msg,"Radius = 2mm\n")
  
  ID <- "StraightTop1"
  outFile <- paste("knives/",ID,"_th=",th,"_f=",f,".txt",sep="")
  cat(msg,file=outFile,append=FALSE)
  
  # approximate weight (normalized size)
  vol <- th*20*255
  weight <- f*f*vol*d/1e6
  msg <- paste("\n\nLength: ",f*23,"cm, thickness: ",th,"mm\n",sep="")
  msg <- paste(msg,"Weight: ",round(weight,3)," kg.\n",sep="")
  cat(msg,file=outFile,append=TRUE)
  
  cat("\nFinished, result in",outFile,"\n")
}
