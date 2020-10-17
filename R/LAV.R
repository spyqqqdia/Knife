cat("Reading LAV.R")



#-------------------------------------------------------
# LAV:|
#-----------------------
#
# Balanced knife with weight concentrated at the ends
# Mixture of Arrows, Vizeries and LeFux Storcks



# Writes out CAD points for LibreCAD and computes weight.
# Version with short tip (st).
#
# @param f scale factor. Applied to normal scale = 25cm long.
# @param d steel density kg/dm^3 = 1e6 kg/mm^3
# @param th thickness in mm
#
# Standard length/thickness: 27cm, 6mm, weight: 252g
# Scale factor is applied only to length and width, not thickness.
#
knife_st_LAV_27cm <- function(f,th,d){
  
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
  
  ID <- "LAV_st_27cm"
  outFile <- paste("knives/",ID,"_th=",th,"_f=",f,".txt",sep="")
  cat(msg,file=outFile,append=FALSE)
  
  # approximate weight (normalized size)
  weight <- f*f*0.240*(th/6)*(d/7.9)
  msg <- paste("\n\nLength: ",f*27,"cm, thickness: ",th,"mm\n",sep="")
  msg <- paste(msg,"Weight: ",round(weight,3)," kg.\n",sep="")
  cat(msg,file=outFile,append=TRUE)
  
  cat("\nFinished, result in",outFile,"\n")
}


# Writes out CAD points for LibreCAD and computes weight
# Version with short tip (st).
#
# @param f scale factor. Applied to normal scale = 25cm long.
# @param d steel density kg/dm^3 = 1e6 kg/mm^3
# @param th thickness in mm
#
# Standard length/thickness: 27cm, 6mm, weight: 252g
# Scale factor is applied only to length and width, not thickness.
#
knife_st_LAV_26cm <- function(f,th,d){
  
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
  
  ID <- "LAV_st_26cm"
  outFile <- paste("knives/",ID,"_th=",th,"_f=",f,".txt",sep="")
  cat(msg,file=outFile,append=FALSE)
  
  # approximate weight (normalized size)
  weight <- f*f*0.235*(th/6)*(d/7.9)
  msg <- paste("\n\nLength: ",f*27,"cm, thickness: ",th,"mm\n",sep="")
  msg <- paste(msg,"Weight: ",round(weight,3)," kg.\n",sep="")
  cat(msg,file=outFile,append=TRUE)
  
  cat("\nFinished, result in",outFile,"\n")
}





# Writes out CAD points for LibreCAD and computes weight
# Two sided version with short tip (st).
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
knife_LAV_st_2sided_27cm <- function(f,th,d){
  
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
  
  ID <- "LAV_st_2sided_27cm"
  outFile <- paste("knives/",ID,"_th=",th,"_f=",f,".txt",sep="")
  cat(msg,file=outFile,append=FALSE)
  
  # approximate weight (normalized size)
  weight <- f*f*0.240*(th/6)*(d/7.9)
  msg <- paste("\n\nLength: ",f*27,"cm, thickness: ",th,"mm\n",sep="")
  msg <- paste(msg,"Weight: ",round(weight,3)," kg.\n",sep="")
  cat(msg,file=outFile,append=TRUE)
  
  cat("\nFinished, result in",outFile,"\n")
}




# Writes out CAD points for LibreCAD and computes weight.
# Version with medium tip (mt).
#
# @param f scale factor. Applied to normal scale = 25cm long.
# @param d steel density kg/dm^3 = 1e6 kg/mm^3
# @param th thickness in mm
#
# Standard length/thickness: 27cm, 6mm, weight: 252g
# Scale factor is applied only to length and width, not thickness.
#
knife_mt_LAV_27cm <- function(f,th,d){
  
  msg <- "\n\nLayer tip:\n"
  msg <- paste(msg,"\nLine 2 points:\n")
  msg <- paste(msg,f*200,",",f*40,"\n")
  msg <- paste(msg,f*280,",",f*33,"\n")
  msg <- paste(msg,f*210,",",f*10,"\n")
  
  msg <- paste(msg,"\nLayer tip_neck:\n")
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*200,",",f*40,"\n")
  msg <- paste(msg,f*170,",",f*36,"\n")
  msg <- paste(msg,f*150,",",f*35,"\n")
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*210,",",f*10,"\n")
  msg <- paste(msg,f*180,",",f*18,"\n")
  msg <- paste(msg,f*160,",",f*20,"\n")
  
  msg <- paste(msg,"\nLayer middle:\n")
  msg <- paste(msg,"\nLine 2 points:\n")
  msg <- paste(msg,f*150,",",f*35,"\n")
  msg <- paste(msg,f*70,",",f*35,"\n")
  msg <- paste(msg,"\nLine 2 points:\n")
  msg <- paste(msg,f*160,",",f*20,"\n")
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
  msg <- paste(msg,f*24,",",f*23,"\n")
  msg <- paste(msg,"Radius = 3mm\n")
  
  ID <- "LAV_mt_27cm"
  outFile <- paste("knives/",ID,"_th=",th,"_f=",f,".txt",sep="")
  cat(msg,file=outFile,append=FALSE)
  
  # approximate weight (normalized size)
  weight <- f*f*0.240*(th/6)*(d/7.9)
  msg <- paste("\n\nLength: ",f*27,"cm, thickness: ",th,"mm\n",sep="")
  msg <- paste(msg,"Weight: ",round(weight,3)," kg.\n",sep="")
  cat(msg,file=outFile,append=TRUE)
  
  cat("\nFinished, result in",outFile,"\n")
}





# Writes out CAD points for LibreCAD and computes weight,
# version with long tip (lt).
#
# @param f scale factor. Applied to normal scale = 25cm long.
# @param d steel density kg/dm^3 = 1e6 kg/mm^3
# @param th thickness in mm
#
# Standard length/thickness: 27cm, 6mm, weight: 252g
# Scale factor is applied only to length and width, not thickness.
#
knife_LAV_lt_27cm <- function(f,th,d){
  
  msg <- "\n\nLayer tip:\n"
  msg <- paste(msg,"\nLine 2 points:\n")
  msg <- paste(msg,f*190,",",f*40,"\n")
  msg <- paste(msg,f*280,",",f*33,"\n")
  msg <- paste(msg,f*200,",",f*10,"\n")
  
  msg <- paste(msg,"\nLayer tip_neck:\n")
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*190,",",f*40,"\n")
  msg <- paste(msg,f*160,",",f*36,"\n")
  msg <- paste(msg,f*140,",",f*35,"\n")
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*200,",",f*10,"\n")
  msg <- paste(msg,f*170,",",f*17,"\n")
  msg <- paste(msg,f*150,",",f*19,"\n")
  
  msg <- paste(msg,"\nLayer middle:\n")
  msg <- paste(msg,"\nLine 2 points:\n")
  msg <- paste(msg,f*140,",",f*35,"\n")
  msg <- paste(msg,f*70,",",f*35,"\n")
  msg <- paste(msg,"\nLine 2 points:\n")
  msg <- paste(msg,f*150,",",f*19,"\n")
  msg <- paste(msg,f*105,",",f*19,"\n")
  
  
  msg <- paste(msg,"\nLayer handle:\n")
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*70,",",f*35,"\n")
  msg <- paste(msg,f*42,",",f*36.5,"\n")
  msg <- paste(msg,f*20,",",f*36,"\n")
  msg <- paste(msg,f*10,",",f*30,"\n")
  msg <- paste(msg,f*10,",",f*18,"\n")
  msg <- paste(msg,f*18,",",f*10,"\n")
  msg <- paste(msg,f*49,",",f*8,"\n")
  msg <- paste(msg,f*85,",",f*17,"\n")
  msg <- paste(msg,f*105,",",f*19,"\n")
  
  msg <- paste(msg,"\n\nCircle:\n")
  msg <- paste(msg,f*26,",",f*22.5,"\n")
  msg <- paste(msg,"Radius = 3mm\n")
  
  ID <- "LAV_lt_27cm"
  outFile <- paste("knives/",ID,"_th=",th,"_f=",f,".txt",sep="")
  cat(msg,file=outFile,append=FALSE)
  
  # approximate weight (normalized size)
  weight <- f*f*(d/7.9)*(th/6)*260
  msg <- paste("\n\nLength: ",f*27,"cm, thickness: ",th,"mm\n",sep="")
  msg <- paste(msg,"Weight: ",round(weight,3)," kg.\n",sep="")
  cat(msg,file=outFile,append=TRUE)
  
  cat("\nFinished, result in",outFile,"\n")
}




# Writes out CAD points for LibreCAD and computes weight.
# Version with medium tip (mt).
#
# @param f scale factor. Applied to normal scale = 25cm long.
# @param d steel density kg/dm^3 = 1e6 kg/mm^3
# @param th thickness in mm
#
# Standard length/thickness: 28cm, 6mm, weight: 260g
# Scale factor is applied only to length and width, not thickness.
#
knife_ltm_LAV_28cm <- function(f,th,d){
  
  msg <- "\n\nLayer tip:\n"
  msg <- paste(msg,"\nLine 2 points:\n")
  msg <- paste(msg,f*225,",",f*40,"\n")
  msg <- paste(msg,f*290,",",f*33,"\n")
  msg <- paste(msg,f*210,",",f*10,"\n")
  
  msg <- paste(msg,"\nLayer tip_neck:\n")
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*225,",",f*40,"\n")
  msg <- paste(msg,f*195,",",f*36,"\n")
  msg <- paste(msg,f*175,",",f*35,"\n")
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*210,",",f*10,"\n")
  msg <- paste(msg,f*180,",",f*18,"\n")
  msg <- paste(msg,f*160,",",f*20,"\n")
  
  msg <- paste(msg,"\nLayer middle:\n")
  msg <- paste(msg,"\nLine 2 points:\n")
  msg <- paste(msg,f*175,",",f*35,"\n")
  msg <- paste(msg,f*70,",",f*35,"\n")
  msg <- paste(msg,"\nLine 2 points:\n")
  msg <- paste(msg,f*160,",",f*20,"\n")
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
  msg <- paste(msg,f*24,",",f*23,"\n")
  msg <- paste(msg,"Radius = 3mm\n")
  
  ID <- "LAV_ltm_28cm"
  outFile <- paste("knives/",ID,"_th=",th,"_f=",f,".txt",sep="")
  cat(msg,file=outFile,append=FALSE)
  
  # approximate weight (normalized size)
  weight <- f*f*0.260*(th/6)*(d/7.9)
  msg <- paste("\n\nLength: ",f*27,"cm, thickness: ",th,"mm\n",sep="")
  msg <- paste(msg,"Weight: ",round(weight,3)," kg.\n",sep="")
  cat(msg,file=outFile,append=TRUE)
  
  cat("\nFinished, result in",outFile,"\n")
}







