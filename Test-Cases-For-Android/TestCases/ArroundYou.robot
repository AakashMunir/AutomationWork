*** Settings ***
Library  AppiumLibrary
Resource  ../TestCasesResources/SmokeTestCaseResources.robot
Resource  ../CommonXpathsOrIDs/SmokeTestCaseXpathsOrIDs.robot

*** Test Cases ***

Test Case For Open The Fayvo
    Steps for open fayvo application




#Test Case For Don't Allow Action
#    tap on turn on your location
#    setting permissions
#    launch application
#    location permission allow


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
    send the message for arround you
Test Case For Groupchat Scroll
    Scroll the group chat and verify chat and scroll button
Test Case For Open The User Profile
    open the user profile
Test Case For Delete Message
    delete the message from goup chat
Test Case For Group Option verification
    open the option
    verify option sheet
Test Case For Report Groupe
    open the option
    report the group
Test case For Group Chat Detail
    group user count external
    steps for group detail
    verify group detail screen
Test Case For Group User Count
    steps for group user count
Test Case For Leave Group
    leave the group
Test Case For Other Zone
    other zone activities








#Test Case For Close The Application
#    close application
