*** Settings ***
Library  AppiumLibrary
Resource  ../TestCasesResources/SmokeTestCaseResources.robot
Resource  ../CommonXpathsOrIDs/SmokeTestCaseXpathsOrIDs.robot



*** Test Cases ***
#TestCaseForOpenTheFayvo
#    Steps for open fayvo application
########## Skip Sign Up ###############
Test Case For Open The Fayvo
    Steps for open fayvo application skip sign up

Test Cases For Skip Sign Up
    steps for skip sign up with categories
#    close all applications
########## Skip Sign Up ###############