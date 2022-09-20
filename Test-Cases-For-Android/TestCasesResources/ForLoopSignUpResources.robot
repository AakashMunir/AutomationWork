*** Settings ***
Library  AppiumLibrary
Library  Collections
Library  BuiltIn
Library  String
Library  DateTime
Resource  ../CommonXpathsOrIDs/SignupPath.robot
Library    ExcelLibrary



*** Variables ***
${file_path}        ./ExcelFiles/demo.xlsx


*** Keywords ***



Steps for open fayvo application
    Open the Fayvo application
    open excel document  ${file_path}   sheet_name=Sheet1


Steps for sign up with new email
    sleep  3
    go to profile
    sleep  3

    run keyword and continue on failure  tap on register button
    sleep  3
    sleep  3
    run keyword and continue on failure  tap on email button
    sleep  5

Signup with for loop

    FOR      ${i}        IN RANGE        2       5
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
            ${phonenumber}=  split string  ${string}   .0
            log to console  orignalphone===${phonenumber}[0]===
            set global variable  ${phonenumber}
#            log to console  <<<<<<<<<<<<<------------------------------>>>>>>>>>>>>>>>>
            ${password}=    read excel cell     ${i}       4       Sheet1
            log to console      excelpassword=====>${password}:
            set global variable  ${password}
            log to console  <<<<<<<<<<<<<------------------------------>>>>>>>>>>>>>>>>


            Steps for sign up with new email
            enter email
            enter phone number
            enter name and username
            create new password
            logout for new signup




    END






#    [Arguments]    ${username}    ${email}    ${phone}    ${password}
#    [Arguments]  ${username}    ${email}    ${phone}    ${password}
#    Steps for sign up with new email
#    enter email    ${email}
#    enter phone number    ${phone}
#    enter name and username     ${username}
#    create new password     ${password}
#    logout for new signup
#    log to console  ${username}
#    log to console  ${email}
#    log to console  ${phone}
#    log to console  ${password}


enter email
#    [Arguments]     ${email}
    wait until element is visible  id=android:id/content
    click element  id=android:id/content
    wait until element is visible  id=tv_dialCode
    click element  id=tv_dialCode
    wait until element is visible  id=country_code_picker_search
    input text  id=country_code_picker_search   pak
    wait until element is visible  xpath=//androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[@index='0']
    click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[@index='0']
    wait until element is visible  id=tv_dialCode       timeout=15 seconds
    ${country_code}=    get text  id=tv_dialCode
    set global variable  ${country_code}
    log to console  ${country_code}

    log to console  ${email}

#    ${stringphone}=     convert to string  ${phone_number}
#    set global variable  ${stringphone}
#    log to console  ${stringphone}
#    log to console  ${country_code}${stringphone}


    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText  ${email}
    hide keyboard
enter phone number
#    [Arguments]     ${phonenumber}
    log to console  ${phonenumber}[0]
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText  ${phonenumber}[0]
    tap on login and logout button
    sleep  8
    # Production
#    ${base_url1}=    set variable   http://fayvo-user-production.us-west-2.elasticbeanstalk.com/admin
    # Staging
    ${base_url1}=    set variable   http://user.us-west-2.elasticbeanstalk.com/admin
    create session  mysession1  ${base_url1}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0    api-key=JPS4p@8pbeUO2EY0B3XayUEucRsydO_pd      Content-Type=application/json
    ${body}=    create dictionary   phone=${country_code}${phonenumber}[0]
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

    sleep  3

    input text  id=pinView      ${verification_code}[0]


enter name and username
    wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText
#    [Arguments]     ${username}
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText  ${username}
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText  ${username}
    tap on login and logout button

    sleep  5

create new password
    wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText   timeout=15 seconds
#    [Arguments]     ${password}
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText  ${Password}
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText  ${Password}
    tap on login and logout button


    sleep  5

    run keyword and continue on failure  date of birth and gender
    sleep  3

    run keyword and continue on failure  Category choice
    sleep  8
logout for new signup
    go to profile
    sleep  3
    go to setting
    sleep  5
    tap on login and logout button
    sleep  3
    ok button

