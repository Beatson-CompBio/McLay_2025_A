// Batch Drift Correction of the stack images. 

// // Authors: Ryan Corbyn 
// // Date: 17/11/2023

// Select the directory containing the images to analyse.
dir = getDirectory("Select folder of images");
// Get all of the File names from the folder. 
list = getFileList(dir);

print(lengthOf(list))

// Create a save directory for the images. 
savedir = File.getParent(dir) + "/Drift_Correction/";
File.makeDirectory(savedir);

 // Loop around all images in the folder. 
 for (i=0; i<lengthOf(list); i++) {
	// Use the bioformats to open up the .czi image file. 
	run("Bio-Formats Importer", "open=[" + dir + list[i] + "] autoscale color_mode=Default rois_import=[ROI manager] view=Hyperstack stack_order=XYZCT");
	
	// Run 3D drift correct on the image.
	run("Correct 3D drift", "channel=1 correct sub_pixel only=0 lowest=1 highest=1 max_shift_x=100 max_shift_y=100 max_shift_z=10");	
	
	selectWindow("registered time points");
	// Save the drift corrected image.
	saveAs("Tiff", savedir + substring(list[i], 0 , lengthOf(list[i])-4) + "_drift_corrected.tif");
	// Close window
	close();
	// Close the remaining windows
	selectWindow( list[i] );
	close();
 }