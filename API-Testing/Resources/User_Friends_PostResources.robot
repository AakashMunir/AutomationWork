*** Settings ***
Library  RequestsLibrary
Library  Collections
Library  JSONLibrary
Library  String
Library  Collections
Library  BuiltIn
Library  DateTime
Library  ExcelLibrary
Library  Process
Library  JSONLibrary
Library  SeleniumLibrary

*** Variables ***
${base_url}     https://m6t1fjtsb1.execute-api.us-west-2.amazonaws.com/rc-01/
${remote-ip}    103.8.112.6
${device-id}    bdee2eb7-38b3-11e9-b66c-0af13b44a73a
${device-type}  ios
${device-name}      Iphone XS max
${Content-Type}     application/json
${x-api-key}    mdcngY0xrp7ipgSBJFy098tb0QLhRQQv7aorp6b7
${user-agent}   aws-sdk-android/2.22.6 Linux/4.9.117+ Dalvik/2.1.0/0 en_US appVersion/128 apiVersion/4.5 device-id/(246e87376295e4d4_1637129344519@android) df1, AmazonAPIGateway_m6t1fjtsb1
${token}        eyJraWQiOiJZZ3N6XC9CYVVycDdDbzR6U29FQ0tzd1NxbXRtYktnZmN1UXNDV3gwQTJ6WT0iLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIwMDgxZjk3MC0xNDhiLTRkMTEtYTNiYi0wMzM0ZjQ4ZjgxMTMiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiaXNzIjoiaHR0cHM6XC9cL2NvZ25pdG8taWRwLnVzLXdlc3QtMi5hbWF6b25hd3MuY29tXC91cy13ZXN0LTJfZnRkUXJDc1RuIiwicGhvbmVfbnVtYmVyX3ZlcmlmaWVkIjp0cnVlLCJjdXN0b206dWlkIjoiZjcxMzkwNzQtZDRmNC00MmRiLWI4OTAtZGM0OTg5MTcyZWZkIiwiY29nbml0bzp1c2VybmFtZSI6IjEwNDI4MiIsInByZWZlcnJlZF91c2VybmFtZSI6InNoZXJyeSIsImF1ZCI6IjI4anA3cGo1cWM0bmk3aWNjZ2xhcmMzODAyIiwiZXZlbnRfaWQiOiIxMGEzZDc1Ny0zMmFkLTQ3MDQtYjJlOS0wODc0MjQ4MDcxZjMiLCJ0b2tlbl91c2UiOiJpZCIsImF1dGhfdGltZSI6MTY1NTM2MDQ1MywicGhvbmVfbnVtYmVyIjoiKzkyMzE1NDg4ODU5NSIsImV4cCI6MTY1NTM2NDA1MywidXNlciI6IntcImlzX3ByaXZhdGVcIjpmYWxzZSxcImlzX3ZlcmlmaWVkXCI6ZmFsc2UsXCJ0aHVtYlwiOlwiaHR0cDpcL1wvZDFsa3FzZHIzMHFlcHUuY2xvdWRmcm9udC5uZXRcL3Byb2R1Y3Rpb25cL3VzZXJzXC90aHVtYlwvZjcxMzkwNzQtZDRmNC00MmRiLWI4OTAtZGM0OTg5MTcyZWZkLTAxLTA2LTIwMjIwNi0wNC00MC04MTkuanBlZ1wiLFwicGljdHVyZVwiOlwiaHR0cDpcL1wvZDFsa3FzZHIzMHFlcHUuY2xvdWRmcm9udC5uZXRcL3Byb2R1Y3Rpb25cL3VzZXJzXC9vcmlnaW5hbFwvZjcxMzkwNzQtZDRmNC00MmRiLWI4OTAtZGM0OTg5MTcyZWZkLTAxLTA2LTIwMjIwNi0wNC00MC04MTkuanBlZ1wiLFwiZ2VuZGVyXCI6XCJtYWxlXCIsXCJkb2JcIjpcIjIwMTAtMDYtMTNcIixcIndlYnNpdGVcIjpcIlwiLFwiZW1haWxcIjpcInNoZXJhei5oYXNzYW5AaWxzYWludGVyYWN0aXZlLmNvbVwiLFwicGhvbmVcIjpcIis5MjMxNTQ4ODg1OTVcIixcImZ1bGxfbmFtZVwiOlwiXCJ9IiwiaWF0IjoxNjU1MzYwNDUzfQ.D0gFplWJsIH-lNQesqrf7SCjWWRKsV_6hMgAwAHPalfx8POtkR_mjRNRVuyerVQHHHqQmmoifYn6kcn7I8RiJxO4kevMWz_lKTbZBeBEsm_HimyKiYq9L9DEe62Tb7Cw57QUkwL6UiwO5oc34XPpx5_jO4S0GYQMOmmzZpr0dYbazKI42wVX8QOi0vi_cJXhhIvO9kH7qjzjlNOdzBHJZzDyIu7hosj_Xz3jS5I29EL659ApbOK-B2HuZTV7RDoxvAMqtle0dScNwzKcnnCK1QXatshL7tbszC3MGpLDZcQc45RUe0J1mhlUqJ97VNt5ZbYg17880SsEDTOwunFUUA

*** Keywords ***
TC:1 Happy scenario
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   remote-ip=${remote-ip}      device-id=${device-id}      device-type=${device-type}      device-name=${device-name}      user-agent=${user-agent}        x-api-key=${x-api-key}      token=${token}
    ${body}=    create dictionary   offset=0     limit=40    greater_than=0     less_than=461593        lat=25.3626     lon=32.25648
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     post on session  mysession     /user/friends/posts      headers=${header}     data=${body_data}

    log to console  ${response.status_code}

#    log to console  ${response.content}
    should be equal as strings  ${response.status_code}      200

TC:2 Missing x-api-key in the Header
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   remote-ip=${remote-ip}      device-id=${device-id}      device-type=${device-type}      device-name=${device-name}      user-agent=${user-agent}        x-api-key=      token=${token}
    ${body}=    create dictionary   offset=0     limit=40    greater_than=0     less_than=461593        lat=25.3626     lon=32.25648
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     run keyword and ignore error   post on session  mysession     /user/friends/posts      headers=${header}     data=${body_data}
#    log to console      response==${response}==
    log to console      response==${response}[1]==
    ${result} =    Split String    ${response}[1]    ${EMPTY}    -1
    list should contain value    ${result}    Forbidden
#    ${content_dic}=     evaluate     json.loads('''${response}[1]''')      json
#    ${content_dic}=     evaluate     json.loads(${response}[1])      json
    log to console  Content_dic =${result}
#    ${error_message}    create list
#    ${error_message}=      get value from json  ${content_dic}     message

#    log to console  ${error_message}
#    log to console  ${response.content.message}
#    should be equal as strings  ${response.status_code}      403
#    Dictionary Should Contain Sub Dictionary
#    should be equal as strings  ${response.content}     HTTPError: 403 Client Error: Forbidden for url

TC:3 Missing Token in the Header
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   remote-ip=${remote-ip}      device-id=${device-id}      device-type=${device-type}      device-name=${device-name}      user-agent=${user-agent}        x-api-key=${x-api-key}      token=
    ${body}=    create dictionary   offset=0     limit=40    greater_than=0     less_than=461593        lat=25.3626     lon=32.25648
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     post on session  mysession     /user/friends/posts      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}
    should be equal as strings  ${response.status_code}      401

TC4: Wrong User Agent in the Header
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   remote-ip=${remote-ip}      device-id=${device-id}      device-type=${device-type}      device-name=${device-name}      user-agent=101-1        x-api-key=${x-api-key}      token=${token}
    ${body}=    create dictionary   offset=0     limit=40    greater_than=0     less_than=461593        lat=25.3626     lon=32.25648
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     post on session  mysession     /user/friends/posts      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}
    should be equal as strings  ${response.status_code}      200

TC5: Wrong limit in the Body
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   remote-ip=${remote-ip}      device-id=${device-id}      device-type=${device-type}      device-name=${device-name}      user-agent=${user-agent}        x-api-key=${x-api-key}      token=${token}
    ${body}=    create dictionary   offset=0     limit=-40    greater_than=0     less_than=461593        lat=25.3626     lon=32.25648
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     post on session  mysession     /user/friends/posts      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}
    should be equal as strings  ${response.status_code}      200

TC6: Wrong less_than Value in the Body
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   remote-ip=${remote-ip}      device-id=${device-id}      device-type=${device-type}      device-name=${device-name}      user-agent=${user-agent}        x-api-key=${x-api-key}      token=${token}
    ${body}=    create dictionary   offset=0     limit=40    greater_than=0     less_than=-461593        lat=25.3626     lon=32.25648
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     post on session  mysession     /user/friends/posts      headers=${header}     data=${body_data}

    log to console  ${response.status_code}
    log to console  ${response.content}
    should be equal as strings  ${response.status_code}      200

TC7: Wrong greater_than Value in the Body
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   remote-ip=${remote-ip}      device-id=${device-id}      device-type=${device-type}      device-name=${device-name}      user-agent=${user-agent}        x-api-key=${x-api-key}      token=${token}
    ${body}=    create dictionary   offset=0     limit=40    greater_than=-1202     less_than=-461593        lat=25.3626     lon=32.25648
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=     post on session  mysession     /user/friends/posts      headers=${header}     data=${body_data}

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





