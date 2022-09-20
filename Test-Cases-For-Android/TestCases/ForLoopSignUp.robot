*** Settings ***
Library  AppiumLibrary
#Library  DataDriver     ./ExcelFiles/demo.csv
#Library     DataDriver      ../ExcelFiles/demo.csv
Resource  ../TestCasesResources/ForLoopSignUpResources.robot
#Resource  ../CommonXpathsOrIDs/SignupPath.robot
#Resource  ../ExcelPath/SignupPath.robot
#Library    ExcelLibrary
#Library   DataDriver     ../ExcelFiles/demo.xlsx     sheet_name=Sheet1
#Library    DataDriver    file=../ExcelFiles/demo.xlsx    sheet_name=Sheet1
#Resource  ../ExcelFiles/demo.xlsx     sheet_name=Sheet1
#Suite Setup  Steps for open fayvo application
#Test Template  Signup yaar

#*** Variables ***
#${file_path}        ./ExcelFiles/demo.xlsx

*** Test Cases ***
TestCaseForOpenTheFayvo
    Steps for open fayvo application

#1st user      ${username}   ${email}    ${phone}     ${password}
Sginup from sheet
        Signup with for loop
#        Signup yaar
#2nd user    habib126@gmail.com    3125522116      habib126      malik0313
#3rd user    habib127@gmail.com    3125522117      habib127      malik0313

#*** Keywords ***
#Signup yaar
#
#    FOR      ${i}        IN RANGE        2       5
#            ${excelusername}=    read excel cell     ${i}       1       Sheet1
#            log to console      excelusername=====>${excelusername}:
##            log to console  <<<<<<<<<<<<<------------------------------>>>>>>>>>>>>>>>>
#            ${excelemail}=    read excel cell     ${i}       2       Sheet1
#            log to console      excelusername=====>${excelemail}:
##            log to console  <<<<<<<<<<<<<------------------------------>>>>>>>>>>>>>>>>
#            ${excelphone}=    read excel cell     ${i}       3       Sheet1
#            log to console      excelphone=====>${excelphone}:
##            log to console  <<<<<<<<<<<<<------------------------------>>>>>>>>>>>>>>>>
#            ${excelpassword}=    read excel cell     ${i}       4       Sheet1
#            log to console      excelpassword=====>${excelpassword}:
#            log to console  <<<<<<<<<<<<<------------------------------>>>>>>>>>>>>>>>>
#    END






#    [Arguments]    ${username}    ${email}    ${phone}    ${password}
#    [Arguments]  ${username}    ${email}    ${phone}    ${password}
#    Steps for sign up with new email
#    enter email    ${email}
#    enter phone number    ${phone}
#    enter name and username     ${username}
#    create new password     ${password}
#    logout for new signup
#    log to console  ${username}
#    log to console  ${email}
#    log to console  ${phone}
#    log to console  ${password}