#!/bin/bash
#user interaction
echo "Hey User! You are welcome! "
echo "1- Python project"
echo "2- Bash project"
echo "You can test the script from various various locations in your system"
read -p "Please chose the project type you wish to do?  " project

if [[project == 1]]; then
 python
 break
 elif [[project == 2]]; then
 bash
 break
 else
    echo "Invalid choice, chose between 1 and 2"


#python project
python()
    #GUIDE
	#echo "This project collects the name of the project from the user, creates a folder and enters it. While in the folder, it sets up a new python environment which is later on activated. After being activated, the code checks for the availability of the requirements.txt file which contains all the installed libraries. If found, the file is installed else it displays a message telling the user that the fie doesn't exist."

#setting the environment
    read -p "Enter the name of your project" name
    directory = ("/home/kouam/Desktop/Project/$name")
    read -p "Enter the name of your virtual environment" venv_name
    mkdir -p $directory  #creates a directory with the name given by the user
    cd $directory  #enters the created directory
    python3 -m venv $venv_name  # creates a python environment
    source $venv_name/bin/activate # activates the python environment

    if [[ -f "requirements.txt" ]] then; #checks for the requirements.txt file
	pip install -r requirements.txt
    else
	echo "No requirement.txt file found"
    fi

#bash project
bash()
    # Project Instructions
	echo "Setup instructions"
	echo "To run a bash script, You need to know if the permission has been granted to the script for execution. \nThis is done using the command ls -l. If there is no 'x' on the user's part, then he has no permission.\nTo grant permission to the user for execution, he will simply use the command 'chmod u+x script_name' . \nAfter being sure of having the permission, he can run the script using './script_name' or bash script_name' "
	cat Readme.md
