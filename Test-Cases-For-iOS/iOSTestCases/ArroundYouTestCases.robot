*** Settings ***
Library  AppiumLibrary
Resource  ../iOSTestCasesResources/iOSSmokeTestCaseResources.robot
Resource  ../iOSCommonXpathsOrIDs/iOSSmokeTestCaseXpathsOrIDs.robot


*** Test Cases ***

Test Case For Open The Fayvo
    Steps for open fayvo application



Test Case For Verify The Group Chat Banner
    verify the arround you
    Pull to refresh at home sreen
Test Case For User Count Before Join Chat
    user count before join chat

Test Case For Join The Talk
    tap on join chat

Test Case For Transition Screen
    check the the transition screen
Test Case For User Count After Join Chat
    user count after join chat



Test Case For Send The Message
    send the message
#Test Case For Open The User Profile
#    open the user profile
Test Case For Delete Message
    delete the message from goup chat
Test Case For Group Option verification
    open the option
    verify option sheet
Test case For Group Chat Detail
    steps for group detail
    verify group detail screen
Test Case For Group User Count
    steps for group user count

Test Case For Report Groupe
    tap on group option
    report the group
Test Case For Leave Group
    tap on image for group detail
    leave the group
Test Case For Other Zone
    other zone activities
Test Case For Scroll The Other Zone
    scroll the zones








#Test Case For Close The Application
#    close application
