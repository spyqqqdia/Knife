cat("Reading MMY.R\n")



#======================================================
# MMYs:|
#======================================================
#
#
# Normalized length: 23 cm
# Normalized weight (7mm): 245g


#-------------------------------------------------------
# ASYMMETRICAL MMY:|
#-----------------------

# Writes out CAD points for LibreCAD and computes weight
#
# @param f scale factor. Applied to normal scale = 25cm long.
# @param d steel density kg/dm^3 = 1e6 kg/mm^3
# @param th thickness in mm
#
# Scale factor is applied only to length and width, not thickness.
#
knife_MMY <- function(f,th,d){
  
  msg <- "\n\nSpline through points (_not closed_):\n"
  msg <- paste(msg,f*230,",",f*12.5,"\n")
  msg <- paste(msg,f*200,",",f*18,"\n")
  msg <- paste(msg,f*140,",",f*24,"\n")
  msg <- paste(msg,f*70,",",f*22,"\n")
  msg <- paste(msg,f*5,",",f*24,"\n")
  msg <- paste(msg,0,",",f*12.5,"\n")
  msg <- paste(msg,f*5,",",f*1,"\n")
  msg <- paste(msg,f*10,",",f*0,"\n")
  msg <- paste(msg,f*70,",",f*3,"\n")
  msg <- paste(msg,f*140,",",f*1,"\n")
  msg <- paste(msg,f*200,",",f*7,"\n")
  msg <- paste(msg,f*230,",",f*12.5,"\n")
  
  msg <- paste(msg,"\n\nCircle:\n")
  msg <- paste(msg,f*12.5,",",f*12.5,"\n")
  msg <- paste(msg,"Radius = 2mm\n")
  
  ID <- "MMY"
  outFile <- paste("knives/",ID,"_th=",th,"_f=",f,".txt",sep="")
  cat(msg,file=outFile,append=FALSE)
  
  # approximate weight (normalized size)
  vol <- th*25*(230 - 0.125*140 - 0.5*70)
  weight <- f*f*vol*d/1e6
  msg <- paste("\n\nLength: ",f*23,"cm, thickness: ",th,"mm\n",sep="")
  msg <- paste(msg,"Weight: ",round(weight,3)," kg.\n",sep="")
  cat(msg,file=outFile,append=TRUE)
  
  cat("\nFinished, result in",outFile,"\n")
}


#-------------------------------------------------------
# Slim_MMY:|
#-----------------------

# Writes out CAD points for LibreCAD and computes weight
#
# @param f scale factor. Applied to normal scale = 25cm long.
# @param d steel density kg/dm^3 = 1e6 kg/mm^3
# @param th thickness in mm
#
# Symmetric, a little slimer in the middle and sooner.
#
knife_Slim_MMY <- function(f,th,d){
  
  msg <- "\n\nSpline through points (_not closed_):\n"
  msg <- paste(msg,f*230,",",f*12.5,"\n")
  msg <- paste(msg,f*200,",",f*17,"\n")
  msg <- paste(msg,f*140,",",f*23,"\n")
  msg <- paste(msg,f*50,",",f*21,"\n")
  msg <- paste(msg,f*5,",",f*24,"\n")
  msg <- paste(msg,0,",",f*12.5,"\n")
  msg <- paste(msg,f*5,",",f*1,"\n")
  msg <- paste(msg,f*10,",",f*0,"\n")
  msg <- paste(msg,f*50,",",f*4,"\n")
  msg <- paste(msg,f*140,",",f*2,"\n")
  msg <- paste(msg,f*200,",",f*8,"\n")
  msg <- paste(msg,f*230,",",f*12.5,"\n")
  
  msg <- paste(msg,"\n\nCircle:\n")
  msg <- paste(msg,f*12.5,",",f*12.5,"\n")
  msg <- paste(msg,"Radius = 2mm\n")
  
  ID <- "Slim_MMY"
  outFile <- paste("knives/",ID,"_th=",th,"_f=",f,".txt",sep="")
  cat(msg,file=outFile,append=FALSE)
  
  # approximate weight (normalized size)
  vol <- th*25*(230 - 0.125*140 - 0.5*70)
  weight <- f*f*vol*d/1e6
  msg <- paste("\n\nLength: ",f*23,"cm, thickness: ",th,"mm\n",sep="")
  msg <- paste(msg,"Weight: ",round(weight,3)," kg.\n",sep="")
  cat(msg,file=outFile,append=TRUE)
  
  cat("\nFinished, result in",outFile,"\n")
}




#-------------------------------------------------------
# Viz_MMY:|
#-----------------------

# Writes out CAD points for LibreCAD and computes weight
#
# @param f scale factor. Applied to normal scale = 25cm long.
# @param d steel density kg/dm^3 = 1e6 kg/mm^3
# @param th thickness in mm
#
# Symmetric, a little slimer in the middle and sooner.
#
knife_Viz_MMY <- function(f,th,d){
  
  msg <- "\n\nSpline through points (_not closed_):\n"
  msg <- paste(msg,f*230,",",f*12.5,"\n")
  msg <- paste(msg,f*200,",",f*17,"\n")
  msg <- paste(msg,f*140,",",f*23,"\n")
  msg <- paste(msg,f*50,",",f*21,"\n")
  msg <- paste(msg,f*5,",",f*24,"\n")
  msg <- paste(msg,0,",",f*12.5,"\n")
  msg <- paste(msg,f*5,",",f*1,"\n")
  msg <- paste(msg,f*10,",",f*0,"\n")
  msg <- paste(msg,f*50,",",f*2,"\n")
  msg <- paste(msg,f*140,",",f*2,"\n")
  msg <- paste(msg,f*200,",",f*8,"\n")
  msg <- paste(msg,f*230,",",f*12.5,"\n")
  
  msg <- paste(msg,"\n\nCircle:\n")
  msg <- paste(msg,f*12.5,",",f*12.5,"\n")
  msg <- paste(msg,"Radius = 2mm\n")
  
  ID <- "Viz_MMY"
  outFile <- paste("knives/",ID,"_th=",th,"_f=",f,".txt",sep="")
  cat(msg,file=outFile,append=FALSE)
  
  # approximate weight (normalized size)
  vol <- th*25*(230 - 0.125*140 - 0.5*70)
  weight <- f*f*vol*d/1e6
  msg <- paste("\n\nLength: ",f*23,"cm, thickness: ",th,"mm\n",sep="")
  msg <- paste(msg,"Weight: ",round(weight,3)," kg.\n",sep="")
  cat(msg,file=outFile,append=TRUE)
  
  cat("\nFinished, result in",outFile,"\n")
}


# Writes out CAD points for LibreCAD and computes weight
#
# @param f scale factor. Applied to normal scale = 23cm long.
# @param d steel density kg/dm^3 = 1e6 kg/mm^3
# @param th thickness in mm
#
# Symmetric, a little slimmer in the middle and sooner.
#
knife_SlimViz_MMY <- function(f,th,d){
  
  msg <- "\n\nSpline through points (_not closed_):\n"
  msg <- paste(msg,f*230,",",f*12.5,"\n")
  msg <- paste(msg,f*200,",",f*16,"\n")
  msg <- paste(msg,f*120,",",f*23,"\n")
  msg <- paste(msg,f*50,",",f*21,"\n")
  msg <- paste(msg,f*5,",",f*24,"\n")
  msg <- paste(msg,0,",",f*12.5,"\n")
  msg <- paste(msg,f*5,",",f*1,"\n")
  msg <- paste(msg,f*10,",",f*0,"\n")
  msg <- paste(msg,f*50,",",f*2,"\n")
  msg <- paste(msg,f*120,",",f*2,"\n")
  msg <- paste(msg,f*200,",",f*9,"\n")
  msg <- paste(msg,f*230,",",f*12.5,"\n")
  
  msg <- paste(msg,"\n\nCircle:\n")
  msg <- paste(msg,f*12.5,",",f*12.5,"\n")
  msg <- paste(msg,"Radius = 2mm\n")
  
  ID <- "SlimViz_MMY"
  outFile <- paste("knives/",ID,"_th=",th,"_f=",f,".txt",sep="")
  cat(msg,file=outFile,append=FALSE)
  
  # approximate weight (normalized size)
  vol <- th*17*230
  weight <- f*f*vol*d/1e6
  msg <- paste("\n\nLength: ",f*23,"cm, thickness: ",th,"mm\n",sep="")
  msg <- paste(msg,"Weight: ",round(weight,3)," kg.\n",sep="")
  cat(msg,file=outFile,append=TRUE)
  
  cat("\nFinished, result in",outFile,"\n")
}


