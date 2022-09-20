*** Settings ***
Library  AppiumLibrary
Resource  ../iOSTestCasesResources/iOSSmokeTestCaseResources.robot
Resource  ../iOSCommonXpathsOrIDs/iOSSmokeTestCaseXpathsOrIDs.robot


*** Test Cases ***
Test Case For Open The Fayvo
    Steps for open fayvo application

Test Case For Login With Google link
    Steps for login with Google link

################################### Expression Tets Cases #########################################
Test Case For Expression Verification
    step for expression verification
Test Case For Expression Save Couunt And Undo Save
    steps for expression save couunt and undo save
Test Case For Expression Save Without Internet and Count Should Be Increase
    steps for expression save without internet and count should be increase
Test Case For Double tap Like Post
    steps for double tab like post
Test Case For Verify Expression In List
    steps for verify expression in list
Test Case For Undo The Expression
    steps for undo the expression
Test Case For Expression Made By User From AnyWhere In The Application
    steps for expression made by user from anywhere in the application
Test Case For Change Expression
    steps for change expression


################ guest Mode ############
#Test Case For Guest Mode Expression Verification
#    steps for guest mode expression verification



################################### Expression Tets Cases #########################################

Test Case For Close Application
    close application