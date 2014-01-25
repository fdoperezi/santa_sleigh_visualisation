wd="d:/" 					#which ever directory you want as working directory
setwd(wd)					# set workind directory
file=read.csv("submission.csv")	#read the generated submission file into the a variablefactor(file$z1)
factor(file$z1)				#factorise according to a particular level
max(file$PresentId)			#you can check how many presents have been placed as of yet
slice=file[which(file$z1==(1074625)),]	#slice according to a particular level
plot(c(0,1000),c(0,1000),xlab=" x direction" ,ylab=" y direction",main=" top view simple visualisation")
rect(slice$x1,slice$y1,slice$x4,slice$y4,col="red")
