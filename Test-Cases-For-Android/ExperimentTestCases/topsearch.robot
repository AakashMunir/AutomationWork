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
#Library  Selenium2Library
Library  String

*** Variables ***
${RANUSER}      Generate Random String      10      [LETTERS]
#${base_url}     http://user.us-west-2.elasticbeanstalk.com/dev-test/
${base_url_for_top_search}    https://api.fayvo.com/staging-v4-2/
${deviceId}     1245
#${username}     sohaib
#${password}     smkhosa1
${deviceName}   Ali Android
${deviceType}   Android
${x-api-key}    5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30
${vars}         {"key":"62623162981310518368"        "timestamp":"2021-08-24T12:57:30Z"}
${user-agent}       aws-sdk-android/2.18.0 Linux/4.14.116 Dalvik/2.1.0/0 en_PK appVersion/104, AmazonAPIGateway_m6t1fjtsb1
${token}        eyJraWQiOiJCcU04b3JIV2c5OXdQek1VSlJ1WXRmd1FsMXdrUnlJTWFYc3Z0SnRLelJzPSIsImFsZyI6IlJTMjU2In0.eyJzdWIiOiJkNGMyNGViYi1mODNjLTQwOTktYTQ1Ny02ZWE4ZjJhOGYxOTIiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiaXNzIjoiaHR0cHM6XC9cL2NvZ25pdG8taWRwLnVzLXdlc3QtMi5hbWF6b25hd3MuY29tXC91cy13ZXN0LTJfS2ZqUk1jNmtMIiwicGhvbmVfbnVtYmVyX3ZlcmlmaWVkIjp0cnVlLCJjdXN0b206dWlkIjoiNzUwY2ViZmYtMTliMC00OTFiLThjZmMtYWE3M2IyYTcyM2VkIiwiY29nbml0bzp1c2VybmFtZSI6IjU2NDU1IiwicHJlZmVycmVkX3VzZXJuYW1lIjoic2hlcmF6IiwiYXVkIjoiNzFsZWttdTVwMmdhMzZlaWFzYWJsdW5tdm0iLCJldmVudF9pZCI6IjhhMzY5YjMwLTQ0NDAtNDk3Mi1iMWQ4LTQwY2MxNjI2ZGFmOCIsInRva2VuX3VzZSI6ImlkIiwiYXV0aF90aW1lIjoxNjQ2ODk1MTYyLCJwaG9uZV9udW1iZXIiOiIrOTIzMTU0ODg4NTk1IiwiZXhwIjoxNjQ2ODk4NzYyLCJ1c2VyIjoie1wiaXNfcHJpdmF0ZVwiOmZhbHNlLFwiaXNfdmVyaWZpZWRcIjpmYWxzZSxcInRodW1iXCI6XCJodHRwOlwvXC9kMWxrcXNkcjMwcWVwdS5jbG91ZGZyb250Lm5ldFwvc3RhZ2luZzRcL3VzZXJzXC90aHVtYlwvNzUwY2ViZmYtMTliMC00OTFiLThjZmMtYWE3M2IyYTcyM2VkXzE2NDQzMjQ1NjM0NTAuanBnXCIsXCJwaWN0dXJlXCI6XCJodHRwOlwvXC9kMWxrcXNkcjMwcWVwdS5jbG91ZGZyb250Lm5ldFwvc3RhZ2luZzRcL3VzZXJzXC9vcmlnaW5hbFwvNzUwY2ViZmYtMTliMC00OTFiLThjZmMtYWE3M2IyYTcyM2VkXzE2NDQzMjQ1NjM0NTAuanBnXCIsXCJnZW5kZXJcIjpcIm1hbGVcIixcImRvYlwiOm51bGwsXCJ3ZWJzaXRlXCI6XCJcIixcImVtYWlsXCI6XCJzaGVyYXpAZmF5dm8uY29tXCIsXCJwaG9uZVwiOlwiKzkyMzE1NDg4ODU5NVwiLFwiZnVsbF9uYW1lXCI6XCJTaGVyYXogSGFzc2FuXCJ9IiwiaWF0IjoxNjQ2ODk1MTYyfQ.Vl9_PrGexmVuwSeXHyNMNE-jVTptVQaJ7HOgbrJsdSkbrbGJlYu5V-fz5HAjMCd3AWxzJQDFKcMUDrvNgHziM21_MVRwghENGByj5580cQPy7vG7RH-5v-zYbVCoBhFqkC_UZFoQFSoc8bIR4KeMi5Q2o5p9MA7yvFxPf9y7tC9x_p7Ji4NUirHN-GQbZKFETrGnL_sSR9ifPOAHccca8v8gFngn6Q6LsLa7tqR_GAPh4-m27pgleXEQoYL20d2klIrnyXfME3VygFaBocgBQhCa11hL8KN62k9fR-RvV2vc1GqeGAOvaDJl-LPQ_TflSIbXt3AITtfB-187XrRttw
${file_path}        ../TestData/stringfortopsearch.xlsx

*** Test Cases ***
Top Search test case:
#    open excel document  ${file_path}   sheet_name=users
     TC:1 read string from the excel file character by character and hit accordingly
#    TC:2 top search

*** Keywords ***
TC:1 read string from the excel file character by character and hit accordingly
    open excel document  ${file_path}   sheet_name=Sheet1
    FOR      ${i}        IN RANGE        2       5
            ${string}=    read excel cell     ${i}       1       Sheet1
            log to console      excel string is=====>${string}<=====
            set global variable  ${string}

#            Below code splits from the right
#            ${last}=        split string from right     ${string}
#            log to console      ${last}
#            Below code splits to the lines
#            ${x}=       SPLIT TO LINES      ${string}       1
#            log to console      ${x}

            @{characters}=      split string to characters      ${string}
            log to console      ${characters}
            log to console      Printing single character-->${characters}[0]<--
            ${word}=    Set Variable   ${EMPTY}
            FOR     ${char}     IN      @{characters}
                create session  mysession1  ${base_url_for_top_search}     verify=True
                ${header}=       create dictionary   X-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30      User-Agent=aws-sdk-android/2.18.0 Linux/4.14.116 Dalvik/2.1.0/0 en_PK appVersion/591 apiVersion/4.4, AmazonAPIGateway_6az2tmngeb      Content-Type=application/json       token=${token}
                ${entity}=      create dictionary       type=text        content=Q29udHJhcnkgdG8gcG9wdWxhciBiZWxpZWYsIExvcmVtIElwc3VtIGlzIG5vdCBzaW1wbHkgcmFuZG9tIHRleHQuIEl0IGhhcyByb290cyBpbiBhIHBpZWNlIG9mIGNsYXNzaWNhbCBMYXRpbiBsaXRlcmF0dXJlIGZyb20gNDUgQkMsIG1ha2luZyBpdCBvdmVyIDIwMDAgeWVhcnMgb2xkLiBSaWNoYXJkIE1jQ2xpbnRvY2ssIGEgTGF0aW4gcHJvZmVzc29yIGF0IEhhbXBkZW4tU3lkbmV5IENvbGxlZ2UgaW4gVmlyZ2luaWEsIGxvb2tlZCB1cCBvbmUgb2YgdGhlIG1vcmUgb2JzY3VyZSBMYXRpbiB3b3JkcywgY29uc2VjdGV0dXIsIGZyb20gYSBMb3JlbSBJcHN1bSBwYXNzYWdlLCBhbmQgZ29pbmcgdGhyb3VnaCB0aGUgY2l0ZXMgb2YgdGhlIHdvcmQgaW4gY2xhc3NpY2FsIGxpdGVyYXR1cmUsIGRpc2NvdmVyZWQgdGhlIHVuZG91YnRhYmxlIHNvdXJjZS4gTG9yZW0gSXBzdW0gY29tZXMgZnJvbSBzZWN0aW9ucyAxLjEwLjMyIGFuZCAxLjEwLjMzIG9mICJkZSBGaW5pYnVzIEJvbm9ydW0gZXQgTWFsb3J1bSIgKFRoZSBFeHRyZW1lcyBvZiBHb29kIGFuZCBFdmlsKSBieSBDaWNlcm8sIHdyaXR0ZW4gaW4gNDUgQkMuIFRoaXMgYm9vayBpcyBhIHRyZWF0aXNlIG9uIHRoZSB0aGVvcnkgb2YgZXRoaWNzLCB2ZXJ5IHBvcHVsYXIgZHVyaW5nIHRoZSBSZW5haXNzYW5jZS4gVGhlIGZpcnN0IGxpbmUgb2YgTG9yZW0gSXBzdW0sICJMb3JlbSBpcHN1bSBkb2xvciBzaXQgYW1ldC4uIiwgY29tZXMgZnJvbSBhIGxpbmUgaW4gc2VjdGlvbiAxLjEwLjMyLgoKVGhlIHN0YW5kYXJkIGNodW5rIG9mIExvcmVtIElwc3VtIHVzZWQgc2luY2UgdGhlIDE1MDBzIGlzIHJlcHJvZHVjZWQgYmVsb3cgZm9yIHRob3NlIGludGVyZXN0ZWQuIFNlY3Rpb25zIDEuMTAuMzIgYW5kIDEuMTAuMzMgZnJvbSAiZGUgRmluaWJ1cyBCb25vcnVtIGV0IE1hbG9ydW0iIGJ5IENpY2VybyBhcmUgYWxzbyByZXByb2R1Y2VkIGluIHRoZWlyIGV4YWN0IG9yaWdpbmFsIGZvcm0sIGFjY29tcGFuaWVkIGJ5IEVuZ2xpc2ggdmVyc2lvbnMgZnJvbSB0aGUgMTkxNCB0cmFuc2xhdGlvbiBieSBILiBSYWNraGFtLg
                ${word}=    Set Variable   ${word}${char}
                log to console      <<<<<----${word}----->>>>>
                ${body}=      create dictionary   search_key=${word}        type=T      offset=0     limit=40        lat="38.78585"      lon="38.1252"
                log to console      ${body}
                ${body1}=       create dictionary  data=${body}
                ${body_data}=   evaluate     json.dumps(${body1})   json
                ${response}=     post on session  mysession1     trending/search      headers=${header}     data=${body_data}
                should be equal as strings  ${response.status_code}      200
                log to console      ${response.content}
            END
#            ${fetch_left}=      fetch from left     ${characters}
#            log to console      ${fetch_left}

    END

#TC:2 top search
#            FOR     ${INDEX}        IN RANGE        1       20
#                create session  mysession1  ${base_url_for_groupchat}     verify=True
#                ${header}=       create dictionary   X-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30      User-Agent=aws-sdk-android/2.18.0 Linux/4.14.116 Dalvik/2.1.0/0 en_PK appVersion/591 apiVersion/4.4, AmazonAPIGateway_6az2tmngeb      Content-Type=application/json       token=${token}
#                ${entity}=      create dictionary       type=text        content=Q29udHJhcnkgdG8gcG9wdWxhciBiZWxpZWYsIExvcmVtIElwc3VtIGlzIG5vdCBzaW1wbHkgcmFuZG9tIHRleHQuIEl0IGhhcyByb290cyBpbiBhIHBpZWNlIG9mIGNsYXNzaWNhbCBMYXRpbiBsaXRlcmF0dXJlIGZyb20gNDUgQkMsIG1ha2luZyBpdCBvdmVyIDIwMDAgeWVhcnMgb2xkLiBSaWNoYXJkIE1jQ2xpbnRvY2ssIGEgTGF0aW4gcHJvZmVzc29yIGF0IEhhbXBkZW4tU3lkbmV5IENvbGxlZ2UgaW4gVmlyZ2luaWEsIGxvb2tlZCB1cCBvbmUgb2YgdGhlIG1vcmUgb2JzY3VyZSBMYXRpbiB3b3JkcywgY29uc2VjdGV0dXIsIGZyb20gYSBMb3JlbSBJcHN1bSBwYXNzYWdlLCBhbmQgZ29pbmcgdGhyb3VnaCB0aGUgY2l0ZXMgb2YgdGhlIHdvcmQgaW4gY2xhc3NpY2FsIGxpdGVyYXR1cmUsIGRpc2NvdmVyZWQgdGhlIHVuZG91YnRhYmxlIHNvdXJjZS4gTG9yZW0gSXBzdW0gY29tZXMgZnJvbSBzZWN0aW9ucyAxLjEwLjMyIGFuZCAxLjEwLjMzIG9mICJkZSBGaW5pYnVzIEJvbm9ydW0gZXQgTWFsb3J1bSIgKFRoZSBFeHRyZW1lcyBvZiBHb29kIGFuZCBFdmlsKSBieSBDaWNlcm8sIHdyaXR0ZW4gaW4gNDUgQkMuIFRoaXMgYm9vayBpcyBhIHRyZWF0aXNlIG9uIHRoZSB0aGVvcnkgb2YgZXRoaWNzLCB2ZXJ5IHBvcHVsYXIgZHVyaW5nIHRoZSBSZW5haXNzYW5jZS4gVGhlIGZpcnN0IGxpbmUgb2YgTG9yZW0gSXBzdW0sICJMb3JlbSBpcHN1bSBkb2xvciBzaXQgYW1ldC4uIiwgY29tZXMgZnJvbSBhIGxpbmUgaW4gc2VjdGlvbiAxLjEwLjMyLgoKVGhlIHN0YW5kYXJkIGNodW5rIG9mIExvcmVtIElwc3VtIHVzZWQgc2luY2UgdGhlIDE1MDBzIGlzIHJlcHJvZHVjZWQgYmVsb3cgZm9yIHRob3NlIGludGVyZXN0ZWQuIFNlY3Rpb25zIDEuMTAuMzIgYW5kIDEuMTAuMzMgZnJvbSAiZGUgRmluaWJ1cyBCb25vcnVtIGV0IE1hbG9ydW0iIGJ5IENpY2VybyBhcmUgYWxzbyByZXByb2R1Y2VkIGluIHRoZWlyIGV4YWN0IG9yaWdpbmFsIGZvcm0sIGFjY29tcGFuaWVkIGJ5IEVuZ2xpc2ggdmVyc2lvbnMgZnJvbSB0aGUgMTkxNCB0cmFuc2xhdGlvbiBieSBILiBSYWNraGFtLg
#                ${body}=      create dictionary   search_key=${string}        type=T      offset=0     limit=40        lat="38.78585"      lon="38.1252"
#                ${body1}=       create dictionary  data=${body}
#                ${body_data}=   evaluate     json.dumps(${body1})   json
#                ${response}=     post on session  mysession1     trending/search      headers=${header}     data=${body_data}
#                should be equal as strings  ${response.status_code}      200
#            END