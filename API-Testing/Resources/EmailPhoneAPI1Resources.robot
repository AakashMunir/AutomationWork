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
TC:1 Missing @
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0     x-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30   Content-Type=application/json
    ${body}=    create dictionary   country_code=+92     email=malik1994gmail.com    phone=3138181881
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     post request  mysession     /signup/verification-code      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    should be equal as strings  ${response.status_code}      200

TC:2 Missing .Dot
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0     x-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30   Content-Type=application/json
    ${body}=    create dictionary   country_code=+92     email=malik1994@gmailcom    phone=$3138181881
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     post request  mysession     /signup/verification-code      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    should be equal as strings  ${response.status_code}      200

TC:3 Extra @
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0     x-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30   Content-Type=application/json
    ${body}=    create dictionary   country_code=+92     email=malik1994@@gmail.com    phone=$3138181881
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     post request  mysession     /signup/verification-code      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    should be equal as strings  ${response.status_code}      200

TC:4 Extra .Dot
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0     x-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30   Content-Type=application/json
    ${body}=    create dictionary   country_code=+92     email=malik1994@gmail..com    phone=$3138181881
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     post request  mysession     /signup/verification-code      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    should be equal as strings  ${response.status_code}      200


TC:5 Email local part missing
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0     x-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30   Content-Type=application/json
    ${body}=    create dictionary   country_code=+92     email=@gmail..com    phone=$3138181881
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     post request  mysession     /signup/verification-code      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    should be equal as strings  ${response.status_code}      200

TC:6 Email local part is numbering
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0     x-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30   Content-Type=application/json
    ${body}=    create dictionary   country_code=+92     email=1212654@gmail..com    phone=$3138181881
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     post request  mysession     /signup/verification-code      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    should be equal as strings  ${response.status_code}      200

TC:7 Email Domain is missing
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0     x-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30   Content-Type=application/json
    ${body}=    create dictionary   country_code=+92     email=1212654@gmail    phone=$3138181881
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     post request  mysession     /signup/verification-code      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    should be equal as strings  ${response.status_code}      200

TC:8 Email Domain is missing
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0     x-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30   Content-Type=application/json
    ${body}=    create dictionary   country_code=+92     email=1212654@gmail    phone=$3138181881
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     post request  mysession     /signup/verification-code      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    should be equal as strings  ${response.status_code}      200

TC:9 Email Domain should not contain special charactor
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0     x-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30   Content-Type=application/json
    ${body}=    create dictionary   country_code=+92     email=1212654@gmail.&^&%    phone=$3138181881
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     post request  mysession     /signup/verification-code      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    should be equal as strings  ${response.status_code}      200

TC:10 Valid email
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0     x-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30   Content-Type=application/json
    ${body}=    create dictionary   country_code=+92     email=malikbajwa@gmail.com    phone=3138181881
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     post request  mysession     /signup/verification-code      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    should be equal as strings  ${response.status_code}      200


TC:11 Existing email
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0     x-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30   Content-Type=application/json
    ${body}=    create dictionary   country_code=+92     email=malik.aakash@ilsainteractive.com    phone=3138181881
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     post request  mysession     /signup/verification-code      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    should be equal as strings  ${response.status_code}      200

TC:12 Emoji in email field
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0     x-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30   Content-Type=application/json
    ${body}=    create dictionary   country_code=+92     email=(●'◡'●)(❁´◡`❁)(*/ω＼*)    phone=3138181881
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     post request  mysession     /signup/verification-code      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    should be equal as strings  ${response.status_code}      200

TC:13 Domain is Fayvo.com
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0     x-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30   Content-Type=application/json
    ${body}=    create dictionary   country_code=+92     email=malik1994@fayvo.com    phone=3138181881
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     post request  mysession     /signup/verification-code      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    should be equal as strings  ${response.status_code}      200

TC:14 Domain and local part is xxx
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0     x-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30   Content-Type=application/json
    ${body}=    create dictionary   country_code=+92     email=xxx@xxx.com    phone=3138181881
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     post request  mysession     /signup/verification-code      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    should be equal as strings  ${response.status_code}      200

TC:14 local part is Href Link
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0     x-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30   Content-Type=application/json
    ${body}=    create dictionary   country_code=+92     email=https://rawgit.com/peterservice-rnd/robotframework-excellib/master/docs/ExcelLibrary.html@.com    phone=3138181881
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     post request  mysession     /signup/verification-code      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    should be equal as strings  ${response.status_code}      200

TC:15 Local part in urdu
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0     x-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30   Content-Type=application/json
    ${body}=    create dictionary   country_code=+92     email=آکاش@gmail.com    phone=3138181881
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     post request  mysession     /signup/verification-code      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    should be equal as strings  ${response.status_code}      200

TC:16 Local part max length
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0     x-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30   Content-Type=application/json
    ${body}=    create dictionary   country_code=+92     email=hkjghjgtyrftyryutguiyhuiyhoihjgyhjugyutgyutguyguigiughiuuiuiyghuigyuguiyguigiugyugvhj@hjgjyhgguihohjljlkjlkjghvfhjgkjhkj.com    phone=3138181881
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     post request  mysession     /signup/verification-code      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    should be equal as strings  ${response.status_code}      200

TC:17 Domain is Change
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0     x-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30   Content-Type=application/json
    ${body}=    create dictionary   country_code=+92     email=malik1994@gmail.edu.gov.int.mil.aero.cat.asia.mobi.coop.travel.tel.jobs    phone=3138181881
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     post request  mysession     /signup/verification-code      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    should be equal as strings  ${response.status_code}      200


TC:18 Enter Valid Phone Number
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0     x-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30   Content-Type=application/json
    ${body}=    create dictionary   country_code=+92     email=malik1994@gmail.edu    phone=3138181881
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     post request  mysession     /signup/verification-code      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    should be equal as strings  ${response.status_code}      200

TC:19 Missig Plus Country Code
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0     x-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30   Content-Type=application/json
    ${body}=    create dictionary   country_code=92     email=malik1994@gmail.edu    phone=3138181881
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     post request  mysession     /signup/verification-code      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    should be equal as strings  ${response.status_code}      200

TC:20 Lessthen 4 digit of phone number
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0     x-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30   Content-Type=application/json
    ${body}=    create dictionary   country_code=+923     email=malik1994@gmail.edu    phone=313
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     post request  mysession     /signup/verification-code      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    should be equal as strings  ${response.status_code}      200

TC:21 Equal to 4 digit of phone number
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0     x-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30   Content-Type=application/json
    ${body}=    create dictionary   country_code=+923     email=malik1994@gmail.edu    phone=3134
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     post request  mysession     /signup/verification-code      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    should be equal as strings  ${response.status_code}      200


TC:22 Morethen 12 digit of phone number
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0     x-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30   Content-Type=application/json
    ${body}=    create dictionary   country_code=+923     email=malik1996@gmail.edu    phone=313623622677890
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     post request  mysession     /signup/verification-code      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    should be equal as strings  ${response.status_code}      200

TC:23 Equal to 12 digit of phone number
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0     x-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30   Content-Type=application/json
    ${body}=    create dictionary   country_code=+923     email=malik1995@gmail.edu    phone=313623622677
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     post request  mysession     /signup/verification-code      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    should be equal as strings  ${response.status_code}      200


TC:24 Enter 12 0 digit of phone number
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0     x-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30   Content-Type=application/json
    ${body}=    create dictionary   country_code=+923     email=malik1997@gmail.edu    phone=000000000000
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     post request  mysession     /signup/verification-code      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    should be equal as strings  ${response.status_code}      200


TC:24 Enter 12 Special digit of phone number
    create session  mysession   ${base_url}     verify=True
    ${phone}    set variable  1234567890123
    ${interger}=    convert to integer  ${phone}
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0     x-api-key=5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30   Content-Type=application/json
    ${body}=    create dictionary   country_code=+923     email=malik1998@gmail.edu    phone=${interger}
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     post request  mysession     /signup/verification-code      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}

    should be equal as strings  ${response.status_code}      200





