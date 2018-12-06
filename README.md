# SWEN261-Autoscript
System that automatically opens all of the information needed for testing during SWEN-261

## Execution
Create a zip file of your current project. If you're currently in SWEN-261 at RIT, complete this by running `mvn exec:exec@zip`. Once you have the zip file, place the zip and the `startScript.sh` file for the operating system you intend to run the script with (Sorry OSX this wont work for you) in the same directory. From there, through a bash terminal, run `./startScript.sh` The system will automatically look for any `.zip` extensions and unzip them, then open all of the windows necessary for execution. NOTE the system relies upon Google Chrome as an installed web browser on the system

### Bug issues
If any issues are encountered when running the script, please open up a PR. If you get the message "No .zip files found", it most likely means you did not put the script and the .zip in the same directory. Please check this before opening an issue.
