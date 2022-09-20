*** Settings ***
Library  RequestsLibrary
Library  Collections
Library  JSONLibrary
Library  String
Library  BuiltIn
Library  DateTime
Library    ExcelLibrary
Library  Process
Library  JSONLibrary




*** Variables ***
${base_url_for_token}     http://user.us-west-2.elasticbeanstalk.com/dev-test/
${base_url_for_profile}    https://api.fayvo.com/staging-v4-2/
#${deviceId}   1245
#${username}     sohaib
#${password}     smkhosa1
#${deviceName}   Ali Android
#${deviceType}   Android
${x-api-key}    5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30
#${vars}         {"key":"62623162981310518368"        "timestamp":"2021-08-24T12:57:30Z"}
#${user-agent}       aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554  apiVersion/4.3  FayvoClient, AmazonAPIGateway_lorb8s58n0
${user-agent}       aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554  apiVersion/4.3  FayvoClient, AmazonAPIGateway_lorb8s58n0

${file_path}        ./TestData/logindata.xlsx

*** Test Cases ***
Comment test case
    open excel document  ${file_path}   sheet_name=users
#    repeat keyword          1 times       TC:1 Getting tokens against multiple users through excel file
    repeat keyword           1 times       TC:2 hitting profile multiple times
#    repeat keyword      100 times       TC:3 Multiple Comments for API Post

*** Keywords ***

TC:1 Getting tokens against multiple users through excel file

    FOR    ${i}    IN RANGE    2    16
        ${excelusername}=    read excel cell     ${i}       1       users
        log to console      excelusername=====>${excelusername}:
        ${excelpassword}=    read excel cell     ${i}       2       users
        log to console      excelpassword=====>${excelpassword}:
        create session  mysession1  ${base_url_for_token}     verify=True
        ${header}=       create dictionary   User-Agent=${user-agent}    x-api-key=${x-api-key}      Content-Type=text/plain     device-info=aWxzYS1IUC1Qcm9Cb29rLTY1MC1HMTE=       security-token=ilsa-dev-team-fayvo-786
        ${params}=      create dictionary   username=${excelusername}        password=${excelpassword}
        log to console      params===>${params}
        ${response}=     post on session  mysession1     login-user?      params=${params}      headers=${header}
        log to console  ${response.status_code}
#        log to console  ${response.content}
        should be equal as strings  ${response.status_code}      200

        ${content_dic}=     evaluate     json.loads('''${response.content}''')      json
#        log to console  Content_dic =${content_dic}
        ${savedidtoken}    create list
        ${savedidtoken}=      get value from json  ${content_dic}     IdToken
        set global variable  ${savedidtoken}
#        log to console  this is the required token =${verification_code}[0]

        write excel cell     ${i}     3     ${savedidtoken}[0]   users
        log to console      token for ${excelusername} user is written in the excel cell
        save excel document  ${file_path}
#        sleep    3
    END