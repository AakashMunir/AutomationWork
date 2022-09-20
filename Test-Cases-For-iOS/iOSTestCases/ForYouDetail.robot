*** Settings ***
Library  AppiumLibrary
Resource  ../iOSTestCasesResources/iOSSmokeTestCaseResources.robot




*** Test Cases ***

############# Post Fetch ###############

Test Case For Open The Fayvo
    Steps for open fayvo application

Test Case For GoTo For You Section
    tap on home button
    tap on for you category

Test Case For verify the arround you
    verify the arround you

Test Case For For You Banner verify
    For You Banner verify

#Test Case For For You Banner verify without internet
#    steps for For You Banner verify without internet
#
#Test Case For For You Banner verify after connected internet
#    steps for For You Banner verify after connected internet

Test Case For For You get the count of suggestion users
    get the count of suggestion users

Test Cases For For You get the name of sections
    steps to get the name of sections

Test Case For For You longpress different actions
    for you longpress report with guest mode
Test Case For For You longpress save with guest mode
    for you longpress save with guest mode


Test Case For For You Save Post Auth Mode
    Steps for login with email
    for you longpress save with Auth mode






