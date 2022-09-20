*** Settings ***
Resource    ../Resources/User_Friends_PostResources.robot

*** Test Cases ***

Test Case For Happy Scenario
    TC:1 Happy scenario
Test Case For Missing x-api-key
    TC:2 Missing x-api-key in the Header
#Test Case For Missing Token
#    TC:3 Missing Token in the Header
#Test Case For Wrong User-Agent
#    TC4: Wrong User Agent in the Header
