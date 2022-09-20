*** Settings ***
Library  AppiumLibrary
Resource  ../iOSTestCasesResources/iOSSmokeTestCaseResources.robot




*** Test Cases ***

########## Skip Sign Up ###############
#Test Case For Open The Fayvo
#    Steps for open fayvo application skip sign up
#
#Test Cases For Skip Sign Up
#    steps for skip sign up with categories
#    close all applications
########## Skip Sign Up ###############

Test Case For Open The Fayvo
    Steps for open fayvo application

Test Cases For SignUp with incomplete email
    Steps for SignUp with incomplete email
Test Cases For SignUp with invalid phone
    Steps for SignUp with invalid phone
Test Cases For SignUp with contry code phone number
    Steps for SignUp with contry code phone number
Test Cases For SignUp with already exist email
    Steps for SignUp with already exist email
Test Cases For SignUp without internet correct email and correct phone nummber
    Steps for SignUp without internet correct email and correct phone nummber
Test Cases For SignUp with correct email and correct phone nummber
    Steps for SignUp with correct email and correct phone nummber
Test Cases For SignUp with invalid pin send
    Steps for SignUp with invalid pin send
Test Cases For SignUp without internet valid pin send
    Steps for SignUp without internet valid pin send
Test Cases For SignUp with valid pin send
    Steps for SignUp with valid pin send

Test Cases For Pin SignUp with Wrong Name
    steps for pin signup with wrong name
Test Cases For pin SignUp with Wrong Username
    steps for pin signup with wrong username
Test Cases For pin SignUp with Empty Name
    steps for google signup with empty name via pin
Test Cases For pin SignUp with Empty Username via pin
    steps for google signup with empty username via pin
Test Cases For pin SignUp with Already Exist Username via pin
    steps for google signup with already axist username via pin
Test Cases For pin SignUp without Internet via pin
    steps for google signup without internet via pin
Test Cases For pin SignUp with Corect Username and Name via pin
    steps for google signup with correct username and name via pin
# Password screen
Test Cases For Pin SignUp with less then 6 characters
    steps for Pin signup with less then 6 characters
Test Cases For Pin SignUp with greater then 25 characters password
    steps for Pin signup with greater then 25 characters password
Test Cases For Pin SignUp with wrong confirm password
    steps for Pin signup with wrong confirm password
Test Cases For Pin SignUp with without internet correct password
    steps for Pin signup with without internet correct password
Test Cases For Pin SignUp with correct password
    steps for Pin signup with correct password
# Date of Birth
Test Cases For pin SignUp with days
    steps for pin signup with days
Test Cases For pin SignUp with invalid dob
    steps for pin signup with invalid dob
Test Cases For pin SignUp with correct dob
    steps for pin signup with correct dob
Test Cases For pin SignUp with gender change dob
    steps for pin signup with gender change dob
Test Cases For pin SignUp without internet dob
    steps for pin signup without internet dob
Test Cases For pin SignUp with internet dob
    steps for pin signup with internet dob


# Contact Screen
Test Cases For Pin SignUp with count the contact checkmark
    steps for google signup with count the contact checkmark
Test Cases For Pin SignUp with unselect the contact user
    steps for google signup with unselect the contact user
#Test Cases For Google SignUp without internet skip
#    steps for google signup without internet skip
Test Cases For Pin SignUp with select the user individually
    steps for google signup with select the user individually
Test Cases For Pin SignUp with follow without internet
    steps for google signup with follow without internet
Test Cases For Pin SignUp follow with internet
    steps for google signup follow with internet
#Categories Screen
Test Cases For Pin SignUp with all categories name
    steps for google signup with all categories name
Test Cases For Pin SignUp with select categoires
    steps for google signup with select categoires
Test Cases For Pin SignUp without internet find people
    steps for google signup without internet find people
Test Cases For Pin SignUp with internet find people
    steps for google signup with internet find people
#Suggestion user Screen
Test Cases For Pin SignUp with count the contact checkmark for suggestion user
    steps for google signup with count the contact checkmark for suggestion user
Test Cases For Pin SignUp with unselect the contact user for suggestion user
    steps for google signup with unselect the contact user for suggestion user
#Test Cases For Google SignUp without internet skip for suggestion user
#    steps for google signup without internet skip for suggestion user
Test Cases For Pin SignUp with select the user individually for suggestion user
    steps for google signup with select the user individually for suggestion user
Test Cases For Pin SignUp with follow without internet for suggestion user
    steps for google signup with follow without internet for suggestion user
Test Cases For Pin SignUp follow with internet for suggestion user
    steps for google signup follow with internet for suggestion user
Test Case For Deactive User
    steps for deactive users

############################# Google SignUp ############################
Test Cases For Google SignUp
    go for google signup
Test Cases For Google SignUp with Wrong Name
    steps for google signup with wrong name
Test Cases For Google SignUp with Wrong Username
    steps for google signup with wrong username
Test Cases For Google SignUp with Empty Name
    steps for google signup with empty name
Test Cases For Google SignUp with Empty Username
    steps for google signup with empty username
Test Cases For Google SignUp with Already Exist Username
    steps for google signup with already axist username
Test Cases For Google SignUp without Internet
    steps for google signup without internet
Test Cases For Google SignUp with Corect Username and Name
    steps for google signup with correct username and name


# Password screen
Test Cases For Google SignUp with less then 6 characters
    steps for google signup with less then 6 characters
Test Cases For Google SignUp with greater then 25 characters password
    steps for google signup with greater then 25 characters password
Test Cases For Google SignUp with wrong confirm password
    steps for google signup with wrong confirm password
Test Cases For Google SignUp with without internet correct password
    steps for google signup with without internet correct password
Test Cases For Google SignUp with correct password
    steps for google signup with correct password


# Date of Birth
Test Cases For Google SignUp with days
    steps for google signup with days
Test Cases For Google SignUp with invalid dob
    steps for google signup with invalid dob
Test Cases For Google SignUp with correct dob
    steps for google signup with correct dob
Test Cases For Google SignUp with gender change dob
    steps for google signup with gender change dob
Test Cases For Google SignUp without internet dob
    steps for google signup without internet dob
Test Cases For Google SignUp with internet dob
    steps for google signup with internet dob
# Contact Screen
Test Cases For Google SignUp with count the contact checkmark
    steps for google signup with count the contact checkmark
Test Cases For Google SignUp with unselect the contact user
    steps for google signup with unselect the contact user
#Test Cases For Google SignUp without internet skip
#    steps for google signup without internet skip
Test Cases For Google SignUp with select the user individually
    steps for google signup with select the user individually
Test Cases For Google SignUp with follow without internet
    steps for google signup with follow without internet
Test Cases For Google SignUp follow with internet
    steps for google signup follow with internet
#Categories Screen
Test Cases For Google SignUp with all categories name
    steps for google signup with all categories name
Test Cases For Google SignUp with select categoires
    steps for google signup with select categoires
Test Cases For Google SignUp without internet find people
    steps for google signup without internet find people
Test Cases For Google SignUp with internet find people
    steps for google signup with internet find people
#Suggestion user Screen
Test Cases For Google SignUp with count the contact checkmark for suggestion user
    steps for google signup with count the contact checkmark for suggestion user
Test Cases For Google SignUp with unselect the contact user for suggestion user
    steps for google signup with unselect the contact user for suggestion user
#Test Cases For Google SignUp without internet skip for suggestion user
#    steps for google signup without internet skip for suggestion user
Test Cases For Google SignUp with select the user individually for suggestion user
    steps for google signup with select the user individually for suggestion user
Test Cases For Google SignUp with follow without internet for suggestion user
    steps for google signup with follow without internet for suggestion user
Test Cases For Google SignUp follow with internet for suggestion user
    steps for google signup follow with internet for suggestion user





