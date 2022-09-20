*** Settings ***
Library  AppiumLibrary
Resource  ../iOSTestCasesResources/iOSSmokeTestCaseResources.robot




*** Test Cases ***
Test Case For Open The Fayvo
    Steps for open fayvo application


############################################# Around You Test Cases #####################################
#
#Test Case For Don't Allow Action
#    tap on turn on your location
#    setting permissions
#    launch application
#    location permission allow
#
#
Test Case For Verify The Group Chat Banner
    verify the arround you

Test Case For Join The Talk
    tap on join chat

#Test Case For First Transition Screen
#    check the the first transition screen
#Test Case For Second Transition Screen
#    check the the second transition screen
#Test Case For Third Transition Screen
#    check the the third transition screen
#    verify message field

Test Case For Send The Message
    send the message
Test Case For Open The User Profile
    open the user profile
Test Case For Delete Message
    delete the message from goup chat
Test Case For Group Option verification
    open the option
    verify option sheet
Test case For Group Chat Detail
#    group user count external
    steps for group detail
    verify group detail screen
Test Case For Group User Count
    steps for group user count

Test Case For Report Groupe
#    tap on group image
    report the group
Test Case For Leave Group
    leave the group
Test Case For Other Zone
    other zone activities
Test Case For Scroll The Other Zone
    scroll the zones
#
############################################## Around You Test Cases #####################################
#
#
############################################ Story Test Cases #####################################

#Test Case For Discard Story
#    steps for discard story
#
#Test Case For Create Text Story
#    steps for create text story
#
#Test Case For Create Media Story
#    steps for create media story
#
#Test Case For Number Of Stories
#    steps for number of stories
#
#Test Case For Delete My Story
#    steps for delete my story
#
#Test Case For Check My Story is Empty or Not
#    steps for check empty my story
#
#Test Case For Count Sub Stories
#    steps for count sub stories
#
#Test Case For Report Story Background App
#    steps for report story background app
#
#Test Case For Check The Viewers
#    count the viewers
#
#Test Case For Open The User Profile From Story Detail
#    steps for open the user profile from story detail
#
#Test Case For My Story Showning ON First
#    steps for check my story should be on first
#
#Test Case For Follow The New User and Its Story Showing On Home
#    steps for follow the new user and its story showing on home

########################################### Story Test Cases #####################################