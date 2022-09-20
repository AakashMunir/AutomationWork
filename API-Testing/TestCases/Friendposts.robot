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
#Library  ExtendedRequestsLibrary

*** Variables ***
#${base_url}     https://m6t1fjtsb1.execute-api.us-west-2.amazonaws.com/rc-01/
#${remote-ip}    103.8.112.6
#${device-id}    bdee2eb7-38b3-11e9-b66c-0af13b44a73a
#${device-type}  ios
#${device-name}      Iphone XS max
#${x-api-key}    mdcngY0xrp7ipgSBJFy098tb0QLhRQQv7aorp6b7
#${user-agent}   aws-sdk-android/2.22.6 Linux/4.9.117+ Dalvik/2.1.0/0 en_US appVersion/128 apiVersion/4.5 device-id/(246e87376295e4d4_1637129344519@android) df1, AmazonAPIGateway_m6t1fjtsb1
${base_url}     https://api.fayvo.com/staging-v4-2/
${remote-ip}    202.166.175.186
${Content-Type}     application/json
${x-api-key}    5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30
${user-agent}   aws-sdk-android/2.18.0 Linux/4.14.116 Dalvik/2.1.0/0 en_PK appVersion/591 apiVersion/4.4, AmazonAPIGateway_6az2tmngeb
${token}        eyJraWQiOiJCcU04b3JIV2c5OXdQek1VSlJ1WXRmd1FsMXdrUnlJTWFYc3Z0SnRLelJzPSIsImFsZyI6IlJTMjU2In0.eyJzdWIiOiJlZjA0ODRhOS0wNzJhLTQ2NGItYTRjZi1lNTNlZjZlNDkzMzIiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiaXNzIjoiaHR0cHM6XC9cL2NvZ25pdG8taWRwLnVzLXdlc3QtMi5hbWF6b25hd3MuY29tXC91cy13ZXN0LTJfS2ZqUk1jNmtMIiwicGhvbmVfbnVtYmVyX3ZlcmlmaWVkIjp0cnVlLCJjdXN0b206dWlkIjoiNGFmYjFmY2YtOTg2Ni00OGMyLThlOTctMGRmZWRjNWZlOTVjIiwiY29nbml0bzp1c2VybmFtZSI6IjU2NjA3IiwicHJlZmVycmVkX3VzZXJuYW1lIjoiYm90IiwiYXVkIjoiNzFsZWttdTVwMmdhMzZlaWFzYWJsdW5tdm0iLCJldmVudF9pZCI6IjlhZWI0OWQ1LWQ0NDktNDViNC05MmRjLTQ3ZWM1NWU0MWQwZiIsInRva2VuX3VzZSI6ImlkIiwiYXV0aF90aW1lIjoxNjU2NTgzMzA1LCJwaG9uZV9udW1iZXIiOiIrOTIzMTM0NTU1NDQ0IiwiZXhwIjoxNjU2NTg2OTA1LCJ1c2VyIjoie1wiaXNfcHJpdmF0ZVwiOmZhbHNlLFwiaXNfdmVyaWZpZWRcIjpmYWxzZSxcInRodW1iXCI6XCJodHRwOlwvXC9kMWxrcXNkcjMwcWVwdS5jbG91ZGZyb250Lm5ldFwvc3RhZ2luZzRcL3VzZXJzXC90aHVtYlwvbWFsZV9kZWZhdWx0LmpwZ1wiLFwicGljdHVyZVwiOlwiaHR0cDpcL1wvZDFsa3FzZHIzMHFlcHUuY2xvdWRmcm9udC5uZXRcL3N0YWdpbmc0XC91c2Vyc1wvb3JpZ2luYWxcL21hbGVfZGVmYXVsdC5qcGdcIixcImdlbmRlclwiOlwibWFsZVwiLFwiZG9iXCI6XCIxOTkwLTEwLTEwXCIsXCJ3ZWJzaXRlXCI6XCJcIixcImVtYWlsXCI6XCJib3RAZ21haWwuY29tXCIsXCJwaG9uZVwiOlwiKzkyMzEzNDU1NTQ0NFwiLFwiZnVsbF9uYW1lXCI6XCJCb3RcIn0iLCJpYXQiOjE2NTY1ODMzMDV9.EGWn2WupncLkcHIjbdoa5WwaKda1jTKht_d7TPNuIJz4fku8pexzilm_iMkkREVAQBrXxtcyMxu-zYBdVU5vvB0p7s0DfDdZki4BKl2AfDWVNIw8oPjeaS1TgBFtINZK9un6HwahaS9ICyMxdyg8sHXtZc1EGo6t9AkkRmuLHFZ30ajSIvK02yx_dgaCGhDVThxlla5v8AJWsz2U3d0g226YjdFdhsRiOq7ssYPkU3zQtQYrFUhKE-2YEXSLzL3PPa_1tRovC7VWj7awLS-vAYRDwDxTZnxMZKWaHxm4LBoZRcdE8SMojTxu2RvYKpg3qQR-Uosbj3NZL_l2iZjZzA
@{validate}=    Bad     Request     for
@{less_than}=       Invalid param value received
@{greater_than}=    Invalid param value received
${item_type_number}     2
${post_id}     0
${box_ids}     [98205]

*** Test Cases ***

Frind post








    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary       user-agent=${user-agent}        x-api-key=${x-api-key}      token=eyJraWQiOiJCcU04b3JIV2c5OXdQek1VSlJ1WXRmd1FsMXdrUnlJTWFYc3Z0SnRLelJzPSIsImFsZyI6IlJTMjU2In0.eyJzdWIiOiJiMDEwZjI3Ny0wYTJkLTRhOGUtYWRhNS1hMGQ5N2QwMGVhYTkiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiaXNzIjoiaHR0cHM6XC9cL2NvZ25pdG8taWRwLnVzLXdlc3QtMi5hbWF6b25hd3MuY29tXC91cy13ZXN0LTJfS2ZqUk1jNmtMIiwicGhvbmVfbnVtYmVyX3ZlcmlmaWVkIjp0cnVlLCJjdXN0b206dWlkIjoiMjgxYTNjODAtOTcyNi00MWU4LWFmYmItYzljMWE0MDhmNTdmIiwiY29nbml0bzp1c2VybmFtZSI6IjU2NjA2IiwicHJlZmVycmVkX3VzZXJuYW1lIjoicm9ib3QiLCJhdWQiOiI3MWxla211NXAyZ2EzNmVpYXNhYmx1bm12bSIsImV2ZW50X2lkIjoiZGVlNzVmYTAtYjRmNi00MDcxLWFhMGYtZjMxOWM3NTk0ZGQxIiwidG9rZW5fdXNlIjoiaWQiLCJhdXRoX3RpbWUiOjE2NTY1ODc2MzgsInBob25lX251bWJlciI6Iis5MjMxMzMzMzM2NjYiLCJleHAiOjE2NTY1OTEyMzgsInVzZXIiOiJ7XCJpc19wcml2YXRlXCI6ZmFsc2UsXCJpc192ZXJpZmllZFwiOmZhbHNlLFwidGh1bWJcIjpcImh0dHA6XC9cL2QxbGtxc2RyMzBxZXB1LmNsb3VkZnJvbnQubmV0XC9zdGFnaW5nNFwvdXNlcnNcL3RodW1iXC9tYWxlX2RlZmF1bHQuanBnXCIsXCJwaWN0dXJlXCI6XCJodHRwOlwvXC9kMWxrcXNkcjMwcWVwdS5jbG91ZGZyb250Lm5ldFwvc3RhZ2luZzRcL3VzZXJzXC9vcmlnaW5hbFwvbWFsZV9kZWZhdWx0LmpwZ1wiLFwiZ2VuZGVyXCI6XCJtYWxlXCIsXCJkb2JcIjpcIjE5OTAtMDEtMDFcIixcIndlYnNpdGVcIjpcIlwiLFwiZW1haWxcIjpcInJvYm90QGdtYWlsLmNvbVwiLFwicGhvbmVcIjpcIis5MjMxMzMzMzM2NjZcIixcImZ1bGxfbmFtZVwiOlwiUm9ib3RcIn0iLCJpYXQiOjE2NTY1ODc2Mzh9.UFflEdi8bbG5F5-z_xEaVMHDkv2J9cXwFJZJTMUfJipI0_f6WNegMPr5MLNV7043qHcssvWBzZDU81UkctYf-1BwuiMmEQ19vnP6PyEblqo5SmhJB91_6cRfwR2UWinkoIJ6zJktcj6qqQVRpQPboD6dWjikwr4msV13limWGYoo7yJSBu4WlCCEajr1PKiYTr02g4_OkVZldZsiLLulNaAc-Kdjo7xo_vFvaRyQfkYzUPU0Hrp2sX1SC1n1ZYyfqCYiRP3SM9qzvC7ruLtna0UN18ZXSsL5QNDs5Ce-qNn3cyBe0KYLByzLTib4i8fwsTgUtVXBQYcZvb2PjcmoOg
    ${body}=    create dictionary   offset=0     limit=40    greater_than=0     less_than=0        lat=25.3626     lon=32.25648
    ${body1}=   create dictionary  data=${body}
    ${body_data}=   evaluate     json.dumps(${body1})   json
    ${response}=      post on session  mysession     /user/friends/posts      headers=${header}     data=${body_data}
    log to console      response[1].content====>${response.content}<=========
    log to console  =========><==========
    log to console  =========><==========
    log to console  =========><==========
    log to console  =========><==========
    log to console  =========><==========
    log to console  =========><==========
    log to console  =========><==========
    log to console  =========><==========
    log to console  =========><==========
    log to console  =========><==========
    log to console  =========><==========
    log to console  =========><==========
#    ${json_body}=   to json   ${response[1].content}
#    ${json_obj}=      ${response.content.json()}
#    ${json_obj}=    to json  ${response.content.json()}
#    ${json_obj}=    convert string to json  ${response.content}
#    ${json_obj}=    to json  ${response.content}
#    log to console  json_obj===${json_obj}
#    ${js_obj}=  set variable  ${response.json()}
#    log to console  js_obj====${js_obj}=====
#    ${id}=      Get Value From Json   ${js_obj}     $.data.[.id
#    ${id}=      Get Value From Json   ${json_obj}     $.data.[.id
#    ${js_load}=   evaluate     json.loads(${response.content})   json
    ${js_load}=   evaluate    json.loads('''${response.content}''')    json
    log to console  js_load======${js_load}=====
    ${id}=      Get Value From Json   ${js_load}     $.data

#    log to console  id=========>${id}<==========
#    log to console      First ID id==>>${json_body['data'][0]['id']}
#    ${data_length}=      get length       ${json_body['data']}
#    log to console      length of JSON Body is ==>>${data_length}
#    Just to traverse in json extracrtor
#    ${body_data}=   evaluate     json.dumps(${json_body})   json
#    log to console      dump data is==>>${body_data}

#    ${data_ids}=      Get Value From Json   ${response[1].content}     $.data[.id]
#    log to console      ${data_ids}

#    ${index}    set variable        0
#    FOR    ${id}    IN    ${json_body['data']}
#    FOR    ${id}    IN RANGE    0       ${data_length}
#        log to console      FOR LOOP IDS are:${id}
#        ${index}=       Evaluate    ${index} + 1
#        log to console      ${index}
#    END



#    create session  mysession   ${base_url}     verify=True
#    ${header}=  create dictionary       user-agent=${user-agent}        x-api-key=${x-api-key}      token=eyJraWQiOiJCcU04b3JIV2c5OXdQek1VSlJ1WXRmd1FsMXdrUnlJTWFYc3Z0SnRLelJzPSIsImFsZyI6IlJTMjU2In0.eyJzdWIiOiJlZjA0ODRhOS0wNzJhLTQ2NGItYTRjZi1lNTNlZjZlNDkzMzIiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiaXNzIjoiaHR0cHM6XC9cL2NvZ25pdG8taWRwLnVzLXdlc3QtMi5hbWF6b25hd3MuY29tXC91cy13ZXN0LTJfS2ZqUk1jNmtMIiwicGhvbmVfbnVtYmVyX3ZlcmlmaWVkIjp0cnVlLCJjdXN0b206dWlkIjoiNGFmYjFmY2YtOTg2Ni00OGMyLThlOTctMGRmZWRjNWZlOTVjIiwiY29nbml0bzp1c2VybmFtZSI6IjU2NjA3IiwicHJlZmVycmVkX3VzZXJuYW1lIjoiYm90IiwiYXVkIjoiNzFsZWttdTVwMmdhMzZlaWFzYWJsdW5tdm0iLCJldmVudF9pZCI6IjUxODAwYWM2LWU5ZjUtNDAzZC1iNzNjLWVjNDAwN2IxYmZkNSIsInRva2VuX3VzZSI6ImlkIiwiYXV0aF90aW1lIjoxNjU2NTgyNTE3LCJwaG9uZV9udW1iZXIiOiIrOTIzMTM0NTU1NDQ0IiwiZXhwIjoxNjU2NTg2MTE3LCJ1c2VyIjoie1wiaXNfcHJpdmF0ZVwiOmZhbHNlLFwiaXNfdmVyaWZpZWRcIjpmYWxzZSxcInRodW1iXCI6XCJodHRwOlwvXC9kMWxrcXNkcjMwcWVwdS5jbG91ZGZyb250Lm5ldFwvc3RhZ2luZzRcL3VzZXJzXC90aHVtYlwvbWFsZV9kZWZhdWx0LmpwZ1wiLFwicGljdHVyZVwiOlwiaHR0cDpcL1wvZDFsa3FzZHIzMHFlcHUuY2xvdWRmcm9udC5uZXRcL3N0YWdpbmc0XC91c2Vyc1wvb3JpZ2luYWxcL21hbGVfZGVmYXVsdC5qcGdcIixcImdlbmRlclwiOlwibWFsZVwiLFwiZG9iXCI6XCIxOTkwLTEwLTEwXCIsXCJ3ZWJzaXRlXCI6XCJcIixcImVtYWlsXCI6XCJib3RAZ21haWwuY29tXCIsXCJwaG9uZVwiOlwiKzkyMzEzNDU1NTQ0NFwiLFwiZnVsbF9uYW1lXCI6XCJCb3RcIn0iLCJpYXQiOjE2NTY1ODI1MTd9.fktaohbLTFLfDK8q80q83nRiPy4lsI0tOcUTHp9iLp61mJX5wBT-QG8t1bvKUGREp3mTAXr6K-Ou3T3MhU9kx_aAg3oJLciZ5eEuoD0zFjhWs6stYrTJn7maDMiIrF4i5iU8oqo3NEOAd7UE_AV0HnBLZop9RAX1jHHayGAg4LAkOTmm5qDccUZHBVnYlMzN3PqlScPBbu_FUTpXaRyCvDBrjO54llmp_Vbbx3kXvcr6P4PF-w196WiauFHtShTDnJXCxxHeVbZuy5Dz6QX_7E38euDSJORosQ8nq34DBDwmbnAxfgKuXuatx8xB_qHcsLNw9eIhJKV3kkeqGoKc9g
#    ${body}=    create dictionary   offset=0     limit=40    greater_than=0     less_than=0        lat=25.3626     lon=32.25648
#    ${body1}=   create dictionary  data=${body}
#    ${body_data}=   evaluate     json.dumps(${body1})   json
#    ${response}=     post on session  mysession     /user/friends/posts      headers=${header}     data=${body_data}
##    log to console      ${response[1].content}
##    ${json_body}=   convert to dictionary   ${response[1].content}
#    ${json_body}=   evaluate     json.loads('''${response.content}''')      json
#    log to console      First ID id==>>${json_body['data'][0]['id']}
#    ${data_length}=      get length       ${json_body['data']}
#    log to console      length of JSON Body is ==>>${data_length}
##    Just to traverse in json extracrtor
##    ${body_data}=   evaluate     json.dumps(${json_body})   json
##    log to console      dump data is==>>${body_data}
#
##    ${data_ids}=      Get Value From Json   ${response[1].content}     $.data[.id]
##    log to console      ${data_ids}
#    ${id_list}      create list
#    ${index}    set variable        0
##    FOR    ${id}    IN    ${json_body['data']}
#    FOR    ${id}    IN RANGE    0       ${data_length}
#        log to console      FOR LOOP IDS are:${id}
#        log to console      First ID id==>>${json_body['data'][${id}]['id']}
#        append to list  ${id_list}      ${json_body['data'][${id}]['id']}
##        ${index}=       Evaluate    ${index} + 1
##        log to console      ${index}
#    END
#    log to console  id_list===${id_list}===
#    ${id_count}=    get length  ${id_list}
#    log to console  id_count===${id_count}===














