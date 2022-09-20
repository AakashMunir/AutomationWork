*** Settings ***
Library  RequestsLibrary
Library  Collections
Library  JSONLibrary
Library  String
Library    ExcelLibrary



*** Variables ***
${file_path}        ./ExcelFiles/demo.xlsx

${base_url}     https://api.fayvo.com/staging-v4-2/

*** Keywords ***
TC:0 For Excel Open For Read
    open excel document  ${file_path}   sheet_name=Sheet1
    FOR      ${i}        IN RANGE        2       6
            ${username}=    read excel cell     ${i}       1       Sheet1
            log to console      excelusername=====>${username}:
            set global variable  ${username}
#            log to console  <<<<<<<<<<<<<------------------------------>>>>>>>>>>>>>>>>
            ${email}=    read excel cell     ${i}       2       Sheet1
            log to console      excelusername=====>${email}:
            set global variable  ${email}
#            log to console  <<<<<<<<<<<<<------------------------------>>>>>>>>>>>>>>>>
            ${phonenumber1}=    read excel cell     ${i}       3       Sheet1
            log to console      excelphone=====>${phonenumber1}:
            ${string}=    Convert To String    ${phonenumber1}
            ${phone}=  split string  ${string}   .0
            log to console  orignalphone===${phone}[0]===
            set global variable  ${phone}
#            log to console  <<<<<<<<<<<<<------------------------------>>>>>>>>>>>>>>>>
            ${password}=    read excel cell     ${i}       4       Sheet1
            log to console      excelpassword=====>${password}:
            set global variable  ${password}
            log to console  <<<<<<<<<<<<<------------------------------>>>>>>>>>>>>>>>>


            TC:1 For sending the verification code
            TC:2 For receive the verification code
            TC:3 For verify code
            TC:5 For Save Profile

    END

TC:1 For sending the verification code
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.22.6 Linux/4.14.190-perf-ga04b026 Dalvik/2.1.0/0 en_GB appVersion/847 apiVersion/4.5 device-id/(47a134904c347a2a_1635922032198@android) rk1, AmazonAPIGateway_6az2tmngeb     x-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30   Content-Type=application/json
    ${body}=    create dictionary   country_code=+92     email=${email}    phone=+92${phone}[0]
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    log to console  ye ha body data==${body_data}==
    ${response}=     POST On Session  mysession     /signup/verification-code      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    should be equal as strings  ${response.status_code}      200

TC:2 For receive the verification code
    ${base_url1}=    set variable   http://user.us-west-2.elasticbeanstalk.com/admin
    create session  mysession1  ${base_url1}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0    api-key=JPS4p@8pbeUO2EY0B3XayUEucRsydO_pd      Content-Type=application/json
    ${body}=    create dictionary   phone=+92${phone}[0]
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    log to console  ${body_data}
    ${response}=     POST On Session  mysession1     /get-verification-code      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    ${content_dic}=     evaluate     json.loads('''${response.content}''')      json
    log to console  Content_dic =${content_dic}
    ${verification_code}    create list
    ${verification_code}=      get value from json  ${content_dic}     code

    set global variable  ${verification_code}
    log to console  this is verification code =${verification_code}[0]

TC:3 For verify code
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0     x-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30   Content-Type=application/json
    ${body}=    create dictionary   code=${verification_code}[0]     email=${email}    phone=+92${phone}[0]
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    log to console  ye ha body data==${body_data}==
    ${response}=     POST On Session  mysession     /signup/verify      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    should be equal as strings  ${response.status_code}      200

    #################################################

    ${content_dic}=     evaluate     json.loads('''${response.content}''')      json
    log to console  Content_dic =${content_dic}
#    ${identification_code}    create list
    ${identification_code}=      Get Value From Json      ${content_dic}     data.identification_code
#    ${identification_code}=  split string  ${identification_code}   ['
    set global variable  ${identification_code}
    log to console  this is verification code =${identification_code}[0]===

    #################################################

TC:5 For Save Profile
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   User-Agent=PostmanRuntime/7.29.0     x-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30   Content-Type=application/json
    ${body}=    create dictionary   full_name=${username}    password=${password}      username=${username}     login_platform=F    identification_code=${identification_code}[0]   email=${email}
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     POST On Session  mysession     /signup/save      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    should be equal as strings  ${response.status_code}      200
