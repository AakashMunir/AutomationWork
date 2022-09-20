*** Settings ***
Resource  ../Resources/ReceiveVerificationCodeResources.robot

*** Test Cases ***
Test Case For Receive The Verification Code Missing Plus Sign (+)
    TC:1 For receive the verification code missing plus sign (+)
Test Case For Receive The Verification Code Missing Country Code
    TC:2 For receive the verification code missing country code
Test Case For Receive The Verification Code Incorrect Number
    TC:3 For receive the verification code incorrect number
Test Case For Receive Verification Code
    TC: For receive the verification code


