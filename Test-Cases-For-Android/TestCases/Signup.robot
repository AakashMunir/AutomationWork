*** Settings ***
Library  AppiumLibrary
Library  DataDriver     ../ExcelFiles/Signupstaging.xlsx
#Library     DataDriver      ../ExcelFiles/demo.csv
Resource  ../TestCasesResources/SignupResources.robot
#Resource  ../CommonXpathsOrIDs/SignupPath.robot
#Resource  ../ExcelPath/SignupPath.robot
#Library    ExcelLibrary
#Library   DataDriver     ../ExcelFiles/demo.xlsx     sheet_name=Sheet1
#Library    DataDriver    file=../ExcelFiles/demo.xlsx    sheet_name=Sheet1
#Resource  ../ExcelFiles/demo.xlsx     sheet_name=Sheet1
Suite Setup  Steps for open fayvo application
Test Template  Signup yaar

#*** Variables ***
#${file_path}        ./ExcelFiles/demo.xlsx

*** Test Cases ***


#1st user      ${username}   ${email}    ${phone}     ${password}
Sginup ${username}    ${email}    ${phone}    ${password}
#2nd user    habib126@gmail.com    3125522116      habib126      malik0313
#3rd user    habib127@gmail.com    3125522117      habib127      malik0313

*** Keywords ***
Signup yaar
#    [Arguments]    ${username}    ${email}    ${phone}    ${password}
    [Arguments]      ${username}    ${email}    ${phone}    ${password}
    Steps for sign up with new email
    enter email    ${email}
    enter phone number    ${phone}
    enter name and username     ${username}
    create new password     ${password}
    logout for new signup
    log to console  ${username}
    log to console  ${email}
    log to console  ${phone}
    log to console  ${password}