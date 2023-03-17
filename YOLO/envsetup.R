 
# list packages that will be needed
pacakges <- c("jsonlite","httr","zip", "imager", "magick", "tidyverse", "magrittr","reticulate")

# install those packages that you dont have yet
install.packages( 
  setdiff(pacakges,installed.packages()[,1] )
)

# 

if("reticualte" %in% setdiff(pacakges,installed.packages()[,1] )){
  print("never used reticulate? you may have to install python or link your existing python interpreter to Rstudio ")
  print("Install python or Anaconda or zip the files manually")
  
}  

# Set the name of your colab project
projectName <- "cidaris"

# ask R to fetch the path to where your script is - RUN if you have manually unzipped the repo on your machine
wd <- dirname(rstudioapi::getSourceEditorContext()$path)

# or type it in manually -- DO not RUN if you haven't typed the pathway
      # wd <- "~/temp/DSCRU_AI-main"
      # dir.create(wd) create the directory of you dont have it yet
setwd(wd)

# folders:
# this folder will contains the files that you will have to upload to Colab
paste0(wd,"/yolov8files") -> for_yolo_files
dir.create(for_yolo_files) # make the dir if you haven't 
# this is the folder where your Biigle report have to go
paste0(wd, "/reports") -> reports_folder
dir.create(reports_folder) # # make the dir if you haven't 
# this folder will be used later once you have made predictiosn with your CNN
paste0(wd, "/YoloResults") -> yolo_results
 dir.create(yolo_results) # # make the dir if you haven't 
# this folder will be used later when uploading annotations back to Biigle
paste0(wd, "/taxonomy") -> taxonomy_dir
dir.create(taxonomy_dir) # # make the dir if you haven't 


