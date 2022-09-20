*** Settings ***
Resource    ../Resources/EmailPhoneAPI1Resources.robot

*** Test Cases ***

Test Case For @ Missing
    TC:1 Missing @
Test Case For .Dot Missing
    TC:2 Missing .Dot
Test Case For Extra @
    TC:3 Extra @
Test Case For Extra .Dot
    TC:4 Extra .Dot
Test Case For Email Local Part Missing
    TC:5 Email local part missing
Test Case For Email Local Part Is Only Number
    TC:6 Email local part is numbering
Test Case For Email Domain is missing
    TC:7 Email Domain is missing
Test Case For Email Domain Should Not Contain Special Charactor
    TC:9 Email Domain should not contain special charactor
Test Case For Valid Email
    TC:10 Valid email
Test Case For Already Existing Email
    TC:11 Existing email
Test Case For Emoji In Email Field
    TC:12 Emoji in email field
Test Case For Domain is Fayvo.com
    TC:13 Domain is Fayvo.com
Test Case For Nudity
    TC:14 Domain and local part is xxx
Test Case For Href Link
    TC:14 local part is Href Link
Test Case Local Part In Urdu
    TC:15 Local part in urdu
Test Case For Max Length
    TC:16 Local part max length
Test Case For Change the Domain
    TC:17 Domain is Change

# For Phone Number
Test Case For Valid Phone Number
    TC:18 Enter Valid Phone Number
Test Case For Missaing Country Code
    TC:19 Missig Plus Country Code
Test Case For Lessthen 4 Digit
    TC:20 Lessthen 4 digit of phone number
Test Case For Equal to 4 Digit
    TC:21 Equal to 4 digit of phone number
Test Case For Morethen 12 Digit
    TC:22 Morethen 12 digit of phone number
Test Case For Equal to 12 Digit
    TC:23 Equal to 12 digit of phone number
Test Case For Enter 12 0 Digit
    TC:24 Enter 12 0 digit of phone number
Test Case For Enter 12 Special Digit
    TC:24 Enter 12 Special digit of phone number


