

#
Test Case For Sending The Verification Code
    TC:1 For sending the verification code
Test Case For Receive The Verification Code
    TC:2 For receive the verification code
Test Case For The Verify Code
    TC:3 For verify code
#Test Case For Verify Identification Code
#    TC:4 For Verify Identification Code
Test Case For Save Profile
    TC:5 For Save Profile
Test Case For Update Profile
    TC:6 For Update Profile



#    ${content_dic}=     evaluate     json.loads('''${response.content}''')      json
#    log to console  Content_dic =${content_dic}
#    ${identification_code}    create list
#    ${verification_code}=      get value from json  ${content_dic}     identification_code
##    ${code}=    split string  {
#    set global variable  ${identification_code}
#    log to console  this is identification code =${identification_code}

#TC:4 For Verify Identification Code
#    create session  mysession   ${base_url}     verify=True
#    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0     x-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30   Content-Type=application/json
#    ${body}=    create dictionary   identification_code=${identification_code}[0]     email=malik1922@gmail.com    username=iqbal1
#    ${body1}=   create dictionary  data=${body}
#    ${body_data}=   evaluate     json.dumps(${body1})   json
#    ${response}=     POST On Session  mysession     /signup/verify      headers=${header}     data=${body_data}
#
#    log to console  ${response.status_code}
#    log to console  ${response.content}
#
#    should be equal as strings  ${response.status_code}      200




#TC:6 For Update Profile
#    create session  mysession   ${base_url}     verify=True
#    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0     x-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30   Content-Type=application/json
#    ${body}=    create dictionary   dob=02-11-1994      gender=male
#    ${body1}=   create dictionary  data=${body}
#    ${body_data}=   evaluate     json.dumps(${body1})   json
#    ${response}=     POST On Session  mysession     /signup/verify-account-parameters      headers=${header}     data=${body_data}
#
#    log to console  ${response.status_code}
#    log to console  ${response.content}
#
#    should be equal as strings  ${response.status_code}      200