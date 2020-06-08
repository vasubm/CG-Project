# CG-Project
Image Colorization 

This is a project designed to convert black and white images to colour images. 

## Requirements
    Torch7 has to be installed. Refer the link http://torch.ch/docs/getting-started.html

## Steps to run:

    ./download_model.sh
    
Note that only PNG file format is supported.
    
    th colour.lua ./Inputs/<input-file-name>.png ./Outputs/<output-file-name>.png
