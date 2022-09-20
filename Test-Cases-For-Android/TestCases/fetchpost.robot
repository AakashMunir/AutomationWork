*** Settings ***
Library  AppiumLibrary
Resource  ../TestCasesResources/SmokeTestCaseResources.robot
Resource  ../CommonXpathsOrIDs/SmokeTestCaseXpathsOrIDs.robot

*** Test Cases ***
TestCaseForOpenTheFayvo
    Steps for open fayvo application

Test Case For verify the arround you
    verify the arround you
Test Case For Feed Category Refresh Call
    steps for friends category
Test Case For Feed Category Refresh Call without internet
    set network connection status  0
    Feed screen referesh call without internet
    close all applications
Test Case for feed category open applicatrion verification
    Steps for open fayvo application
    Feed screen categories without internet open application
Test Case for Guest Mode Verify
    Feed Guest mode
Test Case for connect internet and verify data
    set network connection status  2
    Swipe_down_for_friends_category
    Feed screen connect internet and verify data
Test Case for Auth mode verify
    Steps for login with email
    Feed screen with auth mode
Test Case for Feed screen post without internet open application
    set network connection status  0
    close application
    Steps for open fayvo application
    tap on home button
    tap on friends button
    Feed screen post without internet open application
Test Case For LongPress Like at Feed screen
    without inter like with longpress
Test Case For LongPress Comment at Feed screen
    Without internet Comment with longpress
Test Case For LongPress Report Post at Feed screen
    without internet Long Press report post
Test Case For LongPress Shere via Internel at Feed screen
    without internet Long press share via internal
    set network connection status  2
    sleep  5

Test Case For LongPress Functionality for Feed
    steps for get username from profile
    steps for long press functionality

Test Case for scroll top to bottom
    repeat keyword  5 times     Swipe_up_for_You_category
Test Case for scroll bottom to top
    tap on friends button
    verify the arround you
Test Case For entity shareing from feed
    entity shareing from feed
Test Case For check the fayved button
    check the fayved button
Test Case For verify username on post detail
    verify username on post detail

Test Case For Verify Post Time
    steps for verify post time
Test case for get token
    get token api
Test case for quick post create
    quick post create
Test Case For verify the post time after append the post
    verify the post time after append the post
Test Case For Verify the post name at feed
    Verify the post name at feed

Test Case for tap for each userstory and suggestion user
    tap for each userstory and suggestion user
Test Case For Each Category Functionality
    steps for each category functionality




Test Case for Block user then verify its posts at feed
    Block user then verify its posts at feed
Test Case for Follow the some one and verify his post are showing at feed screen
    Follow the some one and verify his post are showing at feed screen


