Cell Tracking Image Analysis Pipeline 

Presented here is a pipeline to analyse images from the Sartorius Incucyte S3, to examine the effect of different drug treatments on cell motility. The pipeline consists of four steps:   
1. Organise the exported files from the incucyte into a coherent folder structure.  
2. Convert the individual images at each time-point into a single time-lapse image for the individual image regions within individual wells.
3. Drift correct all the time-lapse images using the "Correct 3D drift" plug-in in fiji.
4. Analyse the motility of the cells in the image using a bespoke python script.

Steps 1, 2, and 4 use bespoke jupyter notebooks written in Jupyter Lab specifically for the tasks outlined. In step 3, a bespoke ImageJ macro was created to automate the drift correction of the time-lapse images. 

In the following we outline how to use this pipeline to analyse the imaging data from a Sartorius Incucyte S3.

Set-up: 
As outlined above, the analysis pipeline makes use of both python and Fiji. The user will need to make sure that Fiji and anaconda are installed on their machines before running this code. The following links will take you to the pages where you can download the .exe files for both Fiji and Anaconda (which is used to run python). 
Fiji: https://imagej.net/software/fiji/downloads  
Anaconda: https://www.anaconda.com/download/success

Create your conda environment: 
Included in the repository above is the file: tracking_env.yaml.  
This file can be used to create the anaconda environment needed to run steps 1, 2, and 4 in the above pipeline. A step-by-step guide is now provided for how to generate the conda environment from a .yaml file. 

0. Make sure that anaconda is installed on your computer. 
1. Open the anaconda prompt.
   The anaconda prompt can be found by searching the program files of your computer, or in windows, by using the search feature.
2. Change the working directory of anaconda.
  In the author's experience, the smoothest way to create the conda environment from a .yaml file is to first change the directory of the anaconda prompt to the location of the .yaml file in your computer's directory. This can be done using the following code:

```
cd C:/users/JoeBloggs/Desktop/Mclay_2025_a
```
In the above, the section "C:/users/JoeBloggs/Desktop/Mclay_2025_a" should be substituted for the location to which you have downloaded this repository. 
