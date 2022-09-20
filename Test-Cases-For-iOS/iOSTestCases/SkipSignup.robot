*** Settings ***
Library  AppiumLibrary
Resource  ../iOSTestCasesResources/iOSSmokeTestCaseResources.robot




*** Test Cases ***
Test Case For Open The Fayvo
    Steps for open fayvo application skip sign up

Test Cases For Skip Sign Up
    steps for skip sign up with categories