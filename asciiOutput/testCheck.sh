#This is an automated test sequence that, upon test suite completion, checks to see if the tests were successful or not and, if so, sends an ascii image from a .txt file to the command line
#@author Scott Frauenknecht saf6260
echo "Executing tests for webcheckers"

#This is the execution line. The first argument is the execution information for the test suite.
#The information after | is the key you are looking for. In my case, I just check for SUCCESS
#Change the execution and what you are looking for for the results of your test suite 
var=$(mvn clean test jacoco:report | grep -c SUCCESS)

#This is the check. Since all I need is SUCCESS to populate once, I just check for that
if [ $var != 0 ];
then
  #This is the success image that gets displayed to terminal
  cat success.txt
else 
  #These are the fail images that gets displayed to terminal
  cat fail.txt
  cat failTwo.txt
fi
