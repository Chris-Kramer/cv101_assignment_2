#!/usr/bin/env bash

echo "Building environment"
#Environment name
VENVNAME=assignment3_cmk

#create env
python -m venv $VENVNAME 

# This makes sure that the bash script can be run from bash emulator on windows 
# Test if the folder bin in venvname exists
if [[ -f "/$VENVNAME/bin" ]]

    then
        source $VENVNAME/bin/activate
        echo "building for linux"
    
    else
        source $VENVNAME/Scripts/activate
fi

echo "Installing pip and requirements"
#Upgrade pip
# I'm using python first, since my pc have problems upgrading pip locally if I don't do it.
python -m pip install --upgrade pip

# Test if requirements exist and install it
test -f requirements.txt && pip install -r requirements.txt

cd src 

echo "Running script"
#run script
python assignment-3-cmk.py $@

echo "Deactivating and removing environment"
#deactivate environment
deactivate

#remove environment
cd ..

rm -rf $VENVNAME

#Print to terminal
echo "DONE! THE CROPPED PICTURES AND THE PICTURE OF CONTOUR LINES ARE LOCATED IN THE FOLDER'output'"