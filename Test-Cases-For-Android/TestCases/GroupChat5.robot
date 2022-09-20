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
Library  Selenium2Library
Library  String

*** Variables ***
${RANUSER}  Generate Random String  10  [LETTERS]
#${base_url}     http://user.us-west-2.elasticbeanstalk.com/dev-test/
#${base_url1}    https://api.fayvo.com/staging-v4-2/
${deviceId}     1245
#${username}     sohaib
#${password}     smkhosa1
${deviceName}   Ali Android
${deviceType}   Android
${x-api-key}    5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30
${vars}         {"key":"62623162981310518368"        "timestamp":"2021-08-24T12:57:30Z"}
${user-agent}       aws-sdk-android/2.18.0 Linux/4.14.116 Dalvik/2.1.0/0 en_PK appVersion/104, AmazonAPIGateway_m6t1fjtsb1

#${file_path}        ./TestData/loginusersforproduction.xlsx
${file_path}        ./ExcelFiles/loginusersforproduction.xlsx
${val}      1
#${local_db_key}     6676782

${base_url_for_token}     http://fayvo-user-production.us-west-2.elasticbeanstalk.com/dev-test/
${base_url_for_groupchat}    https://api.fayvo.com/v4-2/
#${x-api-key}    5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30
#${user-agent}       aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554  apiVersion/4.3  FayvoClient, AmazonAPIGateway_lorb8s58n0
##${local_db_key}     6676761
#${file_path}        ./TestData/logindata.xlsx

*** Test Cases ***
Group chat test case:
    open excel document  ${file_path}   sheet_name=users
    TC:2 sharing chat box

*** Keywords ***

TC:2 sharing chat box
        ${local_db_key}    Set Variable    ${876867876874654540944354}
        FOR      ${i}        IN RANGE        201       250
            ${excelusername}=    read excel cell     ${i}       1       users
            log to console      excelusername=====>${excelusername}:
            ${excelpassword}=    read excel cell     ${i}       2       users
            log to console      excelpassword=====>${excelpassword}:
            create session  mysession1  ${base_url_for_token}     verify=True
            ${header}=       create dictionary   User-Agent=${user-agent}    x-api-key=mdcngY0xrp7ipgSBJFy098tb0QLhRQQv7aorp6b7      Content-Type=text/plain     device-info=aWxzYS1IUC1Qcm9Cb29rLTY1MC1HMTE=       security-token=ilsa-dev-team-fayvo-786
            ${params}=      create dictionary   username=${excelusername}        password=${excelpassword}
            log to console      params===>${params}
            ${response}=     post on session  mysession1     login-user?      params=${params}      headers=${header}
            log to console  ${response.status_code}
#            log to console  ${response.content}
            should be equal as strings  ${response.status_code}      200

            ${content_dic}=     evaluate     json.loads('''${response.content}''')      json
            ${verification_code}    create list
            ${verification_code}=      get value from json  ${content_dic}     IdToken
            set global variable  ${verification_code}

            write excel cell     ${i}     3     ${verification_code}[0]   users
            save excel document     ${file_path}
#            log to console      token===${verification_code}[0]====
#            log to console      token for ${excelusername} user is written in the excel cell

           ${exceltoken}=    read excel cell     ${i}       3       users

           FOR     ${INDEX}        IN RANGE        1       81
                create session  mysession1  ${base_url_for_groupchat}     verify=True
#                ${header}=       create dictionary   X-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30      Content-Type=application/json       token=eyJraWQiOiJCcU04b3JIV2c5OXdQek1VSlJ1WXRmd1FsMXdrUnlJTWFYc3Z0SnRLelJzPSIsImFsZyI6IlJTMjU2In0.eyJzdWIiOiIzZTVjOGE1ZC02MDAwLTQzM2ItOGRjMS04MWIyZDI2NTQ4OWEiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiaXNzIjoiaHR0cHM6XC9cL2NvZ25pdG8taWRwLnVzLXdlc3QtMi5hbWF6b25hd3MuY29tXC91cy13ZXN0LTJfS2ZqUk1jNmtMIiwicGhvbmVfbnVtYmVyX3ZlcmlmaWVkIjpmYWxzZSwiY3VzdG9tOnVpZCI6ImFlY2I2NzdjLWNhMmQtNGI0NC1iMGE3LTkzMzdjNTE1MzRjOCIsImNvZ25pdG86dXNlcm5hbWUiOiI1NjQxMSIsInByZWZlcnJlZF91c2VybmFtZSI6Impvam8iLCJhdWQiOiI3MWxla211NXAyZ2EzNmVpYXNhYmx1bm12bSIsImV2ZW50X2lkIjoiZjExYmY0ODUtZWFjYS00MGFlLTkxOWMtMGMxOTMyMTI2ZmRhIiwidG9rZW5fdXNlIjoiaWQiLCJhdXRoX3RpbWUiOjE2NDUwMDU1OTcsInBob25lX251bWJlciI6Iis5MjMyMzMzMzMyMjMiLCJleHAiOjE2NDUwMDkxOTcsInVzZXIiOiJ7XCJpc19wcml2YXRlXCI6dHJ1ZSxcImlzX3ZlcmlmaWVkXCI6ZmFsc2UsXCJ0aHVtYlwiOlwiaHR0cDpcL1wvZDFsa3FzZHIzMHFlcHUuY2xvdWRmcm9udC5uZXRcL3N0YWdpbmc0XC91c2Vyc1wvdGh1bWJcL2FlY2I2NzdjLWNhMmQtNGI0NC1iMGE3LTkzMzdjNTE1MzRjOF8xNjQ0NDA5OTcyNjg3LmpwZ1wiLFwicGljdHVyZVwiOlwiaHR0cDpcL1wvZDFsa3FzZHIzMHFlcHUuY2xvdWRmcm9udC5uZXRcL3N0YWdpbmc0XC91c2Vyc1wvb3JpZ2luYWxcL2FlY2I2NzdjLWNhMmQtNGI0NC1iMGE3LTkzMzdjNTE1MzRjOF8xNjQ0NDA5OTcyNjg3LmpwZ1wiLFwiZ2VuZGVyXCI6XCJtYWxlXCIsXCJkb2JcIjpudWxsLFwid2Vic2l0ZVwiOlwiXCIsXCJlbWFpbFwiOlwiam9qb0BnbWFpbC5jb21cIixcInBob25lXCI6XCIrOTIzMjMzMzMzMjIzXCIsXCJmdWxsX25hbWVcIjpcImpvam9cIn0iLCJpYXQiOjE2NDUwMDU1OTd9.jPBNx4ilogt3UG1cCcSLWO9AVZ3mkErCndiTeeHaTYCIDBs0ZBrJzkS_fbHQcbqRhsm56_uxnlOmgZ7iEetYd-7z-1ivlaEpFMWymBV0wbmi9kFcNDEkF2AcdCjyllR0WTy8KnUhGu6fHV7CqnQlEwAFzjiQTABi19GIhMhfOEYSZ6ecSSwahm6KAAQxdR_Cy_UAbi3Xl8xxouvUq-0JcvtzD8_SjmrImfBYLSUp-4zYvbJTvvcH2v25mozdR6ftCuowuddAN5Dys1Fax0KUUCi7IqeWDWr41yABIUxV7NrZHgM5eIZ6uTjA1sIhHPROWa6gAh5T2KbCD3AT0Nns3A
                ${header}=       create dictionary   X-api-key=mdcngY0xrp7ipgSBJFy098tb0QLhRQQv7aorp6b7      Content-Type=application/json       token=${exceltoken}        User-Agent=:aws-sdk-android/2.18.0 Linux/4.14.116 Dalvik/2.1.0/0 en_PK appVersion/667 apiVersion/4.3 device-id/(d1d8c63edd48a969_1611773566517@android) fp0
#                log to console      After header set
                ${entity}=      create dictionary       type=text        content=SWYgdGhlIHByaXZhdGUgem9uZSBpcyBvbiB0aGUgdG9wICh3aGljaCBjYW4gYmUgYWNjZXNzZWQgaWYgdGhlIHVzZXIgaXMgcGh5c2ljYWxseSBwcmVzZW50IGluIHRoYXQgbG9jYXRpb24vdmljaW5pdHkpIGFuZCB0aGUgdXNlciBpcyBub3QgcGh5c2ljYWxseSBwcmVzZW50IGluIHRoYXQgcGFydGljdWxhciBsb2NhdGlvbi4gClRoZW4gZm9yIHRoYXQgdXNlciB0aGUgcHJpb3JpdHkgb2YgdGhlIHpvbmVzIHdpbGwgY2hhbmdlLgo
#                log to console      After entity set+++${entity}+++
                ${body}=      create dictionary   group_id=${val}        local_db_key=${local_db_key}      entity=${entity}
                ${body1}=       create dictionary  data=${body}
#                log to console      brfore dump=======${body1}=====
                ${body_data}=   evaluate     json.dumps(${body1})   json
#                ${response}=     post on session  mysession1     /group-chat/send-message      headers=${header}     data=${body_data}
                ${response}=     post on session  mysession1     /group-chat/send-message      headers=${header}     data=${body_data}
                should be equal as strings  ${response.status_code}      200
                ${local_db_key}=      evaluate  ${local_db_key}+1
                log to console  incremented value of local db key is==>${local_db_key}<==
            END
        END