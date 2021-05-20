# Assignment 3 - Edge detection
**Christoffer Kramer**  
**05-03-2021**   

The purpose of this assignment is to use computer vision to extract specific features from images. In particular, we're going to see if we can find text. We are not interested in finding whole words right now; we'll look at how to find whole words in a coming class. For now, we only want to find language-like objects, such as letters and punctuation.  
Download and save the image at the link below:  

https://upload.wikimedia.org/wikipedia/commons/f/f4/%22We_Hold_These_Truths%22_at_Jefferson_Memorial_IMG_4729.JPG

Using the skills you have learned up to now, do the following tasks:  

- Draw a green rectangular box to show a region of interest (ROI) around the main body of text in the middle of the image. Save this as image_with_ROI.jpg.  

- Crop the original image to create a new image containing only the ROI in the rectangle. Save this as image_cropped.jpg.  

- Using this cropped image, use Canny edge detection to 'find' every letter in the image  

- Draw a green contour around each letter in the cropped image. Save this as image_letters.jpg  

## Methods
The script uses basic image manipulation to find a region of interest (ROI) and to crop the image. The user can specify the region of interest, by specifying how large the ROI rectangle should be from the center. This is done by specifying how many pixels the rectangle should be to the left, right, above, and below the center of the image. The script then uses canny edge detection (with gaussian blur) to find and draw contour lines. The threshold for Gaussian blur is set manually, with the default lower threshold being a pixel intensity of 100 and the upper threshold being 150.  

## Usage  
This should work on both Linux, Mac, and Windows. However, If you are running on a local windows machine, you should run it from a bash emulator such as git bash.  
**Step 1 - Clone repo:**
- open terminal
- Navigate to destination for repo
- type the following command
 ```console
 git clone https://github.com/Chris-Kramer/cv101_assignment_3.git  
 ```
**Step 2 - Navigate to folder:**
- Navigate to the folder "cv101_assignment_3".
```console
cd cv101_assignment_3
```  
**Step 3 - Run bash script**  
- Use the bash script _run-script.sh_ to set up environment and run the script:  
```console
bash run-script_assignment-3-cmk.sh
```  
The script will print out `DONE! THE CROPPED PICTURES AND THE PICTURE OF CONTOUR LINES ARE LOCATED IN THE FOLDER'output'` when it is done running. 

### Running on windows without a bash emulator
If you're running on a local windows machine, and don't have a bash emulator, you have to set up a virtual environment, activate it, install dependencies (requirements.txt), and then run the python script manually from the src folder.  

## Output
The output is three images which can be found in the folder "output". The default names are the following: 
- _image_with_ROI.jpg_ – The image with a green region of interest.
- _image_cropped.jpg_ – The cropped image.
- _image_letters.jpg_ – The image with contours.


## Parameters
This script takes 11 parameters. It has already been supplied with default values, but you are welcome to try and change the default parameters. I have added a photo called "test.jpg" under the data folder, you can use it if you want to try another picture.  

- `--image` This is the filename of the image. The image must be in the "data" folder.  
    - Default = jefferson_memorial.jpg  
- `--x_pixels_left` How many pixels to the left of center should the region of interest include?  
    - Default = 750  
- `--x_pixels_right` How many pixels to the right of center should the region of interest include?  
- Default = 700  
- `--y_pixels_up` How many pixels above the center should the region of interest include?  
    - Default = 750  
- `--y_pixels_down` How many pixels below the center should the region of interest include?  
    - Default = 1175  
- `--blur_kernel` The size of the blur kernel (Gaussian blur).  
    - Default = 5 (5x5)  
- `--lower_thresh` The lower threshold for Gaussian blur.  
    - Default = 100  
- `--upper_thresh` The upper threshhold for Gaussian blur.  
    - Default = 150
- `--roi_output` The filename for the outout image with ROI, the image will be located in the folder "output".  
    - Default = image_with_ROI.jpg  
- `--cropped_output` The filename for cropped output image. It will be located in the folder "output".  
    - Default = image_cropped.jpg  
- `--contour_output` The filename for the output image with contour lines. It will be located in the folder "output".  
    - Default = image_letters.jpg

Example:  
_With bash script_
```console
bash run-script_assignment-3-cmk.sh --image test.jpg --x_pixels_left 500 --x_pixels_right 500 --y_pixels_up 500 --y_pixels_down 500 --blur_kernel 3 --lower_thresh 150 --upper_thresh 200 --roi_output test_roi.jpg --cropped_output test_crop.jpg --contour_output contour_test.jpg
```  
_Without bash script_
```console
python assignment-3-cmk.py --image test.jpg --x_pixels_left 500 --x_pixels_right 500 --y_pixels_up 500 --y_pixels_down 500 --blur_kernel 3 --lower_thresh 150 --upper_thresh 200 --roi_output test_roi.jpg --cropped_output test_crop.jpg --contour_output contour_test.jpg
```  
