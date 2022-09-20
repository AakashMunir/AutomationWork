#*** Settings ***
#Library  PyautoGui.py
##Resource  ..ExperimentTestCases/PyautoGui.robot
#
#*** Test Cases ***
#Test Case for check the window size
#    window size


*** Settings ***
#Library    RPA.Desktop.OperatingSystem
Library  ImageHorizonLibrary

#*** Tasks ***
*** Test Cases ***
#Get computer information
#    ${boot_time}=   Get Boot Time  as_datetime=${TRUE}
#    ${machine}=     Get Machine Name
#    ${username}=    Get Username
#    &{memory}=      Get Memory Stats
#    Log Many        ${memory}
Get info
    ${}