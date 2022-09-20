*** Settings ***
Library  AppiumLibrary
Resource  ../iOSTestCasesResources/iOSSmokeTestCaseResources.robot
Resource  ../iOSCommonXpathsOrIDs/iOSSmokeTestCaseXpathsOrIDs.robot


*** Test Cases ***
Test Case For Open The Fayvo
    Steps for open fayvo application


###################### Thid not include in smoke #################
#Test Case For No Play Video
#    steps for no play video
###################### Thid not include in smoke #################

##################### This is for autoplay feature ####################
Test Case For Time Match From Post Detail Return
    log to console  Start Now For AutoPlay
    steps for time match from post detail return
Test Case For Sound Button Check
    steps for sound button check
Test Case For Internet Should Be Off and On Then Appicatiuon in Background and Close Then Verify Video
    steps for internet should be off and on then appicatiuon in background and close then verify video
Test Case For Open The Profile and Back To Home Then Verify Video
    steps for open the profile and back to home then verify video
Test Case For Open The Tray and Close The Tray Then Verify Video
    steps for open the tray and close the tray then verify video
Test Case For Open The Tray and Post a Comment Then Verify Video
    steps for open the tray and post a comment then verify video





Test Case For Play API Post Then Verify Video
    steps for play api post then verify video
Test Case For Saved API Post Then Verify Video
    steps for saved api post then verify video
Test Case For Removed API Post Then Verify Video
    steps for removed api post then verify video
    log to console  End Now For AutoPlay
##################### This is for autoplay feature ####################