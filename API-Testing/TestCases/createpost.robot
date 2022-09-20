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
${token}        eyJraWQiOiJCcU04b3JIV2c5OXdQek1VSlJ1WXRmd1FsMXdrUnlJTWFYc3Z0SnRLelJzPSIsImFsZyI6IlJTMjU2In0.eyJzdWIiOiJkNGMyNGViYi1mODNjLTQwOTktYTQ1Ny02ZWE4ZjJhOGYxOTIiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiaXNzIjoiaHR0cHM6XC9cL2NvZ25pdG8taWRwLnVzLXdlc3QtMi5hbWF6b25hd3MuY29tXC91cy13ZXN0LTJfS2ZqUk1jNmtMIiwicGhvbmVfbnVtYmVyX3ZlcmlmaWVkIjp0cnVlLCJjdXN0b206dWlkIjoiNzUwY2ViZmYtMTliMC00OTFiLThjZmMtYWE3M2IyYTcyM2VkIiwiY29nbml0bzp1c2VybmFtZSI6IjU2NDU1IiwicHJlZmVycmVkX3VzZXJuYW1lIjoic2hlcmF6IiwiYXVkIjoiNzFsZWttdTVwMmdhMzZlaWFzYWJsdW5tdm0iLCJldmVudF9pZCI6IjEwMzY1YzFmLWUxZDMtNDIyOC05OTQ2LWY3OTkyZGI3YWZiYiIsInRva2VuX3VzZSI6ImlkIiwiYXV0aF90aW1lIjoxNjU2NTc1MDUxLCJwaG9uZV9udW1iZXIiOiIrOTIzMTU0ODg4NTk1IiwiZXhwIjoxNjU2NTc4NjUwLCJ1c2VyIjoie1wiaXNfcHJpdmF0ZVwiOmZhbHNlLFwiaXNfdmVyaWZpZWRcIjpmYWxzZSxcInRodW1iXCI6XCJodHRwOlwvXC9kMWxrcXNkcjMwcWVwdS5jbG91ZGZyb250Lm5ldFwvc3RhZ2luZzRcL3VzZXJzXC90aHVtYlwvNzUwY2ViZmYtMTliMC00OTFiLThjZmMtYWE3M2IyYTcyM2VkXzE2NDQzMjQ1NjM0NTAuanBnXCIsXCJwaWN0dXJlXCI6XCJodHRwOlwvXC9kMWxrcXNkcjMwcWVwdS5jbG91ZGZyb250Lm5ldFwvc3RhZ2luZzRcL3VzZXJzXC9vcmlnaW5hbFwvNzUwY2ViZmYtMTliMC00OTFiLThjZmMtYWE3M2IyYTcyM2VkXzE2NDQzMjQ1NjM0NTAuanBnXCIsXCJnZW5kZXJcIjpcIm1hbGVcIixcImRvYlwiOm51bGwsXCJ3ZWJzaXRlXCI6XCJcIixcImVtYWlsXCI6XCJzaGVyYXpAZmF5dm8uY29tXCIsXCJwaG9uZVwiOlwiKzkyMzE1NDg4ODU5NVwiLFwiZnVsbF9uYW1lXCI6XCJTaGVyYXogSGFzc2FuXCJ9IiwiaWF0IjoxNjU2NTc1MDUxfQ.TmNQ1q0pMpMd0teU2VluCsr0tUfcEUNJ_qSe7hWblscxpe1uEmlJlEt6tblNV4C0p7fhnCMPVnt_kA0K4s5kRMOG3W3Ti_0XiHZ_K9BDZXt40MPxKDW5vgIZvJLOBdv6IVw1_viJaedmA8OJgFSEWDiJzEFoPmmWWING0OagDNMiYzWiYhj0oY3gJDVsvyvdlYii4T8rDgXaxL1O7wmUBSdgjU94wQOF2Qm56WwJjGP1Gvd-tPcSzyHg5WZNXmI8oF1S_OKdNL-8zOqKC12koy_zqR8lSmnksxhAT5ccnbbGGKKCVXj_jCRT-tfLnYnfd-tTjPtZZojO4zE_B-Ck2Q
@{validate}=    Bad     Request     for
@{less_than}=       Invalid param value received
@{greater_than}=    Invalid param value received
${item_type_number}     2
${post_id}     0
${box_ids}     [98205]

*** Test Cases ***
#TC:1 Happy scenario
#    create session  mysession   ${base_url}     verify=True
#    ${header}=  create dictionary   remote-ip=${remote-ip}      device-id=${device-id}      device-type=${device-type}      device-name=${device-name}      user-agent=${user-agent}        x-api-key=${x-api-key}      token=${token}
#    ${body}=    create dictionary   offset=0     limit=40    greater_than=0     less_than=461593        lat=25.3626     lon=32.25648
#    ${body1}=   create dictionary  data=${body}
#    ${body_data}=   evaluate     json.dumps(${body1})   json
#    ${response}=     post on session  mysession     /user/friends/posts      headers=${header}     data=${body_data}
#
#    log to console  ${response.status_code}
#
##    log to console  ${response.content}
#    should be equal as strings  ${response.st


TC8: Scenario to see how many posts have loaded once new offset is called and what was the id of last post in previous offset
#    create session  mysession   ${base_url}     verify=True
#    ${header}=  create dictionary   remote-ip=${remote-ip}      device-id=${device-id}      device-type=${device-type}      device-name=${device-name}      user-agent=${user-agent}        x-api-key=${x-api-key}      token=${token}
#    ${body}=    create dictionary   offset=0     limit=40    greater_than=0     less_than=0        lat=25.3626     lon=32.25648
#    ${body1}=   create dictionary  data=${body}
#    ${body_data}=   evaluate     json.dumps(${body1})   json
#    ${response}=     run keyword and ignore error   post on session  mysession     /user/friends/posts      headers=${header}     data=${body_data}
#    log to console      response==${response}[1]==

#    Box-id= 98205
    ${item_type_number}    set variable  2
    ${post_id}    set variable  0
    ${box_ids}    set variable  [98205]

#    ${item_type_number} set variable   set  2
#    ${post_id} set variable     0
#    ${box_ids} set variable     [98205]
    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary   remote-ip=${remote-ip}      user-agent=${user-agent}        x-api-key=${x-api-key}      token=${token}      lang=en     Content-Type=application/json
    ${body}=    create dictionary   local_db_path=gy9TlsYJ52d2d_001274038626002     source_type=youtube     source_id=orJSJGHjBLI   text_content=Ed Sheeran - Bad Habits [Official Video]   search_key=    item_type_number=2        post_id=0      box_ids=[98205]
    ${body1}=   create dictionary  data=${body}
#    log to console    body1====>${body1}<======body1
#    ${body1}=  Extend Json Obj      ${body1}        key_name    value
#    ${body1}=  Extend Json Obj      ${body1}        post_id     0

    ${body_data1}=   evaluate     json.dumps(${body1})   json
#    log to console     dumps==>${body_data1}<======dumms

    ${str}=     replace string      ${body_data1}      "[98205]"       [98205]
#    log to console  str====>${str}<=====str
#    ${body_data1}=  add object to json      ${body_data1}        post_id     0
#    ${body_data1}=  add object to json      ${body_data1}        box_ids    [98205]
#    ${extended_json_obj}=  add object to json      ${body_data1}        item_type_number    2
#    log to console      extended_json_obj====${extended_json_obj}===
#    ${words}=       split string        ${body_data1}       \n
#    log to console      words==>>>>>${words}
#    ${word_count}=      get line count      ${body_data1}
#    ${body_data2}=   evaluate     json.loads('''${body_data1}''')      json
#    ${body_data1}       ast.literal_eval(${body_data})
#    log to console      loads==>${body_data2}


    create session  mysession   ${base_url}     verify=True
    ${header}=  create dictionary       user-agent=${user-agent}        x-api-key=${x-api-key}      token=eyJraWQiOiJCcU04b3JIV2c5OXdQek1VSlJ1WXRmd1FsMXdrUnlJTWFYc3Z0SnRLelJzPSIsImFsZyI6IlJTMjU2In0.eyJzdWIiOiJlZjA0ODRhOS0wNzJhLTQ2NGItYTRjZi1lNTNlZjZlNDkzMzIiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiaXNzIjoiaHR0cHM6XC9cL2NvZ25pdG8taWRwLnVzLXdlc3QtMi5hbWF6b25hd3MuY29tXC91cy13ZXN0LTJfS2ZqUk1jNmtMIiwicGhvbmVfbnVtYmVyX3ZlcmlmaWVkIjp0cnVlLCJjdXN0b206dWlkIjoiNGFmYjFmY2YtOTg2Ni00OGMyLThlOTctMGRmZWRjNWZlOTVjIiwiY29nbml0bzp1c2VybmFtZSI6IjU2NjA3IiwicHJlZmVycmVkX3VzZXJuYW1lIjoiYm90IiwiYXVkIjoiNzFsZWttdTVwMmdhMzZlaWFzYWJsdW5tdm0iLCJldmVudF9pZCI6IjhhYTgxMTAwLWIwZDktNGI2MS05YWJhLWYzNGQyZjdkNTNhNCIsInRva2VuX3VzZSI6ImlkIiwiYXV0aF90aW1lIjoxNjU2NTc2MjY4LCJwaG9uZV9udW1iZXIiOiIrOTIzMTM0NTU1NDQ0IiwiZXhwIjoxNjU2NTc5ODY4LCJ1c2VyIjoie1wiaXNfcHJpdmF0ZVwiOmZhbHNlLFwiaXNfdmVyaWZpZWRcIjpmYWxzZSxcInRodW1iXCI6XCJodHRwOlwvXC9kMWxrcXNkcjMwcWVwdS5jbG91ZGZyb250Lm5ldFwvc3RhZ2luZzRcL3VzZXJzXC90aHVtYlwvbWFsZV9kZWZhdWx0LmpwZ1wiLFwicGljdHVyZVwiOlwiaHR0cDpcL1wvZDFsa3FzZHIzMHFlcHUuY2xvdWRmcm9udC5uZXRcL3N0YWdpbmc0XC91c2Vyc1wvb3JpZ2luYWxcL21hbGVfZGVmYXVsdC5qcGdcIixcImdlbmRlclwiOlwibWFsZVwiLFwiZG9iXCI6XCIxOTkwLTEwLTEwXCIsXCJ3ZWJzaXRlXCI6XCJcIixcImVtYWlsXCI6XCJib3RAZ21haWwuY29tXCIsXCJwaG9uZVwiOlwiKzkyMzEzNDU1NTQ0NFwiLFwiZnVsbF9uYW1lXCI6XCJCb3RcIn0iLCJpYXQiOjE2NTY1NzYyNjh9.imnARJ5E5HvhKDpjFMZ2QqBfOCXwMSttXeL4ntmNVuVJD-ZrY4ziI4oxCxJVPk2vQfOYWXgn6ver7v2g7HEyZu0XWLFt6R6BxXLLLNGFV8M-dmZBKsF26QUwCKL7_fURrPscjvCmgc0bP31RnUMgv-mA2btN8__YgAjZfuK9t4PrO3fqRFB4cUzl5xXQmaGP3HXktKMeoulcAAIrA4MsaJd6mMnRw5j285ub6klbH65CFoR-rSCXBCPmL2SHhQw7rhphkCH-mWml9oNtDoL64E6Hs2vxS2nFxBmRMQQeVq5AVAkUpEvcJrdrkNhwDn7k04sGddVPJc6pwAUUt18oaw
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








#    ${response}=     post on session  mysession     /post/create-quick-post      headers=${header}       data=${str}
#    log to console      ==>${response.content}
#    ${json_obj}=    to json  ${response.content}
#    ${json_obj}=    to json  ${response.content}
    ${id}=      Get Value From Json   ${json_obj.}     $.data.[.id
    log to console  id=========>${id}<==========
