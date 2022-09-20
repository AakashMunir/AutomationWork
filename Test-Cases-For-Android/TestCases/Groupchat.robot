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

#${file_path}        ./TestData/logindata.xlsx
${file_path}        ./ExcelFiles/logindata.xlsx
${val}      11
#${local_db_key}     6676782

${base_url_for_token}     http://user.us-west-2.elasticbeanstalk.com/dev-test/
${base_url_for_groupchat}    https://api.fayvo.com/staging-v4-2/group-chat/
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
           ${local_db_key}    Set Variable    ${5435435357843}
           Log to console    current local db key is ==>: ${local_db_key}:<==
           FOR     ${INDEX}        IN RANGE        1       5
                log to console      brfore create session
                create session  mysession1  ${base_url_for_groupchat}     verify=True
                log to console      After create session
                ${header}=       create dictionary   X-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30      Content-Type=application/json       token=eyJraWQiOiJCcU04b3JIV2c5OXdQek1VSlJ1WXRmd1FsMXdrUnlJTWFYc3Z0SnRLelJzPSIsImFsZyI6IlJTMjU2In0.eyJzdWIiOiJkNGMyNGViYi1mODNjLTQwOTktYTQ1Ny02ZWE4ZjJhOGYxOTIiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiaXNzIjoiaHR0cHM6XC9cL2NvZ25pdG8taWRwLnVzLXdlc3QtMi5hbWF6b25hd3MuY29tXC91cy13ZXN0LTJfS2ZqUk1jNmtMIiwicGhvbmVfbnVtYmVyX3ZlcmlmaWVkIjp0cnVlLCJjdXN0b206dWlkIjoiNzUwY2ViZmYtMTliMC00OTFiLThjZmMtYWE3M2IyYTcyM2VkIiwiY29nbml0bzp1c2VybmFtZSI6IjU2NDU1IiwicHJlZmVycmVkX3VzZXJuYW1lIjoic2hlcmF6IiwiYXVkIjoiNzFsZWttdTVwMmdhMzZlaWFzYWJsdW5tdm0iLCJldmVudF9pZCI6ImY2MmU2MGNmLTI4MGEtNDkxZi04Yzg1LTgwNDlhYTViYTdkMiIsInRva2VuX3VzZSI6ImlkIiwiYXV0aF90aW1lIjoxNjQ1MDAyNzE3LCJwaG9uZV9udW1iZXIiOiIrOTIzMTU0ODg4NTk1IiwiZXhwIjoxNjQ1MDA2MzE3LCJ1c2VyIjoie1wiaXNfcHJpdmF0ZVwiOmZhbHNlLFwiaXNfdmVyaWZpZWRcIjpmYWxzZSxcInRodW1iXCI6XCJodHRwOlwvXC9kMWxrcXNkcjMwcWVwdS5jbG91ZGZyb250Lm5ldFwvc3RhZ2luZzRcL3VzZXJzXC90aHVtYlwvNzUwY2ViZmYtMTliMC00OTFiLThjZmMtYWE3M2IyYTcyM2VkXzE2NDQzMjQ1NjM0NTAuanBnXCIsXCJwaWN0dXJlXCI6XCJodHRwOlwvXC9kMWxrcXNkcjMwcWVwdS5jbG91ZGZyb250Lm5ldFwvc3RhZ2luZzRcL3VzZXJzXC9vcmlnaW5hbFwvNzUwY2ViZmYtMTliMC00OTFiLThjZmMtYWE3M2IyYTcyM2VkXzE2NDQzMjQ1NjM0NTAuanBnXCIsXCJnZW5kZXJcIjpcIm1hbGVcIixcImRvYlwiOm51bGwsXCJ3ZWJzaXRlXCI6XCJcIixcImVtYWlsXCI6XCJzaGVyYXpAZmF5dm8uY29tXCIsXCJwaG9uZVwiOlwiKzkyMzE1NDg4ODU5NVwiLFwiZnVsbF9uYW1lXCI6XCJTaGVyYXogSGFzc2FuXCJ9IiwiaWF0IjoxNjQ1MDAyNzE3fQ.RQR0LpXrLyZb_22xRARlp3-iP3VmV4ffb3HKQ10WTnEo_bHv170gFap4dhSRg4YxqgBBOFW2PQ2KIUtPV6RM-O7ZnleQwq0tUoaoPuPhY9QYrxEiYNtIN9WcnttLLdiyWkhkfpc_E1vDB3KsDXy_RsNbE6xtnSJDYosS86rlUW6tOtnN9kUCYUIL1LVbLhHV7Vx5yt14k7ng4JuXo-7nI4zajbT7HS-OS7z1gtWjco8eJj0n3j6C6luGZHDSR8x-3ZRGXZbM27wOQmbwV43mFSUkuGW5xFX_ERDHmWjh6lKjIkME2Ca8jtc1unU_LLJ0iBmTjtz7vFz1LYiev-NIcw
#                ${header}=       create dictionary   User-Agent=PostmanRuntime/7.28.4       X-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30      Content-Type=application/json       token=${exceltoken}
                log to console      After header set
                ${entity}=      create dictionary       type=text        content=this is the fifth test suite
                log to console      After entity set+++${entity}+++
                ${body}=      create dictionary   group_id=${val}        local_db_key=${local_db_key}      entity=${entity}
                ${body1}=       create dictionary  data=${body}
                log to console      brfore dump=======${body1}=====
                ${body_data}=   evaluate     json.dumps(${body1})   json

                log to console      body===>${body_data}end body<===
                log to console      header===>${header}end header<===
                ${response}=     post on session  mysession1     send-message      headers=${header}     data=${body_data}
#                ${response}=     post on session  mysession1     send-message      headers=${header}     data=${body1}
                should be equal as strings  ${response.status_code}      200
                ${local_db_key}=      evaluate  ${local_db_key}+1
                log to console  incremented value of local db key is==>${local_db_key}<==
            END