#System for opening all files from a .zip package for SWEN-261 in class testing purposes
#Instructions can be found below or on github.com/saf6260/SWEN261-AutoScript
#Author Scott Frauenknecht saf6260
echo "Bash Script starting for file control. Please standby."

#Unzipping the .zip extension from the current directory.
echo "Unzipping file"
for file in *.zip
do
  if [ -e "$file" ]
  then
    unzip -P webcheckers "$file" 
  else 
    clear
    echo "No .zip files in current directory."
    echo "Please move the .zip file into this directory."
    exit 1
  fi
done

#compiling project after unzip
echo "unzip complete. Moving into file directory and compiling project"
cd team-project-teamc-2.2 #For linux, change this to whatever the file unzips into
mvn compile

#opening tabs for game
google-chrome http://localhost:4567/
google-chrome --incognito http://localhost:4567/

#Opening the excel file for the testers
echo "opening excel file for use by testers"
cd etc/
start exec 'Acceptance Test Plan.xlsx'
cd ..

echo "App has compiled. Opening web pages."
echo "Please give the webpages one moment to refresh while project runs"

#executing the program
mvn exec:java
#when the testers end the exec with ^C, the terminal is cleared and displays a thank you message
clear
echo "Script complete. Thank you for testing!"
