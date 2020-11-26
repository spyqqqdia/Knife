cat("Reading Viz.R")



#-------------------------------------------------------
# Viz:|
#-----------------------
#
# Balanced knife with weight concentrated at the ends
# Inspired by Vizeries with improved half spin grip.



# Writes out CAD points for LibreCAD and computes weight.
# Version with short tip (st).
#
# @param f scale factor. Applied to normal scale = 25cm long.
# @param d steel density kg/dm^3 = 1e6 kg/mm^3
# @param th thickness in mm
#
# Lenght of tip: 10.5 / 8 cm
#
# Standard length/thickness: 25cm, 6mm, weight: 252g
# Scale factor is applied only to length and width, not thickness.
#
knife_viz_25cm <- function(f,th,d){
  
  msg <- "\n\nLayer tip:\n"
  msg <- paste(msg,"\nLine 2 points:\n")
  msg <- paste(msg,f*180,",",f*40,"\n")
  msg <- paste(msg,f*260,",",f*28,"\n")
  msg <- paste(msg,f*155,",",f*10,"\n")

  msg <- paste(msg,"\nLayer middle:\n")
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*180,",",f*40,"\n")
  msg <- paste(msg,f*160,",",f*37,"\n")
  msg <- paste(msg,f*130,",",f*36,"\n")
  msg <- paste(msg,f*80,",",f*36,"\n")
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*155,",",f*10,"\n")
  msg <- paste(msg,f*140,",",f*16,"\n")
  msg <- paste(msg,f*120,",",f*18,"\n")
  msg <- paste(msg,f*105,",",f*18,"\n")
 
  
  msg <- paste(msg,"\nLayer handle:\n")
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*80,",",f*36,"\n")
  msg <- paste(msg,f*42,",",f*37.5,"\n")
  msg <- paste(msg,f*20,",",f*37,"\n")
  msg <- paste(msg,f*10,",",f*30,"\n")
  msg <- paste(msg,f*10,",",f*20,"\n")
  msg <- paste(msg,f*18,",",f*13,"\n")
  msg <- paste(msg,f*50,",",f*10,"\n")
  msg <- paste(msg,f*85,",",f*16,"\n")
  msg <- paste(msg,f*105,",",f*18,"\n")
  
  msg <- paste(msg,"\n\nCircle:\n")
  msg <- paste(msg,f*25,",",f*24,"\n")
  msg <- paste(msg,"Radius = 2.5mm\n")
  
  ID <- "Viz_25cm"
  outFile <- paste("knives/Viz/",ID,"_th=",th,"_f=",f,".txt",sep="")
  cat(msg,file=outFile,append=FALSE)
  
  # approximate weight (normalized size)
  weight <- f*f*th*d*20*250/1e6
  msg <- paste("\n\nLength: ",f*25,"cm, thickness: ",th,"mm\n",sep="")
  msg <- paste(msg,"Weight: ",round(weight,3)," kg.\n",sep="")
  cat(msg,file=outFile,append=TRUE)
  
  cat("\nFinished, result in",outFile,"\n")
}


# Writes out CAD points for LibreCAD and computes weight.
# Tip: 9.5 / 7.5 cm
#
# @param f scale factor. Applied to normal scale = 25cm long.
# @param d steel density kg/dm^3 = 1e6 kg/mm^3
# @param th thickness in mm
#
# Standard length/thickness: 25cm, 6mm, weight: 252g
# Scale factor is applied only to length and width, not thickness.
#
knife_viz_1_25cm <- function(f,th,d){
  
  msg <- "\n\nLayer tip:\n"
  msg <- paste(msg,"\nLine 2 points:\n")
  msg <- paste(msg,f*185,",",f*38,"\n")
  msg <- paste(msg,f*260,",",f*25,"\n")
  msg <- paste(msg,f*165,",",f*11,"\n")
  
  msg <- paste(msg,"\nLayer middle:\n")
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*185,",",f*38,"\n")
  msg <- paste(msg,f*165,",",f*36,"\n")
  msg <- paste(msg,f*140,",",f*35,"\n")
  msg <- paste(msg,f*80,",",f*35,"\n")
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*165,",",f*11,"\n")
  msg <- paste(msg,f*145,",",f*17,"\n")
  msg <- paste(msg,f*125,",",f*19,"\n")
  msg <- paste(msg,f*105,",",f*19,"\n")
  
  
  msg <- paste(msg,"\nLayer handle:\n")
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*80,",",f*35,"\n")
  msg <- paste(msg,f*42,",",f*36.5,"\n")
  msg <- paste(msg,f*20,",",f*36,"\n")
  msg <- paste(msg,f*10,",",f*30,"\n")
  msg <- paste(msg,f*10,",",f*20,"\n")
  msg <- paste(msg,f*18,",",f*13,"\n")
  msg <- paste(msg,f*50,",",f*11,"\n")
  msg <- paste(msg,f*85,",",f*17,"\n")
  msg <- paste(msg,f*105,",",f*19,"\n")
  
  msg <- paste(msg,"\n\nCircle:\n")
  msg <- paste(msg,f*24,",",f*24,"\n")
  msg <- paste(msg,"Radius = 2.5mm\n")
  
  ID <- "Viz_1_25cm"
  outFile <- paste("knives/Viz/",ID,"_th=",th,"_f=",f,".txt",sep="")
  cat(msg,file=outFile,append=FALSE)
  
  # approximate weight (normalized size)
  weight <- 0.5*f*f*th*d*(250*30+13*90)/1e6
  msg <- paste("\n\nLength: ",f*25,"cm, thickness: ",th,"mm\n",sep="")
  msg <- paste(msg,"Weight: ",round(weight,3)," kg.\n",sep="")
  cat(msg,file=outFile,append=TRUE)
  
  cat("\nFinished, result in",outFile,"\n")
}



# Writes out CAD points for LibreCAD and computes weight.
# Tip: 9 / 7.5 cm
#
# @param f scale factor. Applied to normal scale = 25cm long.
# @param d steel density kg/dm^3 = 1e6 kg/mm^3
# @param th thickness in mm
#
# Standard length/thickness: 25cm, 6mm, weight: 252g
# Scale factor is applied only to length and width, not thickness.
#
knife_viz_24cm <- function(f,th,d){
  
  msg <- "\n\nLayer tip:\n"
  msg <- paste(msg,"\nLine 2 points:\n")
  msg <- paste(msg,f*185,",",f*38,"\n")
  msg <- paste(msg,f*260,",",f*25,"\n")
  msg <- paste(msg,f*170,",",f*11,"\n")
  
  msg <- paste(msg,"\nLayer middle:\n")
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*185,",",f*38,"\n")
  msg <- paste(msg,f*165,",",f*36,"\n")
  msg <- paste(msg,f*140,",",f*35,"\n")
  msg <- paste(msg,f*80,",",f*35,"\n")
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*170,",",f*11,"\n")
  msg <- paste(msg,f*145,",",f*17,"\n")
  msg <- paste(msg,f*125,",",f*19,"\n")
  msg <- paste(msg,f*105,",",f*19,"\n")
  
  
  msg <- paste(msg,"\nLayer handle:\n")
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*80,",",f*35,"\n")
  msg <- paste(msg,f*52,",",f*36.5,"\n")
  msg <- paste(msg,f*30,",",f*36,"\n")
  msg <- paste(msg,f*20,",",f*30,"\n")
  msg <- paste(msg,f*20,",",f*20,"\n")
  msg <- paste(msg,f*28,",",f*13,"\n")
  msg <- paste(msg,f*60,",",f*11,"\n")
  msg <- paste(msg,f*85,",",f*17,"\n")
  msg <- paste(msg,f*105,",",f*19,"\n")
  
  msg <- paste(msg,"\n\nCircle:\n")
  msg <- paste(msg,f*33,",",f*24,"\n")
  msg <- paste(msg,"Radius = 2.5mm\n")
  
  ID <- "Viz_24cm"
  outFile <- paste("knives/Viz/",ID,"_th=",th,"_f=",f,".txt",sep="")
  cat(msg,file=outFile,append=FALSE)
  
  # approximate weight (normalized size)
  weight <- 0.5*f*f*th*d*(240*30+95*13)/1e6
  msg <- paste("\n\nLength: ",f*24,"cm, thickness: ",th,"mm\n",sep="")
  msg <- paste(msg,"Weight: ",round(weight,3)," kg.\n",sep="")
  cat(msg,file=outFile,append=TRUE)
  
  cat("\nFinished, result in",outFile,"\n")
}
  
  
# Writes out CAD points for LibreCAD and computes weight.
# Version with short tip (st).
#
# @param f scale factor. Applied to normal scale = 25cm long.
# @param d steel density kg/dm^3 = 1e6 kg/mm^3
# @param th thickness in mm
#
# Length of tip: 8 / 6 cm
#
# Standard length/thickness: 27cm, 8mm, weight: 270g
# Scale factor is applied only to length and width, not thickness.
#
knife_viz_27cm_two_sided <- function(f,th,d){
    
    msg <- "\n\nLayer rtip:\n"
    #
    msg <- paste(msg,"Line 2 points:\n")
    msg <- paste(msg,f*220,",",f*41,"\n")
    msg <- paste(msg,f*280,",",f*30,"\n")
    msg <- paste(msg,f*200,",",f*16,"\n")
    
    msg <- paste(msg,"\nLayer rneck:\n")
    #
    msg <- paste(msg,"Spline through points:\n")
    msg <- paste(msg,f*220,",",f*41,"\n")
    msg <- paste(msg,f*200,",",f*39,"\n")
    msg <- paste(msg,f*180,",",f*38,"\n")
    msg <- paste(msg,"Spline through points:\n")
    msg <- paste(msg,f*200,",",f*16,"\n")
    msg <- paste(msg,f*180,",",f*20,"\n")
    msg <- paste(msg,f*150,",",f*22,"\n")
    msg <- paste(msg,"Circle:\n")
    msg <- paste(msg,f*210,",",f*29,"\n")
    msg <- paste(msg,"Radius = 1.5mm\n")
    
    msg <- paste(msg,"\nLayer middle:\n")
    #
    msg <- paste(msg,"Line 2 points:\n")
    msg <- paste(msg,f*180,",",f*38,"\n")
    msg <- paste(msg,f*140,",",f*38,"\n") 
    msg <- paste(msg,"Line 2 points:\n")
    msg <- paste(msg,f*150,",",f*22,"\n")
    msg <- paste(msg,f*110,",",f*22,"\n")
    
    msg <- paste(msg,"\nLayer lneck:\n")
    #
    msg <- paste(msg,"Spline through points:\n")
    msg <- paste(msg,f*90,",",f*44,"\n")
    msg <- paste(msg,f*110,",",f*40,"\n")
    msg <- paste(msg,f*140,",",f*38,"\n")
    msg <- paste(msg,"Spline through points:\n")
    msg <- paste(msg,f*70,",",f*19,"\n")
    msg <- paste(msg,f*90,",",f*21,"\n")
    msg <- paste(msg,f*110,",",f*22,"\n")
    msg <- paste(msg,"Circle:\n")
    msg <- paste(msg,f*80,",",f*31,"\n")
    msg <- paste(msg,"Radius = 1.5mm\n")
    
    msg <- paste(msg,"\nLayer ltip:\n")
    #
    msg <- paste(msg,"Line 2 points:\n")
    msg <- paste(msg,f*90,",",f*44,"\n")
    msg <- paste(msg,f*10,",",f*30,"\n")
    msg <- paste(msg,f*70,",",f*19,"\n")
 

    
    ID <- "Viz_27cm_two_sided"
    outFile <- paste("knives/Viz/",ID,"_th=",th,"_f=",f,".txt",sep="")
    cat(msg,file=outFile,append=FALSE)
    
    # approximate weight (normalized size)
    weight <- f*f*th*d*270*16/1e6
    msg <- paste("\n\nLength: ",f*27,"cm, thickness: ",th,"mm\n",sep="")
    msg <- paste(msg,"Weight: ",round(weight,3)," kg.\n",sep="")
    cat(msg,file=outFile,append=TRUE)
    
    cat("\nFinished, result in",outFile,"\n")
}


# Writes out CAD points for LibreCAD and computes weight.
# Version with short tip (st).
#
# @param f scale factor. Applied to normal scale = 25cm long.
# @param d steel density kg/dm^3 = 1e6 kg/mm^3
# @param th thickness in mm
#
# Length of tip: 8 / 6 cm
#
# Standard length/thickness: 27cm, 6mm, weight: 220g
# Scale factor is applied only to length and width, not thickness.
#
knife_viz_27cm_6mm_2sided <- function(f,th,d){
  
  msg <- "\n\nLayer rtip:\n"
  #
  msg <- paste(msg,"Line 2 points:\n")
  msg <- paste(msg,f*220,",",f*42,"\n")
  msg <- paste(msg,f*280,",",f*30,"\n")
  msg <- paste(msg,f*200,",",f*15,"\n")
  
  msg <- paste(msg,"\nLayer rneck:\n")
  #
  msg <- paste(msg,"Spline through points:\n")
  msg <- paste(msg,f*220,",",f*42,"\n")
  msg <- paste(msg,f*200,",",f*39.5,"\n")
  msg <- paste(msg,f*180,",",f*38.5,"\n")
  msg <- paste(msg,"Spline through points:\n")
  msg <- paste(msg,f*200,",",f*15,"\n")
  msg <- paste(msg,f*180,",",f*20,"\n")
  msg <- paste(msg,f*150,",",f*21.5,"\n")
  msg <- paste(msg,"Circle:\n")
  msg <- paste(msg,f*210,",",f*29,"\n")
  msg <- paste(msg,"Radius = 2mm\n")
  
  msg <- paste(msg,"\nLayer middle:\n")
  #
  msg <- paste(msg,"Line 2 points:\n")
  msg <- paste(msg,f*180,",",f*38.5,"\n")
  msg <- paste(msg,f*140,",",f*38.5,"\n") 
  msg <- paste(msg,"Line 2 points:\n")
  msg <- paste(msg,f*150,",",f*21.5,"\n")
  msg <- paste(msg,f*110,",",f*21.5,"\n")
  
  msg <- paste(msg,"\nLayer lneck:\n")
  #
  msg <- paste(msg,"Spline through points:\n")
  msg <- paste(msg,f*90,",",f*45,"\n")
  msg <- paste(msg,f*110,",",f*40.5,"\n")
  msg <- paste(msg,f*140,",",f*38.5,"\n")
  msg <- paste(msg,"Spline through points:\n")
  msg <- paste(msg,f*70,",",f*18,"\n")
  msg <- paste(msg,f*90,",",f*20,"\n")
  msg <- paste(msg,f*110,",",f*21.5,"\n")
  msg <- paste(msg,"Circle:\n")
  msg <- paste(msg,f*80,",",f*31,"\n")
  msg <- paste(msg,"Radius = 2mm\n")
  
  msg <- paste(msg,"\nLayer ltip:\n")
  #
  msg <- paste(msg,"Line 2 points:\n")
  msg <- paste(msg,f*90,",",f*45,"\n")
  msg <- paste(msg,f*10,",",f*30,"\n")
  msg <- paste(msg,f*70,",",f*18,"\n")
  
  ID <- "Viz_27cm_6mm_2sided"
  outFile <- paste("knives/Viz/",ID,"_th=",th,"_f=",f,".txt",sep="")
  cat(msg,file=outFile,append=FALSE)
  
  # approximate weight (normalized size)
  weight <- f*f*th*d*270*17/1e6
  msg <- paste("\n\nLength: ",f*27,"cm, thickness: ",th,"mm\n",sep="")
  msg <- paste(msg,"Weight: ",round(weight,3)," kg.\n",sep="")
  cat(msg,file=outFile,append=TRUE)
  
  cat("\nFinished, result in",outFile,"\n")
}







# Writes out CAD points for LibreCAD and computes weight.
# Tip: 8 / 6.5 cm
#
# @param f scale factor. Applied to normal scale = 25cm long.
# @param d steel density kg/dm^3 = 1e6 kg/mm^3
# @param th thickness in mm
#
# Standard length/thickness: 24cm, 8mm, weight: 210g
# Scale factor is applied only to length and width, not thickness.
#
knife_viz_24cm_thick <- function(f,th,d){
  
  msg <- "\n\nLayer handle:\n"
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*170,",",f*34,"\n")
  msg <- paste(msg,f*150,",",f*32,"\n")
  msg <- paste(msg,f*130,",",f*31,"\n")
  msg <- paste(msg,f*40,",",f*36,"\n")
  msg <- paste(msg,f*15,",",f*35,"\n")
  msg <- paste(msg,f*10,",",f*32,"\n")
  msg <- paste(msg,f*10,",",f*18,"\n")
  msg <- paste(msg,f*15,",",f*15,"\n")
  msg <- paste(msg,f*40,",",f*14,"\n")
  msg <- paste(msg,f*120,",",f*16,"\n")
  msg <- paste(msg,f*170,",",f*16,"\n")
  msg <- paste(msg,f*185,",",f*15,"\n")
  
  msg <- paste(msg,"\n\nCircle:\n")
  msg <- paste(msg,f*22,",",f*25,"\n")
  msg <- paste(msg,"Radius = 2.5mm\n")
  
  
  msg <- paste(msg,"\nTip:\n")
  msg <- paste(msg,"\nLine 2 points:\n")
  msg <- paste(msg,f*185,",",f*15,"\n")
  msg <- paste(msg,f*250,",",f*24,"\n")
  msg <- paste(msg,f*170,",",f*34,"\n")
  
  ID <- "Viz_24cm_thick"
  outFile <- paste("knives/Viz/",ID,"_th=",th,"_f=",f,".txt",sep="")
  cat(msg,file=outFile,append=FALSE)
  
  # approximate weight (normalized size)
  weight <- 0.5*f*f*th*d*(26*240+125*5)/1e6 
  msg <- paste("\n\nLength: ",f*25,"cm, thickness: ",th,"mm\n",sep="")
  msg <- paste(msg,"Weight: ",round(weight,3)," kg.\n",sep="")
  cat(msg,file=outFile,append=TRUE)
  
  cat("\nFinished, result in",outFile,"\n")
}



# Writes out CAD points for LibreCAD and computes weight.
# Tip: 9 / 7 cm
#
# @param f scale factor. Applied to normal scale = 25cm long.
# @param d steel density kg/dm^3 = 1e6 kg/mm^3
# @param th thickness in mm
#
# Standard length/thickness: 25cm, 8mm, weight: 252g
# Scale factor is applied only to length and width, not thickness.
#
knife_viz_25cm_thick <- function(f,th,d){
  
  msg <- "\n\nlayer Tip:\n"
  msg <- paste(msg,"\nLine 2 points:\n")
  msg <- paste(msg,f*190,",",f*36,"\n")
  msg <- paste(msg,f*260,",",f*30,"\n")
  msg <- paste(msg,f*170,",",f*13,"\n")
  
  msg <- paste(msg,"\nLayer middle:\n")
  
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*190,",",f*36,"\n")
  msg <- paste(msg,f*170,",",f*34.7,"\n")
  msg <- paste(msg,f*140,",",f*33,"\n")
  msg <- paste(msg,f*80,",",f*33,"\n")
  
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*170,",",f*13,"\n")
  msg <- paste(msg,f*150,",",f*17.5,"\n")
  msg <- paste(msg,f*130,",",f*19,"\n")
  msg <- paste(msg,f*105,",",f*19,"\n")
  
  msg <- paste(msg,"\nLayer handle:\n")
  
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*80,",",f*33,"\n")
  msg <- paste(msg,f*42,",",f*34.5,"\n")
  msg <- paste(msg,f*20,",",f*34,"\n")
  msg <- paste(msg,f*10,",",f*28.5,"\n")
  msg <- paste(msg,f*10,",",f*20.5,"\n")
  msg <- paste(msg,f*10,",",f*32.5,"\n")
  msg <- paste(msg,f*18,",",f*15,"\n")
  msg <- paste(msg,f*50,",",f*13,"\n")
  msg <- paste(msg,f*85,",",f*17,"\n")
  msg <- paste(msg,f*105,",",f*19,"\n")
  
  msg <- paste(msg,"\n\nCircle:\n")
  msg <- paste(msg,f*22,",",f*24.25,"\n")
  msg <- paste(msg,"Radius = 2mm\n")
  
  ID <- "Viz_25cm_thick"
  outFile <- paste("knives/Viz/",ID,"_th=",th,"_f=",f,".txt",sep="")
  cat(msg,file=outFile,append=FALSE)
  
  # approximate weight (normalized size)
  weight <- f*f*th*d*(16*250)/1e6 
  msg <- paste("\n\nLength: ",f*25,"cm, thickness: ",th,"mm\n",sep="")
  msg <- paste(msg,"Weight: ",round(weight,3)," kg.\n",sep="")
  cat(msg,file=outFile,append=TRUE)
  
  cat("\nFinished, result in",outFile,"\n")
}



# Writes out CAD points for LibreCAD and computes weight.
# Tip: 8 / 6.5 cm
#
# @param f scale factor. Applied to normal scale = 25cm long.
# @param d steel density kg/dm^3 = 1e6 kg/mm^3
# @param th thickness in mm
#
# Standard length/thickness: 25cm, 8mm, weight: 237g
# Scale factor is applied only to length and width, not thickness.
#
knife_viz_25cm_thick_2sided <- function(f,th,d){
  
  msg <- "\n\nlayer middle:\n"
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*180,",",f*36,"\n")
  msg <- paste(msg,f*160,",",f*33,"\n")
  msg <- paste(msg,f*140,",",f*31.5,"\n")
  msg <- paste(msg,f*75,",",f*34,"\n")
  
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*90,",",f*12,"\n")
  msg <- paste(msg,f*110,",",f*15,"\n")
  msg <- paste(msg,f*130,",",f*16.5,"\n")
  msg <- paste(msg,f*195,",",f*14,"\n")
  
  msg <- paste(msg,"\n\nCircle:\n")
  msg <- paste(msg,f*187.4,",",f*25,"\n")
  msg <- paste(msg,"Radius = 2mm\n")
  
  msg <- paste(msg,"\n\nCircle:\n")
  msg <- paste(msg,f*82.6,",",f*23.6,"\n")
  msg <- paste(msg,"Radius = 2mm\n")
  
  
  msg <- paste(msg,"\nLayer TipR:\n")
  
  msg <- paste(msg,"\nLine 2 points:\n")
  msg <- paste(msg,f*180,",",f*36,"\n")
  msg <- paste(msg,f*260,",",f*24,"\n")
  msg <- paste(msg,f*195,",",f*14,"\n")
 
  
  msg <- paste(msg,"\nLayer TipL:\n")
  
  msg <- paste(msg,"\nLine 2 points:\n")
  msg <- paste(msg,f*75,",",f*34,"\n")
  msg <- paste(msg,f*10,",",f*24,"\n")
  msg <- paste(msg,f*90,",",f*12,"\n")
  
  ID <- "Viz_25cm_thick_2sided"
  outFile <- paste("knives/Viz/",ID,"_th=",th,"_f=",f,".txt",sep="")
  cat(msg,file=outFile,append=FALSE)
  
  # approximate weight (normalized size)
  weight <- f*f*th*d*(15*250)/1e6 
  msg <- paste("\n\nLength: ",f*25,"cm, thickness: ",th,"mm\n",sep="")
  msg <- paste(msg,"Weight: ",round(weight,3)," kg.\n",sep="")
  cat(msg,file=outFile,append=TRUE)
  
  cat("\nFinished, result in",outFile,"\n")
}








# Writes out CAD points for LibreCAD and computes weight.
# Tip: 8 / 6.5 cm
#
# @param f scale factor. Applied to normal scale = 25cm long.
# @param d steel density kg/dm^3 = 1e6 kg/mm^3
# @param th thickness in mm
#
# Standard length/thickness: 25cm, 8mm, weight: 252g
# Scale factor is applied only to length and width, not thickness.
#
knife_viz_25cm_thick_2sided_A <- function(f,th,d){
  
  msg <- "\n\nlayer middle:\n"
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*180,",",f*38,"\n")
  msg <- paste(msg,f*160,",",f*34.2,"\n")
  msg <- paste(msg,f*140,",",f*32.5,"\n")
  msg <- paste(msg,f*75,",",f*35,"\n")
  
  msg <- paste(msg,"\nSpline through points:\n")
  msg <- paste(msg,f*90,",",f*10,"\n")
  msg <- paste(msg,f*110,",",f*13.8,"\n")
  msg <- paste(msg,f*130,",",f*15.5,"\n")
  msg <- paste(msg,f*195,",",f*13,"\n")
  
  msg <- paste(msg,"\n\nCircle:\n")
  msg <- paste(msg,f*187.4,",",f*25,"\n")
  msg <- paste(msg,"Radius = 2mm\n")
  
  msg <- paste(msg,"\n\nCircle:\n")
  msg <- paste(msg,f*82.6,",",f*23,"\n")
  msg <- paste(msg,"Radius = 2mm\n")
  
  msg <- paste(msg,"\nLayer TipR:\n")
  
  msg <- paste(msg,"\nLine 2 points:\n")
  msg <- paste(msg,f*195,",",f*13,"\n")
  msg <- paste(msg,f*260,",",f*24,"\n")
  msg <- paste(msg,f*180,",",f*38,"\n")
  
  
  msg <- paste(msg,"\nLayer TipL:\n")
  
  msg <- paste(msg,"\nLine 2 points:\n")
  msg <- paste(msg,f*75,",",f*35,"\n")
  msg <- paste(msg,f*10,",",f*24,"\n")
  msg <- paste(msg,f*90,",",f*10,"\n")
  
  ID <- "Viz_25cm_thick_2sided_A"
  outFile <- paste("knives/Viz/",ID,"_th=",th,"_f=",f,".txt",sep="")
  cat(msg,file=outFile,append=FALSE)
  
  # approximate weight (normalized size)
  weight <- f*f*th*d*(16*250)/1e6 
  msg <- paste("\n\nLength: ",f*25,"cm, thickness: ",th,"mm\n",sep="")
  msg <- paste(msg,"Weight: ",round(weight,3)," kg.\n",sep="")
  cat(msg,file=outFile,append=TRUE)
  
  cat("\nFinished, result in",outFile,"\n")
}






  
 