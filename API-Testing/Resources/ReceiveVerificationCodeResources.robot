*** Settings ***
Library  RequestsLibrary
Library  Collections
Library  JSONLibrary
Library  String

*** Variables ***
${base_url}     https://6az2tmngeb.execute-api.us-west-2.amazonaws.com/alpha/
${email}    malik27@gmail.com
${phone}    3136326500
${username}     malik500
${deviceId}   1245
${deviceName}   Ali Android
${deviceType}   Android

*** Keywords ***
TC:1 For receive the verification code missing plus sign (+)
    ${base_url1}=    set variable   http://user.us-west-2.elasticbeanstalk.com/admin
    create session  mysession1  ${base_url1}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0    api-key=JPS4p@8pbeUO2EY0B3XayUEucRsydO_pd      Content-Type=application/json
    ${body}=    create dictionary   phone=923138181888
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    log to console  ${body_data}
    ${response}=     post request  mysession1     /get-verification-code      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    ${content_dic}=     evaluate     json.loads('''${response.content}''')      json
    log to console  Content_dic =${content_dic}
    ${verification_code}    create list
    ${verification_code}=      get value from json  ${content_dic}     code
#    ${code}=    split string  {
    set global variable  ${verification_code}
    log to console  this is verification code =${verification_code}[0]


TC:2 For receive the verification code missing country code
    ${base_url1}=    set variable   http://user.us-west-2.elasticbeanstalk.com/admin
    create session  mysession1  ${base_url1}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0    api-key=JPS4p@8pbeUO2EY0B3XayUEucRsydO_pd      Content-Type=application/json
    ${body}=    create dictionary   phone=3138181888
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    log to console  ${body_data}
    ${response}=     post request  mysession1     /get-verification-code      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    ${content_dic}=     evaluate     json.loads('''${response.content}''')      json
    log to console  Content_dic =${content_dic}
    ${verification_code}    create list
    ${verification_code}=      get value from json  ${content_dic}     code
    set global variable  ${verification_code}
    log to console  this is verification code =${verification_code}[0]


TC:3 For receive the verification code incorrect number
    ${base_url1}=    set variable   http://user.us-west-2.elasticbeanstalk.com/admin
    create session  mysession1  ${base_url1}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0    api-key=JPS4p@8pbeUO2EY0B3XayUEucRsydO_pd      Content-Type=application/json
    ${body}=    create dictionary   phone=+923138181999
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    log to console  ${body_data}
    ${response}=     post request  mysession1     /get-verification-code      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    ${content_dic}=     evaluate     json.loads('''${response.content}''')      json
    log to console  Content_dic =${content_dic}
    ${verification_code}    create list
    ${verification_code}=      get value from json  ${content_dic}     code
#    ${code}=    split string  {
    set global variable  ${verification_code}
    log to console  this is verification code =${verification_code}[0]



TC: For receive the verification code
    ${base_url1}=    set variable   http://user.us-west-2.elasticbeanstalk.com/admin
    create session  mysession1  ${base_url1}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0    api-key=JPS4p@8pbeUO2EY0B3XayUEucRsydO_pd      Content-Type=application/json
    ${body}=    create dictionary   phone=+923138181888
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    log to console  ${body_data}
    ${response}=     post request  mysession1     /get-verification-code      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    ${content_dic}=     evaluate     json.loads('''${response.content}''')      json
    log to console  Content_dic =${content_dic}
    ${verification_code}    create list
    ${verification_code}=      get value from json  ${content_dic}     code
#    ${code}=    split string  {
    set global variable  ${verification_code}
    log to console  this is verification code =${verification_code}[0]






