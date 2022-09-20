*** Settings ***
Library  AppiumLibrary
Resource  ../iOSTestCasesResources/iOSSmokeTestCaseResources.robot




*** Test Cases ***

########## Skip Sign Up ###############
Test Case For Open The Fayvo
    Steps for open fayvo application


Test Case For loging with empty password screen
    steps for empty password screen
Test Case For loging with enter password and empty email
    steps for enter password and empty email
Test Case For loging with incorect email and correct password
    steps for incorect email and correct password
Test Case For loging with minimum username character
    steps for minimum username character
Test Case For loging with maximum username character
    steps for maximum username character
Test Case For loging with minimum password character
    steps for minimum password character
Test Case For loging with maximum password character
    steps for maximum password character
Test Case For loging with background app at login screen
    step for background app at login screen
Test Case For loging with corect email and correct password without internet
    steps for corect email and correct password without internet
Test Case For loging with corect email and correct password with internet
    steps for corect email and correct password with internet
Test Case For loging with remember me details
    stps for remember me details
Test Cases For loging with google
    steps for loging with google
Test Cases For check google sign up or login
    check the google email is already have account or not



Test Case For SignUp with Apple ID
    loging with Apple ID



