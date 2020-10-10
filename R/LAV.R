cat("Reading LAV.R")



#-------------------------------------------------------
# LAV:|
#-----------------------
#
# Balanced knife with weight concentrated at the ends
# Mixture of Arrows, Vizeries and LeFux Storcks



# Writes out CAD points for LibreCAD and computes weight
#
# @param f scale factor. Applied to normal scale = 25cm long.
# @param d steel density kg/dm^3 = 1e6 kg/mm^3
# @param th thickness in mm
#
# Standard length/thickness: 27cm, 6mm, weight: 252g
# Scale factor is applied only to length and width, not thickness.
#
knife_LAV_27cm <- function(f,th,d){
  
  msg <- "\n\nLayer tip:\n"
  msg <- paste(msg,"\nLine 2 points:\n")
  msg <- paste(msg,f*220,",",f*40,"\n")
  msg <- paste(msg,f*280,",",f*36,"\n")
  msg <- paste(msg,f*220,",",f*10,"\n")

  msg <- paste(msg,"\nLayer tip_slim:\n")
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*220,",",f*40,"\n")
  msg <- paste(msg,f*190,",",f*36,"\n")
  msg <- paste(msg,f*170,",",f*35,"\n")
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*220,",",f*10,"\n")
  msg <- paste(msg,f*190,",",f*18,"\n")
  msg <- paste(msg,f*170,",",f*20,"\n")
  
  msg <- paste(msg,"\nLayer middle:\n")
  msg <- paste(msg,"\nLine 2 points:\n")
  msg <- paste(msg,f*170,",",f*35,"\n")
  msg <- paste(msg,f*70,",",f*35,"\n")
  msg <- paste(msg,"\nLine 2 points:\n")
  msg <- paste(msg,f*170,",",f*20,"\n")
  msg <- paste(msg,f*100,",",f*20,"\n")
  
  
  msg <- paste(msg,"\nLayer handle:\n")
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*70,",",f*35,"\n")
  msg <- paste(msg,f*42,",",f*36.5,"\n")
  msg <- paste(msg,f*20,",",f*36,"\n")
  msg <- paste(msg,f*10,",",f*30,"\n")
  msg <- paste(msg,f*10,",",f*18,"\n")
  msg <- paste(msg,f*20,",",f*10,"\n")
  msg <- paste(msg,f*50,",",f*8,"\n")
  msg <- paste(msg,f*80,",",f*17,"\n")
  msg <- paste(msg,f*100,",",f*20,"\n")
  
  msg <- paste(msg,"\n\nCircle:\n")
  msg <- paste(msg,f*22,",",f*23.5,"\n")
  msg <- paste(msg,"Radius = 2mm\n")
  
  ID <- "LAV_27cm"
  outFile <- paste("knives/",ID,"_th=",th,"_f=",f,".txt",sep="")
  cat(msg,file=outFile,append=FALSE)
  
  # approximate weight (normalized size)
  vol <- th*5250
  weight <- f*f*vol*d/1e6
  msg <- paste("\n\nLength: ",f*27,"cm, thickness: ",th,"mm\n",sep="")
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
# Standard length/thickness: 27cm, 6mm, weight: 252g
# Scale factor is applied only to length and width, not thickness.
#
knife_LAV_26cm <- function(f,th,d){
  
  msg <- "\n\nLayer tip:\n"
  msg <- paste(msg,"\nLine 2 points:\n")
  msg <- paste(msg,f*220,",",f*40,"\n")
  msg <- paste(msg,f*280,",",f*36,"\n")
  msg <- paste(msg,f*220,",",f*10,"\n")
  
  msg <- paste(msg,"\nLayer tip_slim:\n")
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*220,",",f*40,"\n")
  msg <- paste(msg,f*190,",",f*36,"\n")
  msg <- paste(msg,f*170,",",f*35,"\n")
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*220,",",f*10,"\n")
  msg <- paste(msg,f*190,",",f*18,"\n")
  msg <- paste(msg,f*170,",",f*20,"\n")
  
  msg <- paste(msg,"\nLayer middle:\n")
  msg <- paste(msg,"\nLine 2 points:\n")
  msg <- paste(msg,f*170,",",f*35,"\n")
  msg <- paste(msg,f*80,",",f*35,"\n")
  msg <- paste(msg,"\nLine 2 points:\n")
  msg <- paste(msg,f*170,",",f*20,"\n")
  msg <- paste(msg,f*110,",",f*20,"\n")
  
  
  msg <- paste(msg,"\nLayer handle:\n")
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*80,",",f*35,"\n")
  msg <- paste(msg,f*52,",",f*36.5,"\n")
  msg <- paste(msg,f*30,",",f*36,"\n")
  msg <- paste(msg,f*20,",",f*30,"\n")
  msg <- paste(msg,f*20,",",f*18,"\n")
  msg <- paste(msg,f*30,",",f*10,"\n")
  msg <- paste(msg,f*60,",",f*8,"\n")
  msg <- paste(msg,f*90,",",f*17,"\n")
  msg <- paste(msg,f*110,",",f*20,"\n")
  
  msg <- paste(msg,"\n\nCircle:\n")
  msg <- paste(msg,f*32,",",f*23.5,"\n")
  msg <- paste(msg,"Radius = 2mm\n")
  
  ID <- "LAV_26cm"
  outFile <- paste("knives/",ID,"_th=",th,"_f=",f,".txt",sep="")
  cat(msg,file=outFile,append=FALSE)
  
  # approximate weight (normalized size)
  vol <- th*5100
  weight <- f*f*vol*d/1e6
  msg <- paste("\n\nLength: ",f*27,"cm, thickness: ",th,"mm\n",sep="")
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
# Standard length/thickness: 27cm, 6mm, weight: 252g
# Scale factor is applied only to length and width, not thickness.
#
# 2 sided knife with strike tip on both sides.
#
knife_LAV_2sided_27cm <- function(f,th,d){
  
  msg <- "\n\nLayer tip_right:\n"
  msg <- paste(msg,"\nLine 2 points:\n")
  msg <- paste(msg,f*220,",",f*40,"\n")
  msg <- paste(msg,f*280,",",f*36,"\n")
  msg <- paste(msg,f*220,",",f*10,"\n")
  
  msg <- paste(msg,"\nCircle:\n")
  msg <- paste(msg,f*220,",",f*26,"\n")
  msg <- paste(msg,"Radius = 2mm\n")
  
  msg <- paste(msg,"\n\nLayer neck_right:\n")
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*220,",",f*40,"\n")
  msg <- paste(msg,f*190,",",f*36,"\n")
  msg <- paste(msg,f*170,",",f*35,"\n")
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*220,",",f*10,"\n")
  msg <- paste(msg,f*190,",",f*18,"\n")
  msg <- paste(msg,f*170,",",f*20,"\n")
  
  msg <- paste(msg,"\n\nLayer middle:\n")
  msg <- paste(msg,"\nLine 2 points:\n")
  msg <- paste(msg,f*170,",",f*35,"\n")
  msg <- paste(msg,f*120,",",f*35,"\n")
  msg <- paste(msg,"\nLine 2 points:\n")
  msg <- paste(msg,f*170,",",f*20,"\n")
  msg <- paste(msg,f*120,",",f*20,"\n")
  
  msg <- paste(msg,"\n\nLayer neck_left:\n")
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*120,",",f*35,"\n")
  msg <- paste(msg,f*100,",",f*37,"\n")
  msg <- paste(msg,f*70,",",f*45,"\n")
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*120,",",f*20,"\n")
  msg <- paste(msg,f*100,",",f*19,"\n")
  msg <- paste(msg,f*70,",",f*15,"\n")
  
  msg <- paste(msg,"\n\nLayer tip_left:\n")
  msg <- paste(msg,"\nLine 2 points:\n")
  msg <- paste(msg,f*70,",",f*45,"\n")
  msg <- paste(msg,f*10,",",f*19,"\n")
  msg <- paste(msg,f*70,",",f*15,"\n")
  
  msg <- paste(msg,"\nCircle:\n")
  msg <- paste(msg,f*70,",",f*29,"\n")
  msg <- paste(msg,"Radius = 2mm\n")
  
  ID <- "LAV_2sided_27cm"
  outFile <- paste("knives/",ID,"_th=",th,"_f=",f,".txt",sep="")
  cat(msg,file=outFile,append=FALSE)
  
  # approximate weight (normalized size)
  vol <- th*5250
  weight <- f*f*vol*d/1e6
  msg <- paste("\n\nLength: ",f*27,"cm, thickness: ",th,"mm\n",sep="")
  msg <- paste(msg,"Weight: ",round(weight,3)," kg.\n",sep="")
  cat(msg,file=outFile,append=TRUE)
  
  cat("\nFinished, result in",outFile,"\n")
}
