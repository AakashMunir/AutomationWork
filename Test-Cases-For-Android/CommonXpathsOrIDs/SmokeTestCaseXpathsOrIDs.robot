*** Settings ***
Library  AppiumLibrary
Library  Collections
Library  BuiltIn
Library  String
Library  DateTime
Library    ExcelLibrary
Library  Process
Library  RequestsLibrary
Library  JSONLibrary
#Resource  ../ExcelPath/SmokeTestCaseExcelPath.robot


*** Variables ***
${usernmaeupdate}   akash111
${usernameupdate1}  malikaakash
${appiumServer}     http://localhost:4723/wd/hub
${UiAutomation}     UiAutomator2
#${udid}       192.168.100.135:5555
#${udid}       184.254.9.10:5555
#${udid}       184.254.9.31:5555
#${udid}       184.254.9.6:5555
#${udid}       184.254.9.6:5555
#${udid}       184.254.11.1:5555
#${udid}       184.254.11.2:5555

#${udid}       0515343632304338
#${udid}       988a9b48463048514630
#${udid}       4158445559343098
#${udid}       R5CN714NX5K
#${udid}       R3CM504VXFY
#${udid}       5SYPSWVCE6EY6PGQ
#${udid}       0515343632304338
${udid}       1215fc8579951404
#${udid}       emulator-5554
#${udid}       184.254.9.3:5559
#${udid}       R9HR80DCZCK
#${udid}       R58M83FE18Y
${deviceName}       Galaxy A03
${platformName}     Android
${platformVersion}  11
${noReset}          true
${noReset2}          False
${adbExecTimeout}     900000
${uiautomator2ServerInstallTimeout}     100000
${app}              /Users/askash-mbp/Desktop/New Fayvo/com.fayvo_V1122_VN-2.3.12_2022-08-16.apk

#${appPackage}       com.fayvo.staging
#${resourceid}       com.fayvo.staging:id/

${appPackage}       com.fayvo
${resourceid}       com.fayvo:id/

${appActivity}      com.fayvo.ui.main.MainActivity
${file_path}        ./ExcelFiles/TestCaseForSmoke.xlsx
${Comment}          Nice
${before}           Follow
${before1}           FOLLOW
${systemPort}       8100
${newCommandTimeout}    0
${reset}        true



${appiumServer1}     http://localhost:4733/wd/hub
${UiAutomation1}     UiAutomator2
#${udid1}             172.169.87.12:5559
${udid1}             184.254.9.6:5555
#${udid1}             1215fc8579951404
#${udid1}             emulator-5554
${deviceName1}       Galaxy S9 Plus
${platformName1}     Android
${platformVersion1}  11
#${appPackage1}       com.fayvo.staging
${appPackage1}       com.android.chrome
${appActivity1}      com.google.android.apps.chrome.Main
${app1}              E:/Fayvo/V577.apk
${adbExecTimeout1}     900000
${uiautomator2ServerInstallTimeout1}     100000
${newCommandTimeout}    0

${systemPort1}       8290


${New_email}    robot@smoke.com
${phone_number}     3136326900
${new_username}     robot
${Password}     malik0313
${day}      02
${month}     11
${year}     1994
${photoandvideo}            📷 Photos & Videos
${moviesseries}            🎥 Movies & Series
${Music}            🎵 Music
${Books}            📖 Books
${Photosandvideos}            📷 Photos & Videos
${base_url_production}      http://fayvo-user-production.us-west-2.elasticbeanstalk.com/dev-test
${base_url_staging}         https://api.fayvo.com/staging-v4-2
${x-api-key_production}     mdcngY0xrp7ipgSBJFy098tb0QLhRQQv7aorp6b7
${x-api-key_staging}        5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30
${user-agent}               aws-sdk-android/2.18.0 Linux/4.14.116 Dalvik/2.1.0/0 en_PK appVersion/591 apiVersion/4.4, AmazonAPIGateway_6az2tmngeb
${resentserchiescount}      6
*** Keywords ***
Open the Fayvo application
#    open application  ${appiumserver}   AutomationName=${UiAutomation}  systemPort=${systemPort}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}   appPackage=${appPackage}    appActivity=${appActivity}  adbExecTimeout=${adbExecTimeout}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}    newCommandTimeout=${newCommandTimeout}
#    ${appium1}=     open application  ${appiumserver}   AutomationName=${UiAutomation}      udid=${udid}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}   appPackage=${appPackage}    appActivity=${appActivity}     noReset=${noReset}  adbExecTimeout=${adbExecTimeout}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}    newCommandTimeout=${newCommandTimeout}     app=${app}
        ${appium1}=     open application  ${appiumserver}   alias=MyApp1   AutomationName=${UiAutomation}      udid=${udid}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}   appPackage=${appPackage}    appActivity=${appActivity}     noReset=${noReset}  adbExecTimeout=${adbExecTimeout}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}    newCommandTimeout=${newCommandTimeout}
#    ${appium1}=     open application  ${appiumserver}   AutomationName=${UiAutomation}  systemPort=${systemPort}    udid=${udid}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}   appPackage=${appPackage}    appActivity=${appActivity}     noReset=${noReset}  adbExecTimeout=${adbExecTimeout}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}      autoGrantPermissions=True
#    ${appium1}=     open application  ${appiumserver}   AutomationName=${UiAutomation}  systemPort=${systemPort}    udid=${udid}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}   app=${app}  adbExecTimeout=${adbExecTimeout}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}    newCommandTimeout=${newCommandTimeout}
#    ${appium1}=     open application  ${appiumserver}   AutomationName=${UiAutomation}  systemPort=${systemPort}    udid=${udid}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}   app=${app}  adbExecTimeout=${adbExecTimeout}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}
    set global variable  ${appium1}
Open the Fayvo application for smoke
     ${appium1}=     open application  ${appiumserver}   alias=MyApp1   AutomationName=${UiAutomation}      udid=${udid}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}   appPackage=${appPackage}    appActivity=${appActivity}     noReset=${noReset2}  adbExecTimeout=${adbExecTimeout}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}    newCommandTimeout=${newCommandTimeout}     autoGrantPermissions=True
     set global variable  ${appium1}
Open the Fayvo application skip signup
    ${appium1}=     open application  ${appiumserver}   alias=MyApp1   AutomationName=${UiAutomation}      udid=${udid}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}   appPackage=${appPackage}    appActivity=${appActivity}     adbExecTimeout=${adbExecTimeout}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}    newCommandTimeout=${newCommandTimeout}
    set global variable  ${appium1}
Open the Chrom application
#    open application  ${appiumserver}   AutomationName=${UiAutomation}  systemPort=${systemPort}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}   appPackage=${appPackage}    appActivity=${appActivity}  adbExecTimeout=${adbExecTimeout}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}    newCommandTimeout=${newCommandTimeout}
#    ${appium1}=     open application  ${appiumserver}   AutomationName=${UiAutomation}      udid=${udid}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}   appPackage=${appPackage}    appActivity=${appActivity}     noReset=${noReset}  adbExecTimeout=${adbExecTimeout}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}    newCommandTimeout=${newCommandTimeout}     app=${app}
    ${appium2}=     open application  ${appiumserver}   alias=MyApp2   AutomationName=${UiAutomation}      udid=${udid}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}   appPackage=${appPackage1}    appActivity=${appActivity1}     noReset=${noReset}  adbExecTimeout=${adbExecTimeout}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}    newCommandTimeout=${newCommandTimeout}
#    ${appium1}=     open application  ${appiumserver}   AutomationName=${UiAutomation}  systemPort=${systemPort}    udid=${udid}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}   appPackage=${appPackage}    appActivity=${appActivity}     noReset=${noReset}  adbExecTimeout=${adbExecTimeout}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}
#    ${appium1}=     open application  ${appiumserver}   AutomationName=${UiAutomation}  systemPort=${systemPort}    udid=${udid}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}   app=${app}  adbExecTimeout=${adbExecTimeout}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}    newCommandTimeout=${newCommandTimeout}
#    ${appium1}=     open application  ${appiumserver}   AutomationName=${UiAutomation}  systemPort=${systemPort}    udid=${udid}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}   app=${app}  adbExecTimeout=${adbExecTimeout}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}
    set global variable  ${appium2}
#    open excel document  ${file_path}   sheet_name=Sheet1

#repeat keyword  Swipe_up_for_other_profile      5

Open the fayvo second application
    ${appium4}=     open application  ${appiumserver1}   alias=MyApp1   AutomationName=${UiAutomation}      udid=${udid1}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}   appPackage=${appPackage}    appActivity=${appActivity}     noReset=${noReset}  adbExecTimeout=${adbExecTimeout}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}    newCommandTimeout=${newCommandTimeout}
    set global variable  ${appium4}

Swipe_up_for_other_profile
    ${element_size}=    Get Element Size    id=rv_posts
    ${element_location}=    Get Element Location    id=rv_posts
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  400
    Sleep  1

Swipe_up_for_other_zone
    ${element_size}=    Get Element Size    id=rvZones
    ${element_location}=    Get Element Location    id=rvZones
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.1)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  400
    Sleep  1



Swipe_up_for_feed
    ${element_size}=    Get Element Size    id=rvPosts
    ${element_location}=    Get Element Location    id=rvPosts
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.1)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  400
    Sleep  1

Swipe_down_for_other_zone
    sleep  3
    ${element_size}=    Get Element Size    id=rvZones
    ${element_location}=    Get Element Location    id=rvZones
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  800
    Sleep  1

Swipe_down_for_friends_category without internet
    sleep  3
    ${element_size}=    Get Element Size    id=rvPosts
    ${element_location}=    Get Element Location    id=rvPosts
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  800
    error banner
    Sleep  1

Swipe_down_for_friends_category
    sleep  3
    ${element_size}=    Get Element Size    id=rvPosts
    ${element_location}=    Get Element Location    id=rvPosts
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  800
    Sleep  1

Swipe_up_for_You_category
    sleep  3
    ${element_size}=    Get Element Size    id=rvPosts
    ${element_location}=    Get Element Location    id=rvPosts
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1

Swipe_down_for_You_category
    sleep  3
    ${element_size}=    Get Element Size    id=rvPosts
    ${element_location}=    Get Element Location    id=rvPosts
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1


Swipe_down_for_You_category for slow
    sleep  3
    log to console  before swipe
    ${element_size}=    Get Element Size    id=swipe_refresh_layout
    ${element_location}=    Get Element Location    id=swipe_refresh_layout
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1

#    swipe by percent  50    80      50      40
#    scroll down  id=rvSuggestions
    log to console  After swipe

Swipe_down_for_notifications
    sleep  3
    ${element_size}=    Get Element Size    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup
    ${element_location}=    Get Element Location    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.0)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  800
    Sleep  1

Swipe_down_for_other_profile
    log to console  this is other profile
    ${element_size}=    Get Element Size    id=rv_posts
    ${element_location}=    Get Element Location    id=rv_posts
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.1)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.9)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  900
    Sleep  1




check the swipe up coch mark
    ${present}=     run keyword and return status  element should be visible  id=tv_swipe_up_scroll
#    log to console  ${present}
    Run Keyword If    "${present}"=="True"      Check the post and swip

Check the post and swip
    sleep  5
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   id=ivSearchPost
    log to console  ${present}
    Run Keyword If    "${present}"=="True"      Swipe up_in post detail for API post
    Run Keyword If    "${present}"=="False"      Swipe up_in post detail for media post

Swipe up_in post detail for media post
    ${element_size}=    Get Element Size    id=post_img
    ${element_location}=    Get Element Location    id=post_img
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  400
    sleep  5
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   id=ivSearchPost
    log to console  ${present}
    Run Keyword If    "${present}"=="True"      Swipe Down_in post detail for API post
    Run Keyword If    "${present}"=="False"      Swipe Down_in post detail for media post

Swipe up_in post detail for API post
    ${element_size}=    Get Element Size    id=ivSearchPost
    ${element_location}=    Get Element Location    id=ivSearchPost
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  400
    sleep  2
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   id=ivSearchPost
    log to console  ${present}
    Run Keyword If    "${present}"=="True"      Swipe Down_in post detail for API post
    Run Keyword If    "${present}"=="False"      Swipe Down_in post detail for media post


Swipe Down_in post detail for media post
    sleep  2
    ${element_size}=    Get Element Size    id=post_img
    ${element_location}=    Get Element Location    id=post_img
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  300
    Sleep  1
Swipe Down_in post detail for API post
    sleep  2
    ${element_size}=    Get Element Size    id=ivSearchPost
    ${element_location}=    Get Element Location    id=ivSearchPost
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  300
    Sleep  1


Swipe Down_in API Saved button check
    sleep  2
    ${element_size}=    Get Element Size    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/androidx.cardview.widget.CardView/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]
    ${element_location}=    Get Element Location    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/androidx.cardview.widget.CardView/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  300
    Sleep  1




Swipe up for setting changes
    sleep  2
    ${element_size}=    Get Element Size    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v7.widget.RecyclerView
    ${element_location}=    Get Element Location    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v7.widget.RecyclerView
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.6)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  300
    Sleep  1


Swipe up for count the following
    ${element_size}=    Get Element Size    id=rv_follower
    ${element_location}=    Get Element Location    id=rv_follower
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.6)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  700
    Sleep  1
Swipe down for setting for profile image
    log to console  swipe down for save
    sleep  3
    ${element_size}=    Get Element Size    id=dialog_profile_img
    ${element_location}=    Get Element Location    id=dialog_profile_img
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1
    log to console  after swipe down

Swipe up for setting for profile image
    log to console  swipe up for save QR
    sleep  2
    ${element_size}=    Get Element Size    id=dialog_profile_img
    ${element_location}=    Get Element Location    id=dialog_profile_img
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1


Swipe up for setting
    sleep  2
    ${element_size}=    Get Element Size    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ScrollView
    ${element_location}=    Get Element Location    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ScrollView
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1

Swipe up for for you category count
#    wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup
    ${element_size}=    Get Element Size    id=main_parent
    ${element_location}=    Get Element Location    id=main_parent
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.9)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.1)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  900
    Sleep  2
    log to console  Swipe done

Swipe down for for you category count
#    wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup
    ${element_size}=    Get Element Size    id=main_parent
    ${element_location}=    Get Element Location    id=main_parent
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  300
    Sleep  2
    log to console  Swipe done

Swipe up for for you category post scroll
    sleep  5
    ${element_size}=    Get Element Size    id=rvPosts
    ${element_location}=    Get Element Location    id=rvPosts
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  800
    Sleep  1
Pull to refresh at home sreen
    sleep  2
    swipe by percent    50     50     50    80

Swipe Down for story
#    sleep  3
#    wait until element is visible  id=id=storyDisplayImage      timeout=15 seconds
    ${element_size}=    Get Element Size    id=storyDisplayImage
    ${element_location}=    Get Element Location    id=storyDisplayImage
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  300
    Sleep  1


Swipe Down for home
    sleep  3
    ${element_size}=    Get Element Size    id=rvPosts
    ${element_location}=    Get Element Location    id=rvPosts
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  300
    Sleep  1
Swipe Down for tag list
    sleep  3
    ${element_size}=    Get Element Size    id=img_arrow
    ${element_location}=    Get Element Location    id=img_arrow
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  300
    Sleep  1
Swipe up for mobile home
    sleep  5
    ${element_size}=    Get Element Size    id=com.sec.android.app.launcher:id/launcher
    ${element_location}=    Get Element Location    id=com.sec.android.app.launcher:id/launcher
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  800
    Sleep  1


Swipe Down for load boxes data
    sleep  3
    ${element_size}=    Get Element Size    id=rvBoxes
    ${element_location}=    Get Element Location    id=rvBoxes
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1

wipe Down for load boxes data for API
    sleep  3
    ${element_size}=    Get Element Size    id=rv_search_post_results
    ${element_location}=    Get Element Location    id=rv_search_post_results
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1

Swipe Down for edit post1
    sleep  3
    ${element_size}=    Get Element Size    id=ivEditor
    ${element_location}=    Get Element Location    id=ivEditor
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.4)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.6)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  800
    Sleep  1

Swipe Down for edit post2
    sleep  3
    ${element_size}=    Get Element Size    id=ivEditor
    ${element_location}=    Get Element Location    id=ivEditor
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.4)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.4)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.4)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.6)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  800
    Sleep  1


Swipe left for userstory and suggestion user
    ${element_size}=    Get Element Size    id=storiesRV
    ${element_location}=    Get Element Location    id=storiesRV
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.7)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.4)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1


Swipe left for category
    ${element_size}=    Get Element Size    id=rvCategories
    ${element_location}=    Get Element Location    id=rvCategories
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.7)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.4)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1

Swipe left for for you section
    sleep  5
    ${element_size}=    Get Element Size    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[${i}]/androidx.recyclerview.widget.RecyclerView
    ${element_location}=    Get Element Location    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[${i}]/androidx.recyclerview.widget.RecyclerView
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.7)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.4)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1

Swipe left for delete conversation
    ${element_size}=    Get Element Size    xpath=//android.view.ViewGroup/android.widget.TextView[@text='maliko']
    ${element_location}=    Get Element Location    xpath=//android.view.ViewGroup/android.widget.TextView[@text='maliko']
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.8)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.5)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.2)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.5)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  700
    Sleep  1

Swipe left for for share post on whatsapp
    ${element_size}=    Get Element Size    id=rv_share_items
    ${element_location}=    Get Element Location    id=rv_share_items
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.8)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.5)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.2)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.5)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  700
    Sleep  1




Swipe left for edit filter
    ${element_size}=    Get Element Size    id=ivEditor
    ${element_location}=    Get Element Location    id=ivEditor
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.7)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.4)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1
Spacial Chater for login check
    ${Wrong_Username}     read excel cell  5   4   Sheet1
    ${Wrong_Password}     read excel cell   5       5    Sheet1
    log to console  ${Wrong_Username}
    log to console  ${Wrong_Password}
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.EditText     ${Wrong_Username}
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[5]/android.view.ViewGroup/android.widget.EditText     ${Wrong_Password}
    tap on login and logout button
    sleep  2


incomplete email
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText     malik
#    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[5]/android.view.ViewGroup/android.widget.EditText     ${Wrong_Password}
    tap on login and logout button
    sleep  2
    run keyword and continue on failure  page should contain text  Please enter valid email address
invalid phone number
    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText
    sleep  1
    ${present1}=  Run Keyword And Return Status    Element Should Be Visible   id=com.google.android.gms:id/cancel
    Run Keyword If    "${present1}"=="True"    click element  id=com.google.android.gms:id/cancel
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText     malik@malik.com
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText     malik
    tap on login and logout button
    error banner
    sleep  2
    run keyword and continue on failure  page should contain text  Please enter valid phone number

already exist email
    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText
    sleep  1
    ${present1}=  Run Keyword And Return Status    Element Should Be Visible   id=com.google.android.gms:id/cancel
    Run Keyword If    "${present1}"=="True"    click element  id=com.google.android.gms:id/cancel
    select country code sign up
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText     malik.aakash@ilsainteractive.com
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText     3225533890
    tap on login and logout button
    error banner
    sleep  2
    run keyword and continue on failure  page should contain text  This email already exists
without internet correct email and correct phone nummber
    set network connection status  0
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText  ${New_email}  #robot@smoke.com
    hide keyboard
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText  ${phone_number}  # 3151122333
    tap on login and logout button
correct email and correct phone nummber
    set network connection status  2
    sleep  5
    tap on login and logout button

invalid pin send
    sleep  5
    input text  id=pinView      0000
    error banner
valid pin send without internet
    set network connection status  0
       #     Production
    ${base_url1}=    set variable   http://fayvo-user-production.us-west-2.elasticbeanstalk.com/admin
#     Staging
#    ${base_url1}=    set variable   http://user.us-west-2.elasticbeanstalk.com/admin
    create session  mysession1  ${base_url1}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0    api-key=JPS4p@8pbeUO2EY0B3XayUEucRsydO_pd      Content-Type=application/json
    ${body}=    create dictionary   phone=+923151122333
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
#    set network connection status   0
    error banner
valid pin send
    set network connection status  2
    sleep  5
    input text  id=pinView      ${verification_code}[0]
#    set network connection status   0
    error banner





contry code phone number
    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText
    sleep  1
    ${present1}=  Run Keyword And Return Status    Element Should Be Visible   id=com.google.android.gms:id/cancel
    Run Keyword If    "${present1}"=="True"    click element  id=com.google.android.gms:id/cancel
    select country code sign up for detail signup
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText     3269090900
    tap on login and logout button
    error banner
    sleep  2


Wrong data for login check
    ${Wrong_Username1}     read excel cell  6   4   Sheet1
    ${Wrong_Password1}     read excel cell   6       5    Sheet1
    log to console  ${Wrong_Username1}
    log to console  ${Wrong_Password1}
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.EditText     ${Wrong_Username1}
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[5]/android.view.ViewGroup/android.widget.EditText     ${Wrong_Password1}
    tap on login and logout button
    sleep  4


Right data for login check
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[3]/android.view.ViewGroup/android.widget.EditText     malik.aakash@ilsainteractive.com
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.EditText     malik0313
    tap on login and logout button
    sleep  5


tap on login button from splash screen
    click element  id=tvLogin
    sleep  3
go to profile
    wait until element is visible  id=ivProfile     timeout=60 seconds
    click text  Profile
go to setting
    wait until element is visible  id=iv_settings   timeout=60 seconds
    click element  id=iv_settings
go to Deactivate account
    wait until element is visible  id=rlRemoveAccount   timeout=60 seconds
    click element  id=rlRemoveAccount
    wait until element is visible  id=et_currentPassword   timeout=60 seconds
#    click text  Deactivate account
    input text  id=et_currentPassword   malik0313
    click element  id=button
    sleep  3
#    error banner
go to Deactivate account for detail signup
    wait until element is visible  id=rlRemoveAccount   timeout=60 seconds
    click element  id=rlRemoveAccount
    wait until element is visible  id=et_currentPassword   timeout=60 seconds
#    click text  Deactivate account
    input text  id=et_currentPassword   1234567
    click element  id=button
    sleep  3
#    error banner
tap on update username
    wait until element is visible  id=rlChangeUsername      timeout=10 seconds
    click element  id=rlChangeUsername

Update username1
    ${updatename}=  set variable  ${usernameupdate1}
    set global variable  ${updatename}
Update username
    ${updatename}=  set variable  ${usernmaeupdate}
    set global variable  ${updatename}


tap on save button
    wait until element is visible       id=btn_save     timeout=20 seconds
    click element  id=btn_save
tap on back batton
    click element  id=back_iv
match the username on profile page
    ${profile_name}=   get text  id=tv_user_name
    ${result}=  split string  ${profile_name}   @
#    log to console  ${profile_name}
#    log to console  ${result}

    ${matchname}    should contain  ${result}   ${updatename}
#    log to console  match name =${matchname}
#    ${present}=  Run Keyword And Return Status    Element Should Be Visible   id=iv_settings


ok button
    wait until element is visible  id=android:id/button1    timeout=60 seconds
    click element  id=android:id/button1
tap on post
    sleep  3
    wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[3]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.ImageView
    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[3]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.ImageView
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   id=lottieAnim
    Run Keyword If    ${present}    swipe up

match the username on post detail
    ${post_name}=   get text  id=user_name
    log to console  ${post_name}
    ${name}     element text should be  id=user_name     ${updatename}
    log to console  ${name}


tap on post detail like button
    wait until element is visible  id=ivLikePost
    click element  id=ivLikePost
tap for open and close the like list
    click element  id=ivShowHideDialog
match the username in post like section
    sleep  3
    ${present}=  Run Keyword And Return Status    element should be visible  id=txt_title
    Run Keyword If    "${present}"=="False"        Tap on like button in like section
    sleep  2
    ${name_text}=   get text  id=txt_title
#    ${present1}=  Run Keyword And Return Status    should contain  ${result1}[1]   ${name_text}
    ${present1}=  Run Keyword And Return Status    should contain  ${updatename}   ${name_text}
    Run Keyword If    "${present1}"=="False"        Tap on like button in like section
    sleep  3
    ${name_text}=   get text  id=txt_title
    log to console  ${name_text}
#    should be equal as strings  ${result1}[1]   ${name_text}
    run keyword and continue on failure  should be equal as strings  ${updatename}   ${name_text}


got to comment section
    click element  id=tvLeavePostComment
    sleep  2

    input text  id=leaveComment      comment from aakash
send the comnment
    click element  id=send_icon

match the username in post comment section
    ${name_of_users}    create list
    ${all_comments}     get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.viewpager.widget.ViewPager/android.widget.RelativeLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout
    :FOR    ${i}    IN RANGE    1    ${all_comments}+1
    \   ${cat_count_list1}=   get text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.viewpager.widget.ViewPager/android.widget.RelativeLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[${i}]/android.widget.LinearLayout/android.widget.TextView[1]
    \   append to list  ${name_of_users}     ${cat_count_list1}
    log to console  ${name_of_users}


############################ Login Detail Test Cases ##########################

enter email and empty password

    wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[3]/android.view.ViewGroup/android.widget.EditText
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[3]/android.view.ViewGroup/android.widget.EditText     malikaakash.com
    tap on login and logout button
verify enter email and empty password
    sleep  2
    run keyword and continue on failure  text should be visible  Please enter password
enter password and empty email
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[3]/android.view.ViewGroup/android.widget.EditText
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.EditText     malik0313
    tap on login and logout button
verify enter password and empty email
    sleep  2
    run keyword and continue on failure  text should be visible  Please enter username or email address.
incorect email and correct password
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[3]/android.view.ViewGroup/android.widget.EditText
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.EditText
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[3]/android.view.ViewGroup/android.widget.EditText     mmalikaaksh@.com
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.EditText     malik0313
    tap on login and logout button
verify incorect email and correct password
    sleep  2
    run keyword and continue on failure  text should be visible  User name can only contain English alphabets
minimum username character
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[3]/android.view.ViewGroup/android.widget.EditText
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.EditText
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[3]/android.view.ViewGroup/android.widget.EditText     mm
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.EditText     malik0313
    tap on login and logout button
verify minimum username character
    sleep  2
    run keyword and continue on failure  text should be visible  Username should have minimum 3 characters and maximum 64 characters.
maximum username character
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[3]/android.view.ViewGroup/android.widget.EditText
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.EditText
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[3]/android.view.ViewGroup/android.widget.EditText     malikaakashiamfromlahoreandiamdoingtheautomationengineeringjobatilsainteractive
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.EditText     malik0313
    tap on login and logout button
verify maximum username character
    sleep  2
    run keyword and continue on failure  text should be visible  Username should have minimum 3 characters and maximum 64 characters.

minimum password character
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[3]/android.view.ViewGroup/android.widget.EditText
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.EditText
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[3]/android.view.ViewGroup/android.widget.EditText     Akash1
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.EditText     malik
    tap on login and logout button
verify minimum password character
    sleep  2
    run keyword and continue on failure  text should be visible  Password length must be 6 to 25 characters.
maximum password character
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[3]/android.view.ViewGroup/android.widget.EditText
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.EditText
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[3]/android.view.ViewGroup/android.widget.EditText     Akash1
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.EditText     malikaakashiamfromlahoreandiamdoingtheautomationengineeringjobatilsainteractive
    tap on login and logout button
verify maximum password character
    sleep  2
    run keyword and continue on failure  text should be visible  Password length must be 6 to 25 characters.

corect email and incorrect password
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[3]/android.view.ViewGroup/android.widget.EditText
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.EditText
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[3]/android.view.ViewGroup/android.widget.EditText     malik.aakash@ilsainteractive.com
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.EditText     malik0312
    tap on login and logout button
verify corect email and incorrect password
    error banner
background app at login screen
    background app  5
corect email and correct password without internet
    sleep  5
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[3]/android.view.ViewGroup/android.widget.EditText
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.EditText
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[3]/android.view.ViewGroup/android.widget.EditText     malik.aakash@ilsainteractive.com
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.EditText     malik0313
    click element  id=cbRememberMe
verify corect email and correct password without internet
    error banner

verify corect email and correct password with internet
    sleep  10
    run keyword and continue on failure  element should be visible  id=ivHome
verify remember me check
    sleep  5
    run keyword and continue on failure  text should be visible  akash1



############################ Login Detail Test Cases ##########################



android button
    click element  id=button1

close post detail
    click element  id=post_close
go to following section
    click element  id=tv_following
open the profile of 1st user
    click element  id=tvUserName
open the 3rd post of the user
#    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[3]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[4]/android.widget.RelativeLayout
    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[3]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[6]


Profile back button
    wait until element is visible  id=iv_back
    click element  id=iv_back

tap on change password
    wait until element is visible  id=rlChangePswd      timeout=10 seconds
    click element  id=rlChangePswd

tap on verify button
    click element  id=btn_verify
tap on login and logout button
    wait until element is visible  id=button
    click element  id=button
tap on register button
    click element  id=tv_register
#    click element  name=Register Now
############# Skip Sign Up #################
tap on skip sign up button
    sleep  5
    click text  Skip & Discover
all categories name skip sign up
    sleep  10
#    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeImage
    ${categorislistskipsignup}=   get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout
    log to console  categorislist==${categorislistskipsignup}=
    ${catlistwhileskipsignup}   create list
    FOR    ${i}    IN RANGE    1    ${categorislistskipsignup}+1
        ${getcatname}=     get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[${i}]/android.widget.TextView
        log to console  getcatname==${getcatname}=
        append to list  ${catlistwhileskipsignup}   ${getcatname}
    END
    log to console  Cat List ==${catlistwhileskipsignup}==
    set global variable  ${catlistwhileskipsignup}

select categoires skip sign up
    FOR    ${i}    IN    @{catlistwhileskipsignup}
        click text  ${i}
    END

tap on Get Started Button
    click text  Get Started
select categories
    sleep  5
    click text  People
    click text  Books
    click text  Sports
Allow location button after skip sign up
    sleep  15
    run keyword and continue on failure  element should be visible  accessibility_id=Allow While Using App      timeout=30 seconds
    click text  accessibility_id=Allow While Using App

############# Skip Sign Up #################
tap on login button
    sleep  3
    click element  id=tvLogin
Following section should be visible
    element should be visible  id=tv_following
fill the login form field and click on login button
    ${Username}     read excel cell  6   1   Sheet1
    ${Update_password}     read excel cell  6     3   Sheet1
#    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.EditText     ${updatename}
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.EditText     ${Username}
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[5]/android.view.ViewGroup/android.widget.EditText     ${Update_password}
    tap on login and logout button

tap on facebook button
    click element  id=ivFacebook

Facebook login or signup

    ${present}=  Run Keyword And Return Status      element should be visible   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.TextView[2]
    log to console  ${present}

    Run Keyword If    "${present}"=="True"    Sign up with facebook
    Run Keyword If    "${present}"=="False"         Logout from profile


Sign up with facebook
#    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText
#    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText
    sleep  5
    tap on login and logout button
    sleep  3
    ${present}=  Run Keyword And Return Status      element should be visible   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText
    log to console  ${present}

    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText      malik0313
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText      malik0313
    tap on login and logout button
    sleep  5
    ${present}=  Run Keyword And Return Status      element should be visible   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText
    log to console  ${present}

    date of birth and gender
    sleep  5
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   id=tvSelectInterestTitle
    run keyword if  "${present}"=="True"    category choice
    sleep  5
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   id=iv_settings


    go to setting
    sleep  3
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   id=rlChangeUsername

    tap on login and logout button
    sleep  3
    ok button
    sleep  2
    ${present1}=  Run Keyword And Return Status    Element Should Be Visible   id=ivHomeLogo


Logout from profile
    go to profile
    go to setting
    sleep  3

    tap on login and logout button
    sleep  3
    ok button
    sleep  3
    ${present1}=  Run Keyword And Return Status    Element Should Be Visible   id=ivHomeLogo
#    Run Keyword If    "${present1}"=="True"    Expected for 19
#    Run Keyword If    "${present1}"=="False"    Not Expected for 19
#    save excel document  ${file_path}

tap on home button
    sleep  5
    ${h}=  Run Keyword And Return Status    Element Should Be Visible   id=ivHome
#    log to console  this is home=${h}
    Run Keyword If    "${h}"=="True"    click element  id=ivHome
    Run Keyword If    "${h}"=="False"    go back
#    wait until element is visible  id=ivHome
#    Run Keyword If    "${h}"=="False"    click element  id=ivHome


Tap on Google button
    sleep  3
    click element  id=ivGoogle
Tap on Google button on login screen
    sleep  5
    click element  id=btnGmail
Tap on perticular email button
    sleep  5
    log to console  click on email
#    ${webemail}=    get webelement  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.TextView[2]
#    log to console  webemail=${webemail}=
#    ${emailtext}=   get text  ${webemail}
#    log to console  emailtext==${emailtext}=
#    click element  ${webemail}
    click text  ract541@gmail.com
    log to console  click on email
Tap on user email
    sleep  3
#    ${present}=  Run Keyword And Return Status    element should be visible  text=malik.aakash@ilsainteractive.com
    ${present}=  Run Keyword And Return Status    element should be visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]
#    log to console  ${present}
#    Run Keyword If    "${present}"=="True"    click element  text=malik.aakash@ilsainteractive.com
    Run Keyword If    "${present}"=="True"    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]

enter wrong name via google signup
    sleep  2
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText     123456789
verify wrong name via google signup
    sleep  2
    run keyword and continue on failure  text should be visible  Please enter valid name

enter wrong username via google signup
    sleep  2
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText     Khalidbinwalid
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText     123456789
verify wrong username via google signup
    sleep  3
    run keyword and continue on failure  text should be visible  User name must have an English alphabet.

empty name filed and correct username
    clear text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText     Khalidbinwalid
verify empty name filed and correct username
    sleep  2
    run keyword and continue on failure  text should be visible  Please enter your name
empty username filed and correct name
    clear text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText     Khalidbinwalid
verify empty username filed and correct name
    sleep  2
    run keyword and continue on failure  text should be visible  Please enter username
already exist user name
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText     Khalidbinwalid
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText     akash1
verify already exist user name
    sleep  2
    run keyword and continue on failure  text should be visible   This username already exists

without internet correct name and correct username
    set network connection status  0
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText     Khalidbinwalid
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText     Khalidbinwalid

correct name and correct username
    set network connection status  2
    sleep  5

less then 6 characters password
    sleep  2
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText      123
verify less then 6 characters password
     sleep  2
     run keyword and continue on failure  text should be visible  Password length must be 6 to 25 characters.
greater then 25 characters password
    sleep  2
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText      123456789101112131415161718
verify greater then 25 characters password
    sleep  2
    run keyword and continue on failure  text should be visible  Password length must be 6 to 25 characters.
wrong confirm password
    sleep  2
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText      1234567
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText      123
verify wrong confirm password
    sleep  2
    run keyword and continue on failure  text should be visible  Password doesn't match.
without internet correct password
    set network connection status  0
    sleep  2
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText      1234567
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText      1234567
correct password
    set network connection status  2
    sleep  5
dob day
    wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText    timeout=20 seconds
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText       42
verify dob day
    sleep  2
    run keyword and continue on failure  text should be visible  Please enter age
invalid dob
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText   42
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText   15
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout[3]/android.view.ViewGroup/android.widget.EditText   1999
verify invalid dob
    sleep  2
    run keyword and continue on failure  text should be visible  Please enter valid age
correct dob
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText   02
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText   11
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout[3]/android.view.ViewGroup/android.widget.EditText
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout[3]/android.view.ViewGroup/android.widget.EditText   1994

gender change dob
    click element   id=rb_other
    click element   id=rb_female
    click element   id=rb_male

count the checkmark
    wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.ImageView[2]         timeout=60 seconds
    ${checkmarkatcontactlist}=      get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.ImageView[2]
    log to console  checkmarkatcontactlist==${checkmarkatcontactlist}=
    set global variable  ${checkmarkatcontactlist}
unselect all the check mark
    click text  Select individually
without internet skip
    set network connection status  0
    click text  Skip
select the user individually
    FOR    ${i}    IN RANGE    1    ${checkmarkatcontactlist}+1
       click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[${i}]/android.widget.ImageView[2]
    END
follow without internet
    set network connection status  0
    click text  Follow
follow with internet
    set network connection status  2
    sleep  5
    tap on login and logout button

all categories name
    wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[2]/android.widget.TextView
    ${categorislist}=   get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout/android.widget.TextView
    log to console  categorislist==${categorislist}=
    ${catlistwhilesignup}   create list
    FOR    ${i}    IN RANGE    1    ${categorislist}+1
        ${getcatname}=     get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[${i}]/android.widget.TextView
        log to console  getcatname==${getcatname}=
        append to list  ${catlistwhilesignup}   ${getcatname}
    END
    log to console  Cat List ==${catlistwhilesignup}==
    set global variable  ${catlistwhilesignup}

select categoires
    FOR    ${i}    IN    @{catlistwhilesignup}
        click text  ${i}
    END



count the checkmark for suggestion user
    wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.ImageView[2]         timeout=60 seconds
    ${checkmarksuggestionuserlist}=      get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.ImageView[2]
    log to console  checkmarkatcontactlist==${checkmarksuggestionuserlist}=
    set global variable  ${checkmarksuggestionuserlist}
unselect all the check mark for suggestion user
    click text  Select individually
without internet skip for suggestion user
    set network connection status  0
    click text  Skip
select the user individually for suggestion user
    FOR    ${i}    IN RANGE    1    4
       click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[${i}]/android.widget.ImageView[2]
    END
follow without internet for suggestion user
    set network connection status  0
    click text  Follow
follow with internet for suggestion user
    set network connection status  2
    sleep  5
    tap on login and logout button



check the gmail id is new
    sleep  5
#    ${enter_user_detail}=   get text  id=tvTitle

    ${present}=  Run Keyword And Return Status    element text should be   id=tvTitle  Enter Your User Details
    log to console  ${present}
    Run Keyword If    "${present}"=="True"    Enter user details for gemail

Enter user details for gemail
    hide keyboard
    wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText  wali123
    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText  wali123
    tap on login and logout button
    create new password
    date of birth and gender
    category choice



cancel button
    click element  id=android:id/button2
Tap on email button
    click element  id=ivEmail
#    wait until element is visible  id=com.google.android.gms:id/cancel
    sleep  5
    ${present1}=  Run Keyword And Return Status    Element Should Be Visible   id=com.google.android.gms:id/cancel
    Run Keyword If    "${present1}"=="True"    click element  id=com.google.android.gms:id/cancel
enter existing email and phone number
    ${Username}     read excel cell  6   1   Sheet1
    ${exist_number}     read excel cell   5       14    Sheet1
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText  ${Username}
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText  ${exist_number}
    tap on login and logout button
select country code sign up
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

select country code sign up for detail signup
    wait until element is visible  id=tv_dialCode
    click element  id=tv_dialCode
    wait until element is visible  id=country_code_picker_search
    input text  id=country_code_picker_search   Estonia
    wait until element is visible  xpath=//androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[@index='0']
    click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[@index='0']
    wait until element is visible  id=tv_dialCode       timeout=15 seconds
    ${country_code}=    get text  id=tv_dialCode
    set global variable  ${country_code}
    log to console  ${country_code}

enter email and phone number
    wait until element is visible  id=android:id/content
    click element  id=android:id/content
    select country code sign up
    log to console  ${New_email}
    log to console  ${phone_number}
    ${stringphone}=     convert to string  ${phone_number}
    log to console  ${stringphone}
    set global variable  ${stringphone}
    log to console  ${country_code}${stringphone}

#    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText
#    clear text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText  ${New_email}  #robot@smoke.com
    hide keyboard
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText  ${phone_number}  # 3136362900
    tap on login and logout button
    error banner
    sleep  8
#     Production
    ${base_url1}=    set variable   http://fayvo-user-production.us-west-2.elasticbeanstalk.com/admin
#     Staging
#    ${base_url1}=    set variable   http://user-staging.fayvo.com/admin
    create session  mysession1  ${base_url1}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0    api-key=JPS4p@8pbeUO2EY0B3XayUEucRsydO_pd      Content-Type=application/json
    ${body}=    create dictionary   phone=${country_code}${stringphone}
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
error banner
#    sleep  1
    ${errorbaner}=  run keyword and return status  element should be visible  id=ivImageError
#    log to console  error===${errorbaner}=
    run keyword and continue on failure     Run Keyword If    "${errorbaner}"=="True"    element should be visible  id=ivImageError
    run keyword and continue on failure     Run Keyword If    "${errorbaner}"=="True"    error text
    run keyword and continue on failure     Run Keyword If    "${errorbaner}"=="False"    log to console  Pass Server

error text
    ${errortext}=   get text  id=tvMessage
#    ${errortext}=   get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout[2]/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.TextView
#    ${errortext}=   get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.TextView
    log to console  errortext===${errortext}==
Put the verification code
    sleep  3
    input text  id=pinView      ${verification_code}[0]
#    set network connection status   0
    error banner


enter name and username
    wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText  ${new_username}
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText  ${new_username}
#    set network connection status   0
    tap on login and logout button
    error banner

create new password
    wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText   timeout=15 seconds
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText  ${Password}
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText  ${Password}
    tap on login and logout button
    error banner

date of birth and gender
    wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText    timeout=20 seconds
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText   ${day}
    input text  xpath=hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText    ${month}
    input text  xpath=hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout[3]/android.view.ViewGroup/android.widget.EditText    ${year}
    click element  id=rb_male
    tap on login and logout button
    sleep  5
    error banner

Category choice

    ${ContactFollow}=  Run Keyword And Return Status    text should be visible  Follow
    log to console  Contact list===${ContactFollow}=
#    set network connection status  0
    run keyword and continue on failure     Run Keyword If    "${ContactFollow}"=="True"    click text  Follow
    run keyword and continue on failure     Run Keyword If    "${ContactFollow}"=="False"    click text  Skip
    error banner
#    set network connection status  0
    sleep  3
    ${retrybuttononcategory}=   run keyword and return status  element should be visible  id=icRetry
    log to console      retrybuttononcategory===${retrybuttononcategory}==
    run keyword and continue on failure  Run Keyword If    "${retrybuttononcategory}"=="True"    click text  Skip
    run keyword and continue on failure  Run Keyword If    "${retrybuttononcategory}"=="True"    text should be visible  People
    run keyword and continue on failure  Run Keyword If    "${retrybuttononcategory}"=="False"    click text  People
    run keyword and continue on failure  Run Keyword If    "${retrybuttononcategory}"=="False"    click text  Books
    run keyword and continue on failure  Run Keyword If    "${retrybuttononcategory}"=="False"    click text  Sports
    run keyword and continue on failure  Run Keyword If    "${retrybuttononcategory}"=="False"    click text  Find People
    log to console  do the follow now
    error banner
    sleep  5
#    ${SuggestionFollow}=  Run Keyword And Return Status    text should be visible  Follow
    ${SuggestionFollow}=  Run Keyword And Return Status    element should be visible  id=rvUsers
    log to console  Suggestions===${SuggestionFollow}=

    run keyword and continue on failure     Run Keyword If    "${SuggestionFollow}"=="True"    element should be visible  id=rvUsers
    run keyword and continue on failure     Run Keyword If    "${SuggestionFollow}"=="True"    click element  id=tvSelectIndividually
    run keyword and continue on failure     Run Keyword If    "${SuggestionFollow}"=="True"    click text  Skip
    run keyword and continue on failure     Run Keyword If    "${SuggestionFollow}"=="False"    click text  Skip
    error banner
    sleep  8

Tap on forgot password
    click element  id=tvForgotPassword
Check the phone number field validation
    sleep  3
    ${str}     read excel cell   6       5    Sheet1
    input text  id=etInput      ${str}
    tap on login and logout button
    sleep  3
    ${special_character}     read excel cell   5       4    Sheet1
    input text  id=etInput      ${special_character}
    tap on login and logout button
    sleep  3
    ${min_char}      read excel cell   5       10    Sheet1
    input text  id=etInput      ${min_char}
    tap on login and logout button
    sleep  3
    ${max_char}     read excel cell   5       15    Sheet1
    ${interg}   convert to integer  ${max_char}
    input text  id=etInput      ${interg}
    tap on login and logout button
    sleep  3
    ${exist_number}     read excel cell   5       14    Sheet1
    input text  id=etInput      ${exist_number}
    tap on login and logout button
create new password validations
    sleep  8

    # Min Length
    ${min_char}      read excel cell   5       10    Sheet1
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText  ${min_char}
    tap on login and logout button
    sleep  3

    # Max Length
    ${max_char}     read excel cell   5       15    Sheet1
    ${interg}   convert to integer  ${max_char}
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText  ${interg}
    tap on login and logout button
    sleep  3

    # Empty Re-enter password
    ${Password}     read excel cell   5       2    Sheet1
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText  ${Password}
    tap on login and logout button
    sleep  3

    # Right data for create password
    ${Password}     read excel cell   5       2    Sheet1
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText  ${Password}
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText  ${Password}
    tap on login and logout button

after change password click on login
    click element  id=btnSubmit
#login card button
#    click element   id=tvLogin
tap on friends button
    wait until element is visible  xpath=//android.widget.TextView[@text='Feed']
    click element  xpath=//android.widget.TextView[@text='Feed']
tap on people category
    sleep  3
    click text  People
    sleep  2
tap on for you category
    wait until element is visible  xpath=//android.widget.LinearLayout[2]/android.widget.TextView[@text='For You']
    click element  xpath=//android.widget.LinearLayout[2]/android.widget.TextView[@text='For You']
    sleep  2
#    Swipe_down_for_You_category

get the username form profile
    ${profile_name}=   get text  id=tv_user_name
    ${result1}=  split string  ${profile_name}   @
    set global variable  ${result1}
    log to console  ${result1}
tap on 2nd user on following list
    sleep  3
    click text  maliksaab
#    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.viewpager.widget.ViewPager/android.widget.RelativeLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[2]/android.widget.RelativeLayout[1]/android.widget.TextView[1]
tap on following list
    sleep  5
#    wait until element is visible  id=tv_following_value
    click text  Following

block the user
    run keyword and continue on failure  wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[3]/android.widget.RelativeLayout[1]/android.widget.TextView[1]
    ${blocked_username}=    get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[3]/android.widget.RelativeLayout[1]/android.widget.TextView[1]
    set global variable  ${blocked_username}
    run keyword and continue on failure  click element   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[3]/android.widget.RelativeLayout[1]/android.widget.TextView[1]
#    click element   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.viewpager.widget.ViewPager/android.widget.RelativeLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[1]/android.widget.RelativeLayout[1]/android.widget.TextView[1]
    sleep  5
    run keyword and continue on failure  click element  id=iv_user_profile_more
    sleep  5
    run keyword and continue on failure  click element  id=tvBlock
    sleep  5
    run keyword and continue on failure  go back
    sleep  2
    run keyword and continue on failure  go back

#following count reagain
following count
    sleep  7
    ${following_count}=  get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.TextView
    ${string}=    Set Variable    ${following_count}
    ${str}=       Split String    ${string}
    ${following_name_list}     create list
    set global variable  ${following_name_list}
    ${val}=     convert to integer  ${str}[0]
    log to console  This is val =${val}
    ${val1}=    evaluate  ${val}-2
    log to console  ${val1}


#    log to console
    :FOR    ${i}    IN RANGE    1    9999
    \   sleep  3
    \   ${nameOfFollowingAfterRemoveDuplication}=   remove duplicates  ${following_name_list}
    \   ${following_list_count}=  get length  ${nameOfFollowingAfterRemoveDuplication}
    \   log to console  ${following_list_count}
#    \   exit for loop if  "${following_list_count}" ==  "${val1}"
    \   Exit For Loop IF    "${following_list_count}" == "${val1}"
    \   Exit For Loop IF    "-2" == "${val1}"
    \   Exit For Loop IF    "-1" == "${val1}"
    \   Run Keyword If    "${i}"=="1"    Loop function
    \   Run Keyword If    "${i}"=="1"    swipe up for count the following
    \   sleep  5
    \   Loop function1
    \   swipe up for count the following

    sleep  5
    Loop function2


    log to console  ${following_name_list}

    ${length1}=  get length  ${following_name_list}
    log to console  length of name before removing duplication=${length1}

    ${remove_duplication1}   create list
    ${remove_duplication}=  remove duplicates  ${following_name_list}
#    ${remove_duplication1}=     remove values from list     ${remove_duplication}     Boxes
    set global variable  ${remove_duplication}
    ${following_count_inner}=  get length  ${remove_duplication}

    log to console  length of name =${following_count_inner}
    log to console  Name of Users =${remove_duplication}


    log to console  ${str}[0]= this is split
    should be equal as integers   ${str}[0]     ${following_count_inner}

Loop function
    sleep  5
    ${inner_follow_count}=      get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.viewpager.widget.ViewPager/android.widget.RelativeLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout
    log to console  ${inner_follow_count}

    :FOR    ${i}    IN RANGE    1    ${inner_follow_count}-1
    \   log to console  ${i}
    \   ${following_name}=   get text    xpath=//androidx.viewpager.widget.ViewPager/android.widget.RelativeLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[${i}]/android.widget.RelativeLayout[1]/android.widget.TextView[1]
    \   log to console  ${following_name}
    \   append to list  ${following_name_list}   ${following_name}
    log to console  Loop 1 end

Loop function1
    ${inner_follow_count}=      get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.viewpager.widget.ViewPager/android.widget.RelativeLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout
    log to console  ${inner_follow_count}

    :FOR    ${i}    IN RANGE    2    ${inner_follow_count}-1
    \   log to console  ${i}
    \   ${following_name}=   get text    xpath=//androidx.viewpager.widget.ViewPager/android.widget.RelativeLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[${i}]/android.widget.RelativeLayout[1]/android.widget.TextView[1]
    \   log to console  ${following_name}
    \   append to list  ${following_name_list}   ${following_name}

Loop function2
    ${inner_follow_count}=      get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.viewpager.widget.ViewPager/android.widget.RelativeLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout
    log to console  ${inner_follow_count}

    :FOR    ${i}    IN RANGE    1    ${inner_follow_count}+1
    \   log to console  ${i}
    \   ${following_name}=   get text    xpath=//androidx.viewpager.widget.ViewPager/android.widget.RelativeLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[${i}]/android.widget.RelativeLayout[1]/android.widget.TextView[1]
    \   log to console  ${following_name}
    \   append to list  ${following_name_list}   ${following_name}

search follow like comment and shre post
    sleep  2
    tap on home button
    wait until element is visible  id=ivSearch
    click element  id=ivSearch
    sleep  3
    clear text  id=edtSearch
    sleep  2
    input text  id=edtSearch    aakash
    sleep  3
    hide keyboard
    run keyword and continue on failure  wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.LinearLayout/android.widget.TextView
    run keyword and continue on failure  element should be visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.TextView[@text='aakash']
    ${checknameinlist}=     run keyword and return status  element should be visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.TextView[@text='aakash']
    log to console  checknameinlist===${checknameinlist}
    Run Keyword If    "${checknameinlist}"=="True"     click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.TextView[@text='aakash']
    Run Keyword If    "${checknameinlist}"=="False"    click text  People
    Run Keyword If    "${checknameinlist}"=="False"    sleep  3
    Run Keyword If    "${checknameinlist}"=="False"    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.TextView[@text='aakash']
    sleep  5
    ${followbutton}=  Run Keyword And Return Status    Element Should Be Visible   xpath=//android.widget.TextView[@text='FOLLOW']
    log to console  ${followbutton}
    run keyword and continue on failure     Run Keyword If    "${followbutton}"=="True"    click element  xpath=//android.widget.TextView[@text='FOLLOW']
    sleep  8
    Like comment and send message
    run keyword and continue on failure  profile back button
    go back
#    sleep  1
#    go back

Like comment and send message
    view user box on guest mode
    view user post on guest mode
    Long press share via internal on post detail
    Like the post and check like
    go back
    go back






################################################ This is feed code #############################################
tap on follow button and check the status of follow button
    sleep  2
    Swipe_down_for_friends_category
    sleep  5
Feed screen referesh call without internet
    sleep  2
    Swipe_down_for_friends_category
    error banner
Feed screen categories without internet open application
    sleep  2
    ${categorieswithoutinternet}=   get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout
    log to console  categorieswithoutinternet==${categorieswithoutinternet}=
    should not be equal as numbers  3   ${categorieswithoutinternet}
Feed screen post without internet open application
    wait until element is visible  id=bgGradient    timeout=30 seconds
    element should be visible   id=bgGradient

Feed screen connect internet and verify data
    sleep  5
    ${categorieswithoutinternet}=   get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout
    log to console  categorieswithoutinternet==${categorieswithoutinternet}=
    should not be equal as numbers  2   ${categorieswithoutinternet}
Feed Guest mode
    go to profile
    run keyword and continue on failure  text should be visible  Register Now
    tap on home button
    tap on friends button
    sleep   3
    run keyword and continue on failure  text should be visible  Suggested Friends
Feed screen with auth mode
    tap on home button
    tap on friends button
    sleep   3
    run keyword and continue on failure  page should not contain text  Suggested Friends

Block user then verify its posts at feed
    sleep  3
    ${feedusernameforblock}=    get text  id=tvUserName
    log to console  feedusernameforblock==${feedusernameforblock}

    ${usernamesplitresult}=  split string  ${feedusernameforblock}   @
    set global variable  ${usernamesplitresult}
    log to console  ${usernamesplitresult}

    click element  id=tvUserName
    sleep  3
    sleep  5
    click element  id=iv_user_profile_more
    sleep  5
    click element  id=tvBlock
    sleep  5
    go back
    Swipe_down_for_friends_category
    Swipe_down_for_friends_category
    sleep  3
    run keyword and continue on failure  page should not contain text  ${usernamesplitresult}[1]

Follow the some one and verify his post are showing at feed screen
    go to profile
    go to setting
    tap on blocked users
    checked blocked users
    go back
    tap on home button
    sleep  2
    tap on home button
    wait until element is visible  id=ivSearch
    click element  id=ivSearch
    sleep  3
    clear text  id=edtSearch
    sleep  2
    input text  id=edtSearch    maliksaab
    sleep  3
    hide keyboard
    run keyword and continue on failure  wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.LinearLayout/android.widget.TextView
    run keyword and continue on failure  element should be visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.TextView[@text='maliksaab']
    ${checknameinlist}=     run keyword and return status  element should be visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.TextView[@text='maliksaab']
    log to console  checknameinlist===${checknameinlist}
    Run Keyword If    "${checknameinlist}"=="True"     click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.TextView[@text='maliksaab']
    Run Keyword If    "${checknameinlist}"=="False"    click text  People
    Run Keyword If    "${checknameinlist}"=="False"    sleep  3
    Run Keyword If    "${checknameinlist}"=="False"    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.TextView[@text='maliksaab']
    sleep  5
    ${followbutton}=  Run Keyword And Return Status    Element Should Be Visible   xpath=//android.widget.TextView[@text='FOLLOW']
    log to console  ${followbutton}
    run keyword and continue on failure     Run Keyword If    "${followbutton}"=="True"    click element  xpath=//android.widget.TextView[@text='FOLLOW']
    sleep  8
    go back
    sleep  2
    go back
    Swipe_down_for_friends_category
    sleep  3
    run keyword and continue on failure  text should be visible  ${usernamesplitresult}[1]



without internet Long Press report post
    wait until element is visible  id=bgGradient    timeout=30 seconds
    long press   id=bgGradient
    sleep  3
    click text  Report
    sleep  3
#    click element  id=tv_spam
    click text  It's spam
    error banner
    sleep  2
Long Press report post
    wait until element is visible  id=bgGradient    timeout=30 seconds
    long press   id=bgGradient
    sleep  3
    click text  Report
    sleep  3
#    click element  id=tv_spam
    click text  It's spam
    error banner
    sleep  2


without internet Long press share via internal
    wait until element is visible  id=bgGradient    timeout=30 seconds
    long press   id=bgGradient
    sleep  3
    click text  Send via Direct Message
    error banner
    sleep  3
    go back
Long press share via internal
    wait until element is visible  id=bgGradient    timeout=30 seconds
    long press   id=bgGradient
    sleep  3
    click text  Send via Direct Message
    sleep  3
    input text  id=etSearch     maliko
    sleep  3
    click element  xpath=//android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.TextView[@text='maliko']
    sleep  3
    input text      id=etComment    check it
    sleep  3
    click element  id=send_icon



################################################ This is feed code #############################################


####################### for logout and loging #########################
for logout and loging for no video play
    log to console  Now Run Logout and Login
    go to profile
    sleep  3
    go to setting
    sleep  3
    tap on login and logout button
    sleep  3
    ok button
    sleep  2
    go to profile
    sleep  3
    tap on register button
    sleep  2
    tap on login button from splash screen
    sleep  3
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.EditText     maliko
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[5]/android.view.ViewGroup/android.widget.EditText     malik0313
    tap on login and logout button
    sleep  3
    log to console  before home
    tap on home button
    log to console  after home
    sleep  3
    log to console  before feed
    tap on friends button
    log to console  after feed
###################### for logout and loging #########################

###################### no video play catch ###########################
no video play catch
    log to console  No Video Play Catch
    sleep  2
    set network connection status   0
    sleep  2
    Swipe_down_for_friends_category
    sleep  2
    repeat keyword  7 times  Swipe_up_for_feed
    ${wifi}=    get network connection status
    log to console  about network=${wifi}
    ${ab}=  run keyword and return status  element should be enabled  id=ivLoading
    log to console  loader is enable or not=${ab}
    run keyword and continue on failure  Run Keyword If    "${wifi}"=="4"    element should be enabled  id=ivMute
    run keyword and continue on failure  Run Keyword If    "${wifi}"=="6"    element should be enabled  id=ivMute

    sleep   5
    go to profile
    sleep  3
    go to setting
    sleep  3
    tap on login and logout button
    sleep  3
    ok button
    set network connection status   2

    Steps for login with email

    log to console  before home
    tap on home button
    log to console  after home
    sleep  3
    log to console  before feed
    tap on friends button
    log to console  after feed
###################### no video play catch ###########################

################################################## for time check ############################################################
for time check
    log to console  For Time Match From Post Detail
    sleep  5
    element should be enabled  id=playerContainer
    ${ab}=  run keyword and return status  element should be enabled  id=playerContainer
    log to console  player is enable or not=${ab}
    ${a}=   get text  id=tvVideoDuration
    log to console  This is outer time=${a}
    sleep  2
    Run Keyword If    "${ab}"=="True"    click element  id=playerContainer
    wait until element is visible  id=img_play
    click element  id=img_play
    ${b}=   get text  id=duration
    log to console  This is inner time=${b}
#    run keyword and continue on failure  should not be equal  ${a}       ${b}
    log to console  close the post.
    click element  id=iv_post_close
################################################## for time check ############################################################

################################## This is code for sound button #############################################################
This is code for sound button
    log to console  Check the Sound button
    sleep  2
#    ${z}=   run keyword and return status  element should be visible  id=ivMute
#    log to console  THis is status of valume mute=${z}
#    Run Keyword If    "${z}"=="True"    click element  id=ivMute
##    sleep  1
#    run keyword and continue on failure     Run Keyword If    "${z}"=="True"      element should be visible  xpath=//android.widget.TextView[@text='This video has no sound.']


    ${y}=   run keyword and return status  element should be visible  xpath=//XCUIElementTypeButton[@name="MuteOff"]
    log to console  THis is status of valume mute=${y}
    run keyword and continue on failure     Run Keyword If    "${y}"=="True"      element should be visible  xpath=//XCUIElementTypeButton[@name="MuteOff"]
    Run Keyword If    "${y}"=="True"    click element  xpath=//XCUIElementTypeButton[@name="MuteOff"]
    sleep  5
    Run Keyword If    "${y}"=="True"    click element  xpath=//XCUIElementTypeButton[@name="MuteOff"]
#
################################## This is code for sound button #############################################################
##################################### internet should be off then appicatiuon in background and close then verify video ####################################
internet should be off and on then appicatiuon in background and close then verify video
    log to console  Internet OFF Put It Background and Close ForceFully
    sleep  3
    run keyword and continue on failure  put the application in background and verify the video
    sleep  3
    run keyword and continue on failure  application forcefully close and verify the video
    sleep  3
    set network connection status   0
    sleep  3
    run keyword and continue on failure  put the application in background and verify the video
    sleep  3
    run keyword and continue on failure  application forcefully close and verify the video
    sleep  3
    set network connection status   2
##################################### internet should be off then appicatiuon in background and close then verify video ####################################

##################################### open the profile and back to home then verify video ####################################
open the profile and back to home then verify video

    log to console  Open Profile and Verify Video time
    sleep  3
    wait until element is visible  id=tvVideoDuration
    ${g}=   get text  id=tvVideoDuration
    log to console  before profile=${g}
    ${i}=   convert time  ${g}
    log to console  that time=${i}
    click element  id=tvUserName
    wait until element is visible  id=iv_back
    click element  id=iv_back
    ${k}=   run keyword and return status  wait until element is visible  id=tvVideoDuration
    log to console  this is loader status==${k}
    ${h}=   get text  id=tvVideoDuration
    log to console  after profile=${h}
    ${j}=   convert time  ${h}
    log to console  this time=${j}
    Run Keyword If    "${j}"=="${i}"    fail  time is equal
    Run Keyword If    "${k}"=="False"   fail  loader is appearing
##################################### open the profile and back to home then verify video ####################################

##################################### open the tray and close the tray then verify video ####################################
open the tray and close the tray then verify video
    log to console  Open Tray and Verify Video time
    sleep  3
    wait until element is visible  id=tvVideoDuration
    ${bef_tray}=   get text  id=tvVideoDuration
    log to console  before tray=${bef_tray}
    long press  id=playerContainer
    go back
    wait until element is visible  id=tvVideoDuration
    ${Aft_tray}=   get text  id=tvVideoDuration
    log to console  after tray=${Aft_tray}
#    run keyword and continue on failure  should not be equal  ${Aft_tray}       ${bef_tray}
##################################### open the tray and close the tray then verify video ####################################

##################################### open the tray and post a comment then verify video ####################################
open the tray and post a comment then verify video
    log to console  Open Tray and Post a Comment Then Verify Video time
    sleep  3
    wait until element is visible  id=tvVideoDuration
    ${bef_comment}=   get text  id=tvVideoDuration
    log to console  before comment=${bef_comment}
    long press  id=playerContainer
    wait until element is visible   xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.TextView[@text='Comment']
    click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.TextView[@text='Comment']
    sleep  3
    input text  id=etAddComment    ${Comment}
    click element  id=ivSendIcon
    wait until element is visible  id=tvVideoDuration
    ${Aft_comment}=   get text  id=tvVideoDuration
    log to console  after comment=${Aft_comment}
#    run keyword and continue on failure  should not be equal  ${Aft_comment}       ${bef_comment}
##################################### open the tray and post a comment then verify video ####################################

##################################### play api post then verify video ####################################
play api post then verify video
    log to console  Play API Sound and Verify Video time
    sleep  3
    ${api_play_button}=     run keyword and return status  element should be enabled  id=ivPlay
    log to console  this is tell us play button===${api_play_button}
    Run Keyword If    "${api_play_button}"=="True"   click element  id=ivPlay

    Run Keyword If    "${api_play_button}"=="True"   wait until element is visible  id=ivAudioTrack
    ${bef_play}=   get text  id=tvVideoDuration
    log to console  before comment=${bef_play}


    Run Keyword If    "${api_play_button}"=="True"   sleep  5
    Run Keyword If    "${api_play_button}"=="True"   click element  id=ivPlay

    wait until element is visible  id=tvVideoDuration
    ${Aft_play}=   get text  id=tvVideoDuration
    log to console  after comment=${Aft_play}
    run keyword and continue on failure  should not be equal  ${Aft_play}       ${bef_play}
##################################### play api post then verify video ####################################


##################################### saved api post then verify video ####################################
saved api post then verify video
    log to console  Saved API Post and Verify Video time
    sleep  3
    wait until element is visible  id=tvVideoDuration
    ${bef_saved}=   get text  id=tvVideoDuration
    log to console  before comment=${bef_saved}
    ${api_saved_button}=     run keyword and return status  element should be enabled  id=ivFayvedIcon
    log to console  this is tell us fayved button===${api_saved_button}
    Run Keyword If    "${api_saved_button}"=="True"   click element  id=ivFayvedIcon
    Run Keyword If    "${api_saved_button}"=="True"   Auto play create and select new box for API Post
    wait until element is visible  id=tvVideoDuration
    ${Aft_saved}=   get text  id=tvVideoDuration
    log to console  after comment=${Aft_saved}
    run keyword and continue on failure  should not be equal  ${Aft_saved}       ${bef_saved}
##################################### saved api post then verify video ####################################

##################################### removed api post then verify video ####################################
removed api post then verify video
    log to console  Saved API Post and Verify Video time
    sleep  3
    wait until element is visible  id=tvVideoDuration
    ${bef_removed}=   get text  id=tvVideoDuration
    log to console  before comment=${bef_removed}
    ${api_removed_button}=     run keyword and return status  element should be enabled  id=ivFayvedIcon
    log to console  this is tell us fayved button===${api_removed_button}
    Run Keyword If    "${api_removed_button}"=="True"   click element  id=ivFayvedIcon
    Run Keyword If    "${api_removed_button}"=="True"   wait until element is visible  id=tv_remove_post
    Run Keyword If    "${api_removed_button}"=="True"   click element  id=tv_remove_post
    wait until element is visible  id=tvVideoDuration
    ${Aft_removed}=   get text  id=tvVideoDuration
    log to console  after comment=${Aft_removed}
    run keyword and continue on failure  should not be equal  ${Aft_removed}       ${bef_removed}
##################################### removed api post then verify video ####################################



#######################  Put the appliaction in background then verify video is pause or not ################################
put the application in background and verify the video
    sleep  3
    wait until element is visible  id=tvVideoDuration
    ${c}=   get text  id=tvVideoDuration
    log to console  before bacground=${c}
    background app  5
    sleep  3
    wait until element is visible  id=tvVideoDuration
    ${d}=   get text  id=tvVideoDuration
    log to console  after bacground=${d}
#    run keyword and continue on failure  should not be equal  ${c}       ${d}
#######################  Put the appliaction in background then verify video is pause or not ################################
#######################  forcfully close application then verify video is pause or not ################################
application forcefully close and verify the video
    sleep  3
    wait until element is visible  id=tvVideoDuration
    ${e}=   get text  id=tvVideoDuration
    log to console  before close=${e}
    close application
    Open the Fayvo application
    sleep  3
    wait until element is visible  id=tvVideoDuration
    ${f}=   get text  id=tvVideoDuration
    log to console  after close=${f}
#     run keyword and continue on failure  should not be equal  ${e}       ${f}
#######################  forcfully close application then verify video is pause or not ################################

verify username on post detail
    sleep  5
    click element  id=bgGradient
    sleep  3
    element should be visible  id=cv_post_user
    go back

entity shareing from feed
    sleep  5
    long press   id=bgGradient
    sleep  3
    click element   id=rootLayout
check the fayved button
    sleep  5
    ${fayvedbuttoncheck}=   run keyword and return status  element should be visible  id=tvFayvedCount
    log to console  fayvedbuttoncheck===${fayvedbuttoncheck}=
    Run Keyword If    "${fayvedbuttoncheck}"=="True"        fayve count
    Run Keyword If    "${fayvedbuttoncheck}"=="True"        save post by fayved button
    Run Keyword If    "${fayvedbuttoncheck}"=="True"        fayve count
fayve count
    ${FayvedCount}=     get text  id=tvFayvedCount
    log to console  FayvedCount==${FayvedCount}
save post by fayved button
    long press   id=bgGradient
    sleep  3
    click text  Save
    sleep  3
    create and select new box for for you post save

without inter like with longpress
    sleep  5
    long press   id=bgGradient
    sleep  3
    ${lovebutton}=  run keyword and return status  element should be visible  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.TextView[@text='Love']
    log to console  lovebutton===${lovebutton}=

    Run Keyword If    "${lovebutton}"=="True"        click text  Cancel
    Run Keyword If    "${lovebutton}"=="False"        click text  Like

like with longpress
    sleep  5
    long press   id=bgGradient
    sleep  3
    ${lovebutton}=  run keyword and return status  element should be visible  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.TextView[@text='Love']
    log to console  lovebutton===${lovebutton}=

    Run Keyword If    "${lovebutton}"=="True"        click text  Cancel
    Run Keyword If    "${lovebutton}"=="False"        click text  Like
    sleep  2
    click element   id=bgGradient
    sleep  3
    Check name in like section
    sleep  3
    click element  id=iv_post_close


open post detail and swip
    sleep  3
#    ${x}=   run keyword and return status  element should be visible  id=ivSrcIcon
#    log to console  this is tell us about API Post=${x}
#
#    Run Keyword If    "${x}"=="True"        click element  id=ivSrcIcon
##    Run Keyword If    "${x}"=="True"        click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[8]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeImage
##    Run Keyword If    "${x}"=="True"        click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[4]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeImage
##    Run Keyword If    "${x}"=="False"        click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[4]/XCUIElementTypeOther/XCUIElementTypeImage
#    Run Keyword If    "${x}"=="False"        click text  go
#    click text  now
#    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]
#    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[3]/android.widget.ImageView
#    click element  id=ivSrcIcon
    click element  id=bgGradient
#    click element  xpath=//*[contains(@text,"now") or contains(@text, "ago")]
    sleep  3
    check the swipe up coch mark

Like the post and check like
    sleep  3
    long press   id=post_img
    sleep  2
    ${lovebutton}=  run keyword and return status  element should be visible  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.TextView[@text='Love']
    log to console  lovebutton===${lovebutton}=

    Run Keyword If    "${lovebutton}"=="True"        unlike on post detail with longpress
    Run Keyword If    "${lovebutton}"=="False"        like on post detail with longpress
    sleep  2

unlike on post detail with longpress
    sleep  2
    click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.TextView[@text='Love']
    check unlike in list from post detail

check unlike in list from post detail
    sleep  3
    click text  Add a comment
    sleep  2
    click text  Likes
    sleep  2
    run keyword and continue on failure  page should not contain text  akash1
    go back

check like in list from post detail
    sleep  3
    click text  Add a comment
    sleep  2
    click text  Likes
    sleep  2
    run keyword and continue on failure  page should contain text  akash1
    go back

like on post detail with longpress
    sleep  2
    run keyword and continue on failure  click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.TextView[@text='Like']
    sleep  2
    check like in list from post detail

Tap on like button in like section
    go back
    wait until element is visible  id=iv_post_like
    click element  id=iv_post_like
    click element   id=tv_recent_like
Check name in like section
    sleep   5
    wait until element is visible  xpath=//android.widget.TextView[@text='Add a comment']
    ${present}=  Run Keyword And Return Status    element should be visible  xpath=//android.widget.TextView[@text='Add a comment']
    log to console  this is like status=${present}
    Run Keyword If    "${present}"=="True"        click text  Add a comment
    Run Keyword If    "${present}"=="True"        wait until element is visible  xpath=//android.widget.TextView[@text='Likes']
    Run Keyword If    "${present}"=="True"        click text  Likes
    sleep  5
    run keyword and continue on failure  Run Keyword If    "${present}"=="True"        page should contain text  ${result1}[1]
    go back


Comment with longpress on post detail
#    ${present}=  Run Keyword And Return Status    Element Should Be Visible   id=ivSearchPost
#    log to console  ${present}
#    Run Keyword If    "${present}"=="True"      long press   id=tvSearchTitle
#    Run Keyword If    "${present}"=="False"      long press   id=post_img
    long press   id=post_img
    sleep  2
#    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]
    click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.TextView[@text='Comment']
    sleep  3
#    input text  id=leaveComment    ${Comment}
    input text  id=et_comment    ${Comment}
    click element  id=send_icon
    sleep  3
    ${name_of_users}    create list
    hide keyboard
    sleep  2
    ${all_comments}     get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.RelativeLayout[2]/androidx.viewpager.widget.ViewPager/android.widget.RelativeLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout
    :FOR    ${i}    IN RANGE    1    ${all_comments}+1
    \   ${cat_count_list1}=   get text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.RelativeLayout[2]/androidx.viewpager.widget.ViewPager/android.widget.RelativeLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[${i}]/android.widget.LinearLayout/android.widget.TextView[3]
    \   ${Com1}=    Remove String   ${cat_count_list1}     ${SPACE}
    \   append to list  ${name_of_users}     ${Com1}
    log to console  ${name_of_users}
    ${Com2}=    Remove String   ${Comment}     ${SPACE}
    list should contain value  ${name_of_users}     ${Com2}
    sleep  3
#    click element   id=ivShowHideDialog
    go back

Without internet Comment with longpress
    wait until element is visible  id=bgGradient    timeout=30 seconds
    long press   id=bgGradient
    sleep  3
    click text  Comment
    sleep  3
    input text  id=etAddComment    ${Comment}
    click element  id=ivSendIcon
    sleep  3
Comment with longpress
    wait until element is visible  id=bgGradient    timeout=30 seconds
    long press   id=bgGradient
    sleep  3
    click text  Comment
    sleep  3
    input text  id=etAddComment    ${Comment}
    click element  id=ivSendIcon
    sleep  3
    click element   id=bgGradient
    sleep  3
    Check name in Comment section
    sleep  3
    click element  id=iv_post_close


Check name in Comment section
    sleep   5
    wait until element is visible  xpath=//android.widget.TextView[@text='Add a comment']
    ${present}=  Run Keyword And Return Status    element should be visible  xpath=//android.widget.TextView[@text='Add a comment']
    log to console  this is like status=${present}
    Run Keyword If    "${present}"=="True"        click text  Add a comment
    Run Keyword If    "${present}"=="True"        wait until element is visible  xpath=//android.widget.TextView[@text='Likes']
#    Run Keyword If    "${present}"=="True"        click text  Likes
    sleep  5
    Run Keyword If    "${present}"=="True"        page should contain text  ${Comment}
    sleep  2
    log to console  Please go back
    go back
    sleep  2
    go back



#    sleep  3
#    click element   id=tvLeavePostComment
#    click element   id=tv_comment
#    sleep  3
#
#    ${name_of_users}    create list
#    hide keyboard
#    run keyword and continue on failure  wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.RelativeLayout[2]/androidx.viewpager.widget.ViewPager/android.widget.RelativeLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout
#    ${all_comments}     get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.RelativeLayout[2]/androidx.viewpager.widget.ViewPager/android.widget.RelativeLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout
#    :FOR    ${i}    IN RANGE    1    ${all_comments}+1
#    \   ${cat_count_list1}=   get text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.RelativeLayout[2]/androidx.viewpager.widget.ViewPager/android.widget.RelativeLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[${i}]/android.widget.LinearLayout/android.widget.TextView[3]
#    \   ${Com1}=    Remove String   ${cat_count_list1}     ${SPACE}
#    \   append to list  ${name_of_users}     ${Com1}
#    log to console  ${name_of_users}
#    ${Com2}=    Remove String   ${Comment}     ${SPACE}
#    run keyword and continue on failure  list should contain value  ${name_of_users}     ${Com2}
#    sleep  3
##    click element   id=ivShowHideDialog
#    go back
Long Press share post on post detail in fayvo
    sleep  3
#    ${present}=  Run Keyword And Return Status    Element Should Be Visible   id=ivSearchPost
#    log to console  ${present}
#    Run Keyword If    "${present}"=="True"      long press   id=tvSearchTitle
#    Run Keyword If    "${present}"=="False"      long press   id=post_img
    long press   id=post_img
    sleep  3
#    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[3]
    click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.TextView[@text='Share']
    sleep  3
    run keyword and continue on failure  click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.RelativeLayout/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[1]/android.widget.RelativeLayout
    sleep  3
    run keyword and continue on failure  input text  id=etPostShare       hello
    ${status}=      run keyword and return status  run keyword and continue on failure  tap on login and logout button
    Run Keyword If    "${status}"=="False"      go back

post deep link copy
    sleep  5
    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[3]
    sleep  3
    ${username}=    get text  id=tv_user_name
    log to console  deepname===${username}
    click element  id=iv_post_menu
    wait until element is visible  xpath=//android.widget.TextView[@text='Copy Link']
    click element  xpath=//android.widget.TextView[@text='Copy Link']
    sleep  2
    Open the Chrom application
    sleep  2
    ${addressbar}=  run keyword and return status  element should be visible  id=com.android.chrome:id/search_box_text
    run keyword if  "${addressbar}"== "True"    click element  id=com.android.chrome:id/search_box_text
    run keyword if  "${addressbar}"== "False"    click element  id=com.android.chrome:id/url_bar
    sleep  3
    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.view.ViewGroup
    sleep  5
#    ${webpost}=  get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.widget.FrameLayout[2]/android.webkit.WebView/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View/android.widget.TextView
#    ${webpost}=  get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout[2]/android.webkit.WebView/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View/android.widget.TextView
#    log to console  webbox===${webpost}===
#    run keyword and continue on failure  should be equal as strings  ${webpost}   ${username}
#    run keyword and continue on failure  page should contain text  ${username}
    sleep  2
    open the fayvo application
    sleep  5
box deep link copy
    sleep  5
    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[3]
    wait until element is visible  id=chip      timeout= 20 seconds
    click element  id=chip
    sleep  2
    ${deepbox}=     get text  id=tvTitle
    log to console  deepbox===${deepbox}===
    set global variable  ${deepbox}
    wait until element is visible  id=ivShare
    click element  id=ivShare
    wait until element is visible  xpath=//android.widget.TextView[@text='Copy Link']
    click element  xpath=//android.widget.TextView[@text='Copy Link']
    sleep  2
    Open the Chrom application
    sleep  2
    ${addressbar}=  run keyword and return status  element should be visible  id=com.android.chrome:id/search_box_text
    run keyword if  "${addressbar}"== "True"    click element  id=com.android.chrome:id/search_box_text
    run keyword if  "${addressbar}"== "False"    click element  id=com.android.chrome:id/url_bar
    sleep  3
    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.view.ViewGroup
    sleep  5
#    ${webbox}=  get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.widget.FrameLayout[2]/android.webkit.WebView/android.view.View/android.view.View[2]/android.view.View[1]/android.widget.TextView
#    log to console  webbox===${webbox}===
#    run keyword and continue on failure  should be equal as strings  ${webbox}   ${deepbox}
#    run keyword and continue on failure  page should contain text  ${deepbox}
    sleep  2
    open the fayvo application
    sleep  5

profile deep link copy
    sleep  5
    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[3]
    sleep  3
    click element  id=tv_user_name
    sleep  2
    ${deepname}=    get text  id=tv_user_name
    log to console  deepname===${deepname}
    click element  id=iv_user_profile_more
    sleep  2
    click element  id=tv_share_profile
    wait until element is visible  xpath=//android.widget.TextView[@text='Copy Link']
    click element  xpath=//android.widget.TextView[@text='Copy Link']
    sleep  2
    Open the Chrom application
    sleep  2
    ${addressbar}=  run keyword and return status  element should be visible  id=com.android.chrome:id/search_box_text
    run keyword if  "${addressbar}"== "True"    click element  id=com.android.chrome:id/search_box_text
    run keyword if  "${addressbar}"== "False"    click element  id=com.android.chrome:id/url_bar
    sleep  3
    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.view.ViewGroup
    sleep  5
#    run keyword and continue on failure  page should contain text   ${deepname}
    sleep  2
    open the fayvo application
    sleep  5




Long press share via internal on post detail
    sleep  3
    long press   id=post_img
    sleep  3
#    click element  xpath=//android.widget.LinearLayout/android.widget.TextView[@text='Send via Direct Message']
    click element  id=tv_direct_message
    sleep  3
    input text  id=etSearch     maliko
    sleep  3
    click element  xpath=//android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.TextView[@text='maliko']
    sleep  3
    input text      id=etComment    check it
    sleep  3
    click element  id=send_icon










Long Press Delete post on post detail
    sleep  5
    long press   id=post_img
    sleep  3
#    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[5]
    click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.TextView[@text='Delete']
    sleep  3
    ok button
    sleep  30
#    click element  id=post_close
    go back
Long Press edit post on post detail
    sleep  5
    long press   id=post_img
    sleep  3
    click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.TextView[@text='Edit']
    sleep  3
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   id=et_caption
    log to console  ${present}
    Run Keyword If    "${present}"=="True"       Edit a API post
    Run Keyword If    "${present}"=="False"      Edit a media post
    sleep  5
scrol till element
    sleep  2
    swipe by percent    50     80     50    50
#    log to console  done swipe
swipe right for camera
    sleep  4
    swipe by percent    50     50     70    50  2000
swipe right for story viewer
    sleep  2
    swipe by percent    50     50     20    50  2000
swipe left for story viewer
    sleep  2
    swipe by percent    20     50     50    50  2000
tap on post button at camera screen
    sleep  5
    click element  id=tvPost

Long Press report post for FOR YOU
    sleep  3
    long press   id=bgGradient
    sleep  3
    click text  Report
    sleep  3
    click text  It's spam
    sleep  2

report post, scroll posts and save post for you and get the category names
    tap on home button
    tap on for you category
    scrol till element
#    sleep   5
    click text  See all
    sleep  3
    ${check_name_in_list}   run keyword and return status   element should be visible  xpath=//android.widget.TextView[@text='🎥 Movies & Series']
    log to console  this_in_list exist_or_not=${check_name_in_list}
    Run Keyword If    "${check_name_in_list}"=="True"        Long Press report post for FOR YOU
    Run Keyword If    "${check_name_in_list}"=="True"        swipe by percent  50    80      50      20
    Run Keyword If    "${check_name_in_list}"=="True"        swipe by percent  50    80      50      20
    Run Keyword If    "${check_name_in_list}"=="True"        swipe by percent  50    80      50      20
    Run Keyword If    "${check_name_in_list}"=="True"        wait until element is visible  id=ivFayvedIcon
    Run Keyword If    "${check_name_in_list}"=="True"        click element  id=ivFayvedIcon
    Run Keyword If    "${check_name_in_list}"=="True"        create and select new box for for you post save
    go back

Edit a media post
    # Tag a user
    click element  id=ivTagUsers
    sleep  3
    input text  id=et_searchView    akash111
    sleep  2
    click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[@index='0']
    tap on login and logout button
    sleep  2
    element should be visible  id=ivCancelTags

    # Add location
    click element  id=ivLocation
    sleep  2
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   xpath=//android.widget.Button[@text='Allow']
    log to console  ${present}
    Run Keyword If    "${present}"=="True"     click element  xpath=//android.widget.Button[@text='Allow']
    sleep  5
    click element  xpath=//android.widget.LinearLayout[@index='0']
    wait until element is visible  id=ivSubmit
    click element  id=ivSubmit
    sleep  2
    tap on login and logout button

    #  Add link
#    click element  id=ivAddLink
#    sleep  3
#    click element  id=et_input
#    input text  id=et_input     hello
#    log to console  now press button
#    run process  adb shell input keyevent 66
#    Press Keycode    66
#    sleep  5
#    click element  id=tvAttachUrl


Edit a API post
    sleep  2
    input text  id=et_caption       This is API Post
    sleep  1
    click element  id=btn_save_states
    sleep  3
    tap on login and logout button
    sleep  5
    run keyword and continue on failure  page should contain text      This is API Post
    sleep  3


tap for each category

    ${cat_name_list}    create list
    set global variable  ${cat_name_list}
    sleep  3
    repeat keyword  20 times    loop and swipe
    loop and swipe
    loop for last category
    log to console  cat_name_list==${cat_name_list}==
    ${catlength}=   get length  ${cat_name_list}
    log to console  catlength==${catlength}


loop and swipe
    loop for category
    swipe left for category

loop for category
#    sleep  3
#    wait until element is visible       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout     timeout=120 seconds
#    ${cat_count}=    get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout
    ${cat_count}=    get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout
    log to console  cat_count==${cat_count}=
    FOR    ${i}    IN RANGE    1    ${cat_count}

       ${cat_name}=   get text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[${i}]/android.widget.TextView
       ${check_category_in_list}=      run keyword and return status  list should contain value  ${cat_name_list}   ${cat_name}
#       log to console  this is catname=${cat_name}
       log to console  this is status of listname have=${check_category_in_list}
#       Run Keyword If    "${check_category_in_list}"=="False"     click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[${i}]/android.widget.TextView
#       Run Keyword If    "${check_category_in_list}"=="False"     swipe down for home
#       sleep  5
#    \   Run Keyword If    "${check_category_in_list}"=="False"     element should be visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.ImageView
       Run Keyword If    "${check_category_in_list}"=="False"     append to list  ${cat_name_list}   ${cat_name}
    END
loop for last category
    ${cat_count}=    get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout
    FOR    ${i}    IN RANGE    1    ${cat_count}+1

       ${cat_name}=   get text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[${i}]/android.widget.TextView
       ${check_category_in_list}=      run keyword and return status  list should contain value  ${cat_name_list}   ${cat_name}
#       log to console  this is catname=${cat_name}
       log to console  this is status of listname have=${check_category_in_list}
#       Run Keyword If    "${check_category_in_list}"=="False"     click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[${i}]/android.widget.TextView
#       Run Keyword If    "${check_category_in_list}"=="False"     swipe down for home
#       sleep  5
#       Run Keyword If    "${check_category_in_list}"=="False"     element should be visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.ImageView
       Run Keyword If    "${check_category_in_list}"=="False"     append to list  ${cat_name_list}   ${cat_name}
    END

tap on invite people
    wait until element is visible  id=ivAddPeople   timeout=60 seconds
    click element  id=ivAddPeople


suggestions friends
    wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[2]/android.widget.RelativeLayout[2]/android.widget.ImageView       timeout=10 seconds
#    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[2]/android.widget.RelativeLayout[2]/android.widget.ImageView
    sleep  2
#    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[2]/android.widget.RelativeLayout[1]/android.widget.TextView[1]
#    sleep  3
    ${x}=   get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout/android.widget.RelativeLayout[1]/android.widget.TextView[1]
    log to console  this is the count of invite=${x}
    should not be equal as numbers  ${x}    0

#    ${text_of_follow_button}=   get text  id=tv_following_user
#    log to console  ${text_of_follow_button}
#    should be equal as strings  ${text_of_follow_button}    FOLLOWING
#    go back
#    sleep  2
#    go back

list of users from invite people
    ${invite_people_list}    create list
    set global variable  ${invite_people_list}
follow the one user from suggestion
    sleep  3
    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[2]/android.widget.RelativeLayout[1]/android.widget.TextView[1]
    sleep  5
    wait until element is visible  id=tv_following_user
    ${sug_follow_name}=   get text  id=tv_user_name
    log to console  this is suggestion follow name==${sug_follow_name}
    append to list  ${invite_people_list}       ${sug_follow_name}
    click element  id=tv_following_user
    wait until element is visible  id=iv_back
    click element  id=iv_back
    log to console  this is list of Users of following from invite====${invite_people_list}
follow the one user from contact
    sleep  5
    click element  id=tvContactsTitle
    sleep  5
    ${chekpopup}=   run keyword and return status  page should contain text  ALLOW
    Run Keyword If    "${chekpopup}"=="True"     click text  ALLOW
    sleep  5
#    Run Keyword If    "${chekpopup}"=="True"     click element  id=com.android.packageinstaller:id/permission_allow_button
    Run Keyword If    "${chekpopup}"=="True"     click element  id=com.android.permissioncontroller:id/permission_allow_button
    sleep  5
     ${lottieAnim}=   run keyword and return status  page should contain element  id=lottieAnim
     log to console  lottieAnim===${lottieAnim}==
     Run Keyword If    "${lottieAnim}"=="True"     click element  id=lottieAnim
     sleep  3
     Run Keyword If    "${lottieAnim}"=="True"     click element  id=lottieAnim
     sleep  2
     Run Keyword If    "${lottieAnim}"=="True"     click element  id=tvStatus
     wait until element is visible  id=back_iv

     click element  id=back_iv

follow the one user from facebook
#    wait until element is visible  accessibility_id=Connect to Facebook
    sleep  5
    click element  id=tvFacebookTitle
    wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.appcompat.widget.LinearLayoutCompat/android.widget.FrameLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.TextView
    element should contain text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.appcompat.widget.LinearLayoutCompat/android.widget.FrameLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.TextView     None of your Facebook friends using Fayvo!
    wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.appcompat.widget.LinearLayoutCompat/android.widget.ScrollView/android.widget.LinearLayout/android.widget.Button
    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.appcompat.widget.LinearLayoutCompat/android.widget.ScrollView/android.widget.LinearLayout/android.widget.Button
    log to console  this is list of Users of following from invite====${invite_people_list}


new post submit button
    wait until element is visible  id=ivSubmit
    click element  id=ivSubmit
check boxes are load or not for media posts
    sleep  3
    ${boxes_data}=  Run Keyword And Return Status      run keyword and continue on failure  wait until element is visible  xpath=//android.widget.TextView[@text='Create Box']    timeout=10 seconds
    Run Keyword If    "${boxes_data}"=="False"      swipe down for load boxes data
    ${boxes_data}=  Run Keyword And Return Status    wait until element is visible   xpath=//android.widget.TextView[@text='Create Box']    timeout=10 seconds
    Run Keyword If    "${boxes_data}"=="False"      swipe down for load boxes data
    ${boxes_data}=  Run Keyword And Return Status    wait until element is visible   xpath=//android.widget.TextView[@text='Create Box']    timeout=10 seconds
    Run Keyword If    "${boxes_data}"=="False"      go back
    Run Keyword If    "${boxes_data}"=="False"      go back
    Run Keyword If    "${boxes_data}"=="False"      go back
    Run Keyword If    "${boxes_data}"=="True"      create and select new box

create and select new box for for you post save
    sleep  2
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   xpath=//android.widget.TextView[@text='hellobox']
    log to console  ${present}
    Run Keyword If    "${present}"=="True"     click element  xpath=//android.widget.TextView[@text='hellobox']
    sleep  2
    Run Keyword If    "${present}"=="True"     click element  id=tvSave
    sleep  5
    Run Keyword If    "${present}"=="False"     click element  xpath=//android.widget.TextView[@text='Create Box']
    sleep  1
    Run Keyword If    "${present}"=="False"     input text  xpath=//android.widget.EditText[@text='Enter box Name']     hellobox
    sleep  1
    Run Keyword If    "${present}"=="False"     click element  id=rlAddBox
    sleep  5
    Run Keyword If    "${present}"=="False"     ok button
    sleep  2
    Run Keyword If    "${present}"=="False"     click element  xpath=//android.widget.TextView[@text='hellobox']
    sleep  5
    Run Keyword If    "${present}"=="False"     click element  id=tvSave
    ${present}=  Run Keyword And Return Status    wait until element is visible   id=btnNotNow      timeout=15 seconds
    log to console  ${present}
    sleep  2
    Run Keyword If    "${present}"=="True"     click element  id=btnNotNow
    sleep  3
create and select new box
    sleep  2
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   xpath=//android.widget.TextView[@text='hellobox']
#    log to console  ${present}
    Run Keyword If    "${present}"=="True"     click element  xpath=//android.widget.TextView[@text='hellobox']
    sleep  2
    Run Keyword If    "${present}"=="True"     click element  id=button
    sleep  2
    Run Keyword If    "${present}"=="False"     click element  xpath=//android.widget.TextView[@text='Create Box']
    sleep  1
    Run Keyword If    "${present}"=="False"     input text  xpath=//android.widget.EditText[@text='Enter box Name']     hellobox
    sleep  1
#    Run Keyword If    "${present}"=="False"     click element  id=tvOnlyMe
    sleep  1
    Run Keyword If    "${present}"=="False"     click element  id=rlAddBox
    sleep  5
    Run Keyword If    "${present}"=="False"     ok button
    sleep  2
    Run Keyword If    "${present}"=="False"     click element  xpath=//android.widget.TextView[@text='hellobox']
    sleep  5
    Run Keyword If    "${present}"=="False"     click element  id=button

    ${present}=  Run Keyword And Return Status    wait until element is visible   id=btnNotNow      timeout=15 seconds
    log to console  ${present}
    sleep  2
    Run Keyword If    "${present}"=="True"     click element  id=btnNotNow
    sleep  3


check boxes are load or not for API
    sleep  5
    ${boxes_data}=  Run Keyword And Return Status      wait until element is visible  xpath=//android.widget.TextView[@text='Create Box']    timeout=10 seconds
    log to console  This is API boxes Data=${boxes_data}

#    Run Keyword If    "${boxes_data}"=="False"      wipe Down for load boxes data for API
    sleep  3
    Run Keyword If    "${boxes_data}"=="False"      click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.FrameLayout/android.widget.TextView[@text='Save']
    ${boxes_data}=  Run Keyword And Return Status    wait until element is visible   xpath=//android.widget.TextView[@text='Create Box']    timeout=10 seconds
    Run Keyword If    "${boxes_data}"=="False"      wipe Down for load boxes data for API
    sleep  3
    Run Keyword If    "${boxes_data}"=="False"      click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.FrameLayout/android.widget.TextView[@text='Save']
    ${boxes_data}=  Run Keyword And Return Status    wait until element is visible   xpath=//android.widget.TextView[@text='Create Box']    timeout=10 seconds
    Run Keyword If    "${boxes_data}"=="False"      wipe Down for load boxes data for API
    Run Keyword If    "${boxes_data}"=="False"      go back
    Run Keyword If    "${boxes_data}"=="True"      create and select new box for API POST

Auto play create and select new box for API Post
    sleep  2
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   xpath=//android.widget.TextView[@text='hellobox']
    log to console  ${present}
    sleep  2
    Run Keyword If    "${present}"=="True"     select box and save
    sleep  2
    Run Keyword If    "${present}"=="False"     click element  xpath=//android.widget.TextView[@text='Create Box']
    sleep  1
    Run Keyword If    "${present}"=="False"     input text  xpath=//android.widget.EditText[@text='Enter box Name']     hellobox
    sleep  1
    Run Keyword If    "${present}"=="False"     click element  id=tvOnlyMe
    sleep  1
    Run Keyword If    "${present}"=="False"     click element  id=rlAddBox
    sleep  5
    Run Keyword If    "${present}"=="False"     ok button
    sleep  3
    Run Keyword If    "${present}"=="False"     select box and save
    sleep  3

create and select new box for API POST
    sleep  2
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   xpath=//android.widget.TextView[@text='hellobox']
    log to console  helloboxfound==${present}=
    sleep  2
    Run Keyword If    "${present}"=="True"     select box and save
    sleep  2
    Run Keyword If    "${present}"=="False"     click element  xpath=//android.widget.TextView[@text='Create Box']
    sleep  1
    Run Keyword If    "${present}"=="False"     input text  xpath=//android.widget.EditText[@text='Enter box Name']     hellobox
    sleep  1
    Run Keyword If    "${present}"=="False"     click element  id=tvOnlyMe
    sleep  1
    Run Keyword If    "${present}"=="False"     click element  id=rlAddBox
    sleep  5
    Run Keyword If    "${present}"=="False"     ok button
    sleep  3
    Run Keyword If    "${present}"=="False"     select box and save
    sleep  3
    wipe Down for load boxes data for API
    sleep  2
#    click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]
#    sleep  2
#    ${saveButton}=  get text  id=btn_save_states
#    run keyword and continue on failure  element text should be  id=btn_save_states      ${saveButton}
#    log to console  ${saveButton}
#    go back
    go back


select box and save
    sleep  3
    click element  xpath=//android.widget.TextView[@text='hellobox']
    sleep  3
    click element  id=tvSave

tap on post button
    wait until element is visible  id=ivAddPost    timeout=40 seconds
    click element  id=ivAddPost

handle uploading status
    ${Present}=     run keyword and return status  wait until element is visible  id=frame_retry    timeout=40 seconds
    log to console  This is Status Bar=${Present}
    Run Keyword If    "${present}"=="True"     click element  id=frame_retry
    ${Present1}=     run keyword and return status  wait until element is visible  id=frame_retry    timeout=40 seconds
    log to console  This is Status Bar1=${Present1}
    Run Keyword If    "${present1}"=="True"     click element  id=frame_retry
    ${Present2}=     run keyword and return status  wait until element is visible  id=frame_retry    timeout=40 seconds
    log to console  This is Status Bar1=${Present2}
    Run Keyword If    "${present2}"=="True"     click element  id=frame_delete

camra permessions don't allow
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   id=btnAllow
    log to console  ${present}
    Run Keyword If    "${present}"=="True"     click element  id=btnAllow
    sleep  1

    Run Keyword If    "${present}"=="True"     click element  xpath=//android.widget.Button[@text='Deny']
    sleep  1

    Run Keyword If    "${present}"=="True"     click element  xpath=//android.widget.Button[@text='Deny']
    sleep  1

    Run Keyword If    "${present}"=="True"     click element  xpath=//android.widget.Button[@text='Deny']
    sleep  2
    ${Again_Allow}=  Run Keyword And Return Status    Element Should Be Visible   id=btnAllow
    log to console  Again_Allow===${Again_Allow}
    Run Keyword If    "${Again_Allow}"=="True"     click element  id=btnAllow
    sleep  1
    Run Keyword If    "${Again_Allow}"=="True"     click text  Don't ask again
    Run Keyword If    "${Again_Allow}"=="True"     click text  Deny
    sleep  1
    Run Keyword If    "${Again_Allow}"=="True"     click text  Don't ask again
    Run Keyword If    "${Again_Allow}"=="True"     click text  Deny
    sleep  1
    Run Keyword If    "${Again_Allow}"=="True"     click text  Don't ask again
    Run Keyword If    "${Again_Allow}"=="True"     click text  Deny
    sleep  3
    Run Keyword If    "${Again_Allow}"=="True"     click text  SETTINGS
    sleep  3
    Run Keyword If    "${Again_Allow}"=="True"     Swipe up for setting changes
    sleep  2
    Run Keyword If    "${Again_Allow}"=="True"     click text  Permissions
    sleep  2
    Run Keyword If    "${Again_Allow}"=="True"     click text  Camera
    Run Keyword If    "${Again_Allow}"=="True"     click text  Contacts
    Run Keyword If    "${Again_Allow}"=="True"     click text  Location
    Run Keyword If    "${Again_Allow}"=="True"     click text  Microphone
    Run Keyword If    "${Again_Allow}"=="True"     click text  Storage
    launch application
    tap on post button
    sleep  2
    click element  xpath=//android.widget.TextView[@text='Photo/Video']
    sleep  2

camra permessions for story
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   id=btnAllow
    log to console  Camera=${present}
    Run Keyword If    "${present}"=="True"     click element  id=btnAllow
    Run Keyword If    "${present}"=="True"     wait until element is visible  accessibility_id=Don’t Allow
    Run Keyword If    "${present}"=="True"     click element  accessibility_id=Don’t Allow

    ${opensetting}=  Run Keyword And Return Status    Element Should Be Visible   xpath=//XCUIElementTypeStaticText[@name="Open Settings"]
    log to console  opensetting=${opensetting}


    Run Keyword If    "${opensetting}"=="True"     wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="Open Settings"]
    Run Keyword If    "${opensetting}"=="True"     click text  Open Settings
#    Run Keyword If    "${opensetting}"=="True"     wait until element is visible  xpath=/XCUIElementTypeSwitch[@name="Camera"]
    sleep  3
    Run Keyword If    "${opensetting}"=="True"     click element  xpath=/XCUIElementTypeSwitch[@name="Camera"]
#    Run Keyword If    "${opensetting}"=="True"     click text  Camera

#    Run Keyword If    "${present}"=="True"     wait until element is visible  accessibility_id=OK
#    Run Keyword If    "${present}"=="True"     click element  accessibility_id=OK
#    Run Keyword If    "${present}"=="True"     wait until element is visible  accessibility_id=OK
#    Run Keyword If    "${present}"=="True"     click element  accessibility_id=OK


camra permessions
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   id=btnAllow
    log to console  allow button==${present}=
    Run Keyword If    "${present}"=="True"     click element  id=btnAllow
    sleep  3
    ${Camera_permission}=  Run Keyword And Return Status    text should be visible  While using the app
    log to console  allow button==${Camera_permission}=
    Run Keyword If    "${Camera_permission}"=="True"     click text     While using the app
    Run Keyword If    "${Camera_permission}"=="False"     click element  id=com.android.permissioncontroller:id/permission_allow_button
    sleep  1
    ${Mic_permission}=  Run Keyword And Return Status    text should be visible  While using the app
    log to console  allow button==${Mic_permission}=
    Run Keyword If    "${Mic_permission}"=="True"     click text     While using the app
    Run Keyword If    "${Mic_permission}"=="False"     click element  id=com.android.permissioncontroller:id/permission_allow_button
    sleep  3
#    Run Keyword If    "${present}"=="True"     click text     Allow
    Run Keyword If    "${present}"=="False"     click element  id=com.android.permissioncontroller:id/permission_allow_button
#    Run Keyword If    "${present}"=="False"     click element  xpath=//android.widget.Button[1]

edit a photo post
    sleep  2
#    repeat keyword  2 times     swipe left for edit filter
#    click element  id=ivPen
#    sleep  1
#    Swipe Down for edit post1
#    Swipe Down for edit post2
#    click element  id=ivDone
#    sleep  1
    click element  id=ivTagUsers
    sleep  3
    input text  id=et_searchView    maliko
    sleep  3
    click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[@index='0']
    tap on login and logout button
    sleep  1
    click element  id=ivEmoji
    sleep  2
    click element  xpath=//android.view.ViewGroup[@index='5']
    click element  id=ivCrop
    sleep  1
    click element  id=btnRotateRight
    click element  id=btnRotateRight
    click element  id=doneBtn

edit a video post
    sleep  2
    repeat keyword  2 times     swipe left for edit filter
    click element  id=ivPen
    sleep  1
    Swipe Down for edit post1
    Swipe Down for edit post2
    click element  id=ivDone
    click element  id=ivEmoji
    sleep  2
    click element  xpath=//android.view.ViewGroup[@index='5']


Add a new post with camra photo
#    swipe right for camera
#    sleep  5
#    tap on post button at camera screen
    tap on post button
    sleep  2
    click element  xpath=//android.widget.TextView[@text='Photo/Video']
    sleep  2
#    camra permessions
#    camra permessions don't allow
    wait until element is visible  id=recordingButton
    click element  id=recordingButton
    sleep  1
    new post submit button
    sleep  3
    check boxes are load or not for media posts

Add a new edit post with camra photo
#    swipe right for camera
#    sleep  5
#    tap on post button at camera screen
    tap on post button
    sleep  2
    click element  xpath=//android.widget.TextView[@text='Photo/Video']
    sleep  2
#    camra permessions
#    sleep  3
    click element  id=recordingButton
    sleep  2
    edit a photo post
    sleep  2
    new post submit button
    sleep  3
    check boxes are load or not for media posts

Add a new post with camra video
#    swipe right for camera
#    sleep  5
#    tap on post button at camera screen
    tap on post button
    sleep  2
    click element  xpath=//android.widget.TextView[@text='Photo/Video']
    sleep  2
#    camra permessions
    sleep  1
    long press  id=recordingButton  duration=10000
    sleep  1
    new post submit button
    sleep  3
    check boxes are load or not for media posts

Add a new multi post with gallery
#    swipe right for camera
#    sleep  5
#    tap on post button at camera screen
    tap on post button
    sleep  2
    click element  xpath=//android.widget.TextView[@text='Photo/Video']
    sleep  2
##    camra permessions
#    sleep  5
    click element  xpath=//android.widget.TextView[@text='Gallery']
    sleep  5
    click element  xpath=//android.view.ViewGroup[@index='1']
    click element  xpath=//android.view.ViewGroup[@index='3']
    click element  xpath=//android.view.ViewGroup[@index='5']
    click element  id=btnNext
    sleep  1
    new post submit button
    sleep  3
    check boxes are load or not for media posts



Home search on deifferent categories
    wait until element is visible  id=ivSearch      timeout=60 seconds
    click element  id=ivSearch
    sleep  2
    input text  id=edtSearch    c
    sleep  3
    hide keyboard
    ${cat_name_list}    create list
    set global variable  ${cat_name_list}
    log to console  search category
#    repeat keyword  5 times    loop and swipe on serach
    run keyword and continue on failure  loop and swipe on serach
#    loop for last category on serach
    sleep  3
    go back

loop and swipe on serach
    loop for category on serach
    log to console  search category 2
#    swipe left for category

loop for category on serach
    ${cat_count}=    get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup
    log to console  ${cat_count}
    FOR    ${i}    IN RANGE    1    ${cat_count}
       ${cat_name}=   get text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[${i}]/android.widget.TextView
       ${check_category_in_list}=      run keyword and return status  list should contain value  ${cat_name_list}   ${cat_name}
       log to console  This is cate=${cat_name}
       log to console  This is cate list=${check_category_in_list}
       Run Keyword If    "${check_category_in_list}"=="False"     click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[${i}]/android.widget.TextView
       sleep  5
#    \   Run Keyword If    "${check_category_in_list}"=="False"     element should be visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup
       Run Keyword If    "${check_category_in_list}"=="False"     append to list  ${cat_name_list}   ${cat_name}
       run keyword and continue on failure  element should be visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup
    END

loop for last category on serach
    ${cat_count}=    get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout
#    :FOR    ${i}    IN RANGE    1    ${cat_count}+1
    FOR    ${i}    IN RANGE    1    3

       ${cat_name}=   get text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[${i}]/android.widget.TextView
       ${check_category_in_list}=      run keyword and return status  list should contain value  ${cat_name_list}   ${cat_name}
       log to console  ${cat_name}
       log to console  ${check_category_in_list}
       Run Keyword If    "${check_category_in_list}"=="False"     click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[${i}]/android.widget.TextView
#    \   sleep  5
#    \   Run Keyword If    "${check_category_in_list}"=="False"     element should be visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup
       Run Keyword If    "${check_category_in_list}"=="False"     append to list  ${cat_name_list}   ${cat_name}
    END
Add a new post with Places API
    tap on post button
    sleep  2
    click element  xpath=//android.widget.TextView[@text='Places']
    sleep  2
    input text  id=etSearch    Lahore
    sleep  2
    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/androidx.cardview.widget.CardView/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[1]
    sleep  2
    ${SavedButton}=  Run Keyword And Return Status    Element Should Be Visible   xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.FrameLayout/android.widget.TextView[@text='Saved']
    log to console  ${SavedButton}
    sleep  2
    Run Keyword If    "${SavedButton}"=="True"     click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.FrameLayout/android.widget.TextView[@text='Saved']
    log to console  delete button
    Run Keyword If    "${SavedButton}"=="True"     sleep  3
    Run Keyword If    "${SavedButton}"=="True"     click element  id=tv_remove_post
    log to console  wait for save button
    run keyword and continue on failure  wait until element is visible  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.FrameLayout/android.widget.TextView[@text='Save']      timeout=15s

    run keyword and continue on failure  click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.FrameLayout/android.widget.TextView[@text='Save']
    sleep  2
    create and select new box for API POST
    sleep  3
search a post and post it from second device
    sleep  2
    ${present1}=  Run Keyword And Return Status    Element Should Be Visible   xpath=//android.widget.Button[@text='Allow']
    log to console  ${present1}
    sleep  2
    Run Keyword If    "${present1}"=="True"     click element  xpath=//android.widget.Button[@text='Allow']
    sleep  1
    input text  id=etSearch    spider
    wait until element is visible  xpath=//androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[@index='0']
    click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[@index='0']
    sleep  5
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.FrameLayout/android.widget.TextView[@text='Saved']
    log to console  ${present}
    sleep  2
    Run Keyword If    "${present}"=="True"     click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.FrameLayout/android.widget.TextView[@text='Saved']
    sleep  2
    Run Keyword If    "${present}"=="True"     click element  id=tv_remove_post
    Run Keyword If    "${present}"=="True"     wait until element is visible  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.FrameLayout/android.widget.TextView[@text='Save']      timeout=40s
    Run Keyword If    "${present}"=="True"     click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.FrameLayout/android.widget.TextView[@text='Save']
    sleep  2
    check boxes are load or not for API
search a post and post it
    sleep  2
    ${present1}=  Run Keyword And Return Status    Element Should Be Visible   xpath=//android.widget.Button[@text='Allow']
    log to console  ${present1}
    sleep  2
    Run Keyword If    "${present1}"=="True"     click element  xpath=//android.widget.Button[@text='Allow']
    sleep  1
    input text  id=etSearch    hello
    wait until element is visible  xpath=//androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[@index='0']
    click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[@index='0']
    sleep  5
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.FrameLayout/android.widget.TextView[@text='Saved']
    log to console  ${present}
    sleep  2
    Run Keyword If    "${present}"=="True"     click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.FrameLayout/android.widget.TextView[@text='Saved']
    sleep  2
    Run Keyword If    "${present}"=="True"     click element  id=tv_remove_post
    Run Keyword If    "${present}"=="True"     wait until element is visible  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.FrameLayout/android.widget.TextView[@text='Save']      timeout=40s
    Run Keyword If    "${present}"=="True"     click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.FrameLayout/android.widget.TextView[@text='Save']
    sleep  2
    check boxes are load or not for API

quick suggestion post save method

    sleep  2
    ${arrowcount}=  get matching xpath count  xpath=//*[@resource-id='${resourceid}ivArrow']
    log to console  arrowcount===${arrowcount}=
    Run Keyword If    "${arrowcount}"=="1"     recent searchies less then two
    Run Keyword If    "${arrowcount}"=="2"     recent searchies more then one
    Run Keyword If    "${arrowcount}"=="0"     without recent serch suggestions
    sleep  2
    check boxes are load or not for API



recent searchies less then two
    wait until element is visible  xpath=//*[@resource-id='${resourceid}tvSave'][1]      timeout=40s
    ${PostName}=    get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/androidx.cardview.widget.CardView/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[4]/android.widget.TextView
    log to console  PostName===${PostName}=
    set global variable  ${PostName}
    click element  xpath=//*[@resource-id='${resourceid}tvSave'][1]

recent searchies more then one
    wait until element is visible  id=tvSeeAll      timeout=40s
    ${SeeAll}=      run keyword and return status  element should be visible  id=tvSeeAll
    log to console  SeeAll===${SeeAll}=
    Run Keyword If    "${SeeAll}"=="True"    click element  id=tvSeeAll
    sleep  3
    ${arrowcount}=  get matching xpath count  xpath=//*[@resource-id='${resourceid}ivArrow']
    log to console  arrowcount===${arrowcount}=
    should not be equal as numbers    ${arrowcount}       7

    Run Keyword If    "${SeeAll}"=="True"    click element  id=tvSeeAll
    sleep  5
    wait until element is visible  xpath=//*[@resource-id='${resourceid}tvSave'][1]      timeout=40s
    ${PostName}=    get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/androidx.cardview.widget.CardView/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[5]/android.widget.TextView
    log to console  PostName===${PostName}=
    set global variable  ${PostName}
    click element  xpath=//*[@resource-id='${resourceid}tvSave'][1]


without recent serch suggestions
    wait until element is visible  xpath=//*[@resource-id='${resourceid}tvSave'][1]      timeout=40s
    ${PostName}=    get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/androidx.cardview.widget.CardView/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.TextView
    log to console  PostName===${PostName}=
    set global variable  ${PostName}
    click element  xpath=//*[@resource-id='${resourceid}tvSave'][1]


music quick suggestion while post
    tap on post button
    sleep  2
    click element  xpath=//android.widget.TextView[@text='Music']
    sleep  5
    hide keyboard
    text should be visible  Suggested Music
    quick suggestion post save method
    tap on post button
    sleep  2
    click element  xpath=//android.widget.TextView[@text='Music']
    sleep  5
    hide keyboard
    text should be visible  ${PostName}
    go back



Movie quick suggestion while post
    tap on post button
    sleep  2
    click element  xpath=//android.widget.TextView[@text='Movies/Series/TV Shows']
    sleep  5
    hide keyboard
    text should be visible  Suggested Movies/Series/TV Shows
    quick suggestion post save method
    tap on post button
    sleep  2
    click element  xpath=//android.widget.TextView[@text='Movies/Series/TV Shows']
    sleep  5
    hide keyboard
    text should be visible  ${PostName}
    go back





Add a new post with Music API
    tap on post button
    sleep  2
    click element  xpath=//android.widget.TextView[@text='Music']
    search a post and post it

Add a new post with Books API
    tap on post button
    sleep  2
    click element  xpath=//android.widget.TextView[@text='Books']
    search a post and post it

Add a new post with Video API
    tap on post button
    sleep  3
    click element  xpath=//android.widget.TextView[@text='Videos']
    search a post and post it

Add a new post with Web API
    tap on post button
    sleep  2
    click element  xpath=//android.widget.TextView[@text='Web']
    search a post and post it

Add a new post with Movies/Series/TV Shows API
    tap on post button
    sleep  2
    click element  xpath=//android.widget.TextView[@text='Movies/Series/TV Shows']
    search a post and post it

tap on edit profile
    sleep  3
    click element  id=rlEditProfile
Edit profile
    sleep  3
    input text  id=et_name  Aakash
    input text  id=et_aboutMe   This is about me
#    click element   id=et_city
#    sleep  2
#    ${present}=  Run Keyword And Return Status    Element Should Be Visible   id-com.android.permissioncontroller:id/permission_allow_foreground_only_button
#    Run Keyword If    "${present}"=="True"     click element  id=com.android.permissioncontroller:id/permission_allow_foreground_only_button
#    input text  id=et_searchView    Lahore
#    sleep  2
#    click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[@index='0']
    sleep  2
    input text  id=et_url   wwww.QAautomation.com
    tap on save button
    sleep   3
    ok button

tap on change email
    click element  id=rlChangeEmail
new email enter and tap on verify button
    sleep   3
    input text  id=et_email     kwn79709@cuoly.com
    tap on save button
verification code enter
#    input text  id=pinView
    sleep  30
tap on update phone number
    click element  id=rlPhone
select country code
    sleep  3
    click element  id=iv_flag
    sleep  3
    input text  id=country_code_picker_search   pak
    sleep  2
    click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[@index='0']
put number for update and tap on save button
    sleep  1
    input text  id=et_phone     3136326900
    tap on save button

verify code for phone number
    sleep  30

tap on notification setting
    wait until element is visible  xpath=//android.widget.RelativeLayout/android.widget.TextView[@text='Notification settings']
    click element  xpath=//android.widget.RelativeLayout/android.widget.TextView[@text='Notification settings']
change the notification setting
    wait until element is visible  xpath=//android.widget.RelativeLayout[1]/android.widget.Switch[@index='2']
    ${before_like_notification}=    get text  id=tbLikesPushNotification
    log to console  beforeFirst=${before_like_notification}
    click element  xpath=//android.widget.RelativeLayout[1]/android.widget.Switch[@index='2']
    wait until element is visible  xpath=//android.widget.RelativeLayout[3]/android.widget.Switch[@index='2']
    ${before_comment_notification}=    get text  id=tbCommentsPushNotification
    log to console  beforeSecond=${before_comment_notification}
    click element  xpath=//android.widget.RelativeLayout[3]/android.widget.Switch[@index='2']
    wait until element is visible  xpath=//android.widget.RelativeLayout[5]/android.widget.Switch[@index='2']
    ${before_follow_notification}=    get text  id=tbFollowsPushNotification
    log to console  beforeThird=${before_follow_notification}
    click element  xpath=//android.widget.RelativeLayout[5]/android.widget.Switch[@index='2']

    tap on save button
    ok button
    tap on notification setting
    wait until element is visible  xpath=//android.widget.RelativeLayout[1]/android.widget.Switch[@index='2']
    ${after_like_notification}=    get text  id=tbLikesPushNotification
    log to console  =First${after_like_notification}
#    should not be equal as strings      ${before_like_notification}    ${after_like_notification}
    ${after_comment_notification}=    get text  id=tbCommentsPushNotification
    log to console  second=${after_comment_notification}
#    should not be equal as strings      ${before_comment_notification}    ${after_comment_notification}
    ${after_follow_notification}=    get text  id=tbFollowsPushNotification
    log to console  third=${after_follow_notification}
#    should not be equal as strings      ${before_follow_notification}    ${after_follow_notification}

    wait until element is visible  xpath=//android.widget.RelativeLayout[1]/android.widget.Switch[@index='2']
    click element  xpath=//android.widget.RelativeLayout[1]/android.widget.Switch[@index='2']
    click element  xpath=//android.widget.RelativeLayout[3]/android.widget.Switch[@index='2']
    click element  xpath=//android.widget.RelativeLayout[5]/android.widget.Switch[@index='2']
    tap on save button
    ok button

#    go back

tap on message setting
    sleep  3
    click element  xpath=//android.widget.RelativeLayout/android.widget.TextView[@text='Message settings']
change message setting
    sleep  3
#    ${before_message_setting_status_only}=  get element attribute  id=rb_only_friends   checked
#    log to console  ${before_message_setting_status_only}
#    ${before_message_setting_status_everone}=  get element attribute  id=rb_everyone   checked
#    log to console  ${before_message_setting_status_everone}
#    ${before_message_setting_status_private}=  get element attribute  id=rb_private   checked
#    log to console  ${before_message_setting_status_private}
#
#    Run Keyword If    "${before_message_setting_status_everone}"=="true"    click element  id=rb_private
#    Run Keyword If    "${before_message_setting_status_private}"=="true"
    run keyword and continue on failure  click element  id=rb_everyone



    run keyword and continue on failure  tap on save button
    run keyword and continue on failure  ok button
#    tap on message setting
#    sleep  5
#    ${after_message_setting_status_everyone}=  get element attribute  id=rb_everyone   checked
#    log to console  ${after_message_setting_status_everyone}
#    ${after_message_setting_status_private}=  get element attribute  id=rb_private   checked
#    log to console  ${after_message_setting_status_private}
#    Run Keyword If    "${before_message_setting_status_everone}"=="true"    should not be equal as strings  ${after_message_setting_status_private}     ${before_message_setting_status_private}
#    Run Keyword If    "${before_message_setting_status_private}"=="true"    click element  id=rb_everyone
#    tap on save button
#    ok button

tap on blocked users
    wait until element is visible  xpath=//android.widget.RelativeLayout/android.widget.TextView[@text='Blocked users']
    click element  xpath=//android.widget.RelativeLayout/android.widget.TextView[@text='Blocked users']
checked blocked users
#    wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[1]/android.widget.RelativeLayout/android.widget.TextView
#    ${blocked_user_name}=   get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[1]/android.widget.RelativeLayout/android.widget.TextView
#    run keyword and continue on failure  should be equal as strings  ${blocked_username}     ${blocked_user_name}
    sleep  4
    ${unblockbuttonstatus}=     run keyword and return status  element should be visible  id=tvUnblock
    log to console  unblockbuttonstatus==${unblockbuttonstatus}=
    Run Keyword If    "${unblockbuttonstatus}"=="True"    click element  id=tvUnblock
#    run keyword and continue on failure  click element  id=tvUnblock
    sleep  2
#    run keyword and continue on failure  page should not contain text  ${blocked_user_name}
    go back


tap on recommendations
    swipe up for setting
    wait until element is visible  xpath=//android.widget.RelativeLayout/android.widget.TextView[@text='Recommendations']
    click element  xpath=//android.widget.RelativeLayout/android.widget.TextView[@text='Recommendations']

input recommendation and tap on submit button
    wait until element is visible  id=et_recommendation
    input text  id=et_recommendation    This is recommendation.
    click element  id=btn_submit

tap on privacy policy
    wait until element is visible  xpath=//android.widget.RelativeLayout/android.widget.TextView[@text='Message settings']
    swipe up for setting
    wait until element is visible  xpath=//android.widget.RelativeLayout/android.widget.TextView[@text='Privacy Policy']
    click element  xpath=//android.widget.RelativeLayout/android.widget.TextView[@text='Privacy Policy']
check page is loaded or not
    sleep  15
#    ${ab}=  get webelements  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View[3]/android.widget.TextView[1]
#    log to console  text is this=${ab}====
#    ${text}=    get text  ${ab}
#    log to console  text is this=${text}
#    should be equal as strings  ${ab}       Privacy Policy- Fayvo
#    page should contain text       Privacy Policy- FAYVO
    run keyword and continue on failure   page should contain text       Privacy Policy- Fayvo
    sleep  5
    go back

tap on private accout
    wait until element is visible  id=tbPrivateAccount
    run keyword and continue on failure  element should be visible  id=tbPrivateAccount
#    log to console  ${before_private_account_status}
    click element  id=tbPrivateAccount
#    wait until element is visible  id=tbPrivateAccount      timeout=120 seconds
#    ${after_private_account_status}=   get text  id=tbPrivateAccount
#    log to console  ${after_private_account_status}
#    should not be equal as strings  ${before_private_account_status}    ${after_private_account_status}

tap on app language
    sleep  8
    wait until element is visible  xpath=//android.widget.RelativeLayout/android.widget.TextView[@text='Message settings']
#    swipe up for setting
    wait until element is visible  xpath=//android.widget.RelativeLayout/android.widget.TextView[@text='App Language']
    click element  xpath=//android.widget.RelativeLayout/android.widget.TextView[@text='App Language']

change the app language
    wait until element is visible  id=tvArabic
    click element  id=tvArabic
    ok button
    wait until element is visible  id=ivProfile
    click element  id=ivProfile
    go to setting
    wait until element is visible  id=rlMessageNotification
    swipe up for setting
    wait until element is visible  id=tvLanguage
    click element  id=tvLanguage
    wait until element is visible  id=tvArabic
    click element  id=tvEnglish
    ok button

tap on clear saerch history
    wait until element is visible  id=rlMessageNotification
    swipe up for setting
    wait until element is visible  id=tvLanguage
    click element  id=tvClearSearchHistory
    ok button

tap on profile image
    wait until element is visible  id=cv_profile_pic
    sleep  3
    click element  id=cv_profile_pic
tap on view picture and close it
    wait until element is visible  xpath=//android.widget.FrameLayout/android.widget.TextView[@text='View Picture']
    click element  xpath=//android.widget.FrameLayout/android.widget.TextView[@text='View Picture']
    sleep  5
    click element  id=back_iv
tap on change profile picture
    wait until element is visible  xpath=//android.widget.TextView[@text='Change Profile Picture']
    click element  xpath=//android.widget.TextView[@text='Change Profile Picture']
    sleep  2
#    camra permessions
    sleep  2
    run keyword and continue on failure  click element  xpath=//android.widget.TextView[@text='Gallery']
    sleep  2
    run keyword and continue on failure  click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[@index='0']
    sleep  2
    click element  id=doneBtn
tap on edit picture and edit picture
    wait until element is visible  xpath=//android.widget.TextView[@text='Edit Picture']
    click element  xpath=//android.widget.TextView[@text='Edit Picture']
#    wait until element is visible  id=btnRotateRight
#    repeat keyword  2 times  click element  id=btnRotateRight
    sleep  2
    click element  id=doneBtn
tap on save profile QR Code
    sleep  3
    Swipe up for setting for profile image
    sleep  2
    wait until element is visible  id=cardSaveQRCode
    click element  id=cardSaveQRCode
    sleep  2
    element should be visible  id=tvMessage
    Swipe down for setting for profile image
save the profile photo
#    Swipe down for setting for profile image
    sleep  2
#    click element  id=tvSave
    click text  Save
#    wait until element is visible  xpath=//android.widget.TextView[@text='OK']      timeout=20 seconds
    sleep  10
#    wait until keyword succeeds  text should be visible  OK
#    wait until element is visible  id=button1      timeout=20 seconds
    click text  OK

tap on scan code and verify from gallery
    sleep  2
    wait until element is visible  id=cardScanQRCode
    click element  id=cardScanQRCode
    wait until element is visible  id=tvSaveToPhotos
    click element  id=tvSaveToPhotos
    sleep  2
    click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[@index='0']
    wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.appcompat.widget.LinearLayoutCompat/android.widget.FrameLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.TextView
    ${text1}=   get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.appcompat.widget.LinearLayoutCompat/android.widget.FrameLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.TextView
    log to console  Popup message =${text1}
    ${text2}=   set variable  You scanned your own Fayvo Code
    should be equal as strings  ${text1}    ${text2}
    ok button


search box on profile
    sleep  5
    run keyword and continue on failure  wait until element is visible  id=etSearch
    run keyword and continue on failure  input text  id=etSearch     AAA
view serached box
    sleep  5
#    wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.TextView[1]    timeout= 10 seconds
#    run keyword and continue on failure  click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.TextView[1]
#    run keyword and continue on failure  click element  xpath=//*[@id='boxParent'][0]
    run keyword and continue on failure  click element  id=boxParent
update box
    sleep  5
#    run keyword and continue on failure  wait until element is visible  id=iv_settings   timeout=10 seconds
    run keyword and continue on failure  click element  id=iv_settings
    run keyword and continue on failure  wait until element is visible  id=etInput
    run keyword and continue on failure  input text  id=etInput      BBB
    run keyword and continue on failure  click element  id=tvFollowers
    run keyword and continue on failure  click element  id=rlAddBox
#    run keyword and continue on failure  ok button
delete box
    sleep  2
    run keyword and continue on failure  click element  id=iv_settings
    run keyword and continue on failure  wait until element is visible  id=ivDelete
    run keyword and continue on failure  click element  id=ivDelete
    run keyword and continue on failure  ok button
#    run keyword and continue on failure  ok button
search user in following
    sleep  2
    click element  id=iv_search
    input text  id=etSearch    s
    sleep  3
    ${number_of_following_searched}=    get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.viewpager.widget.ViewPager/android.widget.RelativeLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout/android.widget.RelativeLayout[1]/android.widget.TextView[1]
    log to console  ${number_of_following_searched}
    hide keyboard
    wait until element is visible  id=ivCross
    click element  id=ivCross

create box on profile
    run keyword and continue on failure  wait until element is visible  xpath=//android.widget.TextView[@text='Add a Box']   timeout=10 seconds
    click element  xpath=//android.widget.TextView[@text='Add a Box']
    wait until element is visible  xpath=//android.widget.EditText[@text='Enter box Name']      timeout=120 seconds
    input text  xpath=//android.widget.EditText[@text='Enter box Name']     AAA
    wait until element is visible  id=tvOnlyMe
    click element  id=tvOnlyMe
    wait until element is visible  id=rlAddBox
    click element  id=rlAddBox
#    ok button

tap on 1st user in following list
#    run keyword and continue on failure  wait until element is visible  id=tvUserName
    sleep  5
    run keyword and continue on failure  click element  id=tvUserName
    log to console  done user

up and down loadmore request
    sleep  2
    swipe_up_for_other_profile
    swipe_up_for_other_profile
    sleep  2
    repeat keyword  4 times     swipe_down_for_other_profile

view all boxes
    sleep  5
    wait until element is visible   id=iv_thumbnail
    click element  id=iv_thumbnail
open box and bookmark the box
    sleep  10
    wait until element is visible   id=ivBookMarks
    click element  id=ivBookMarks
    sleep  5
    click element  id=bgGradient
    sleep  3
    wait until element is visible  id=iv_post_book_mark   timeout=20 seconds
    click element  id=iv_post_book_mark
    go back
#    sleep  17
#    wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.TextView
#    ${boxText}=     get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.TextView
#    log to console  ${boxText}
#    ${boxString}=   encode string to bytes   ${boxText}     UTF-8
#    set global variable  ${boxString}
#    log to console  ${boxString}
#    wait until element is visible  id=ivBookMarks   timeout=20 seconds
#    wait until element is visible  id=back_iv   timeout=20 seconds
    go back
#    click element  id=back_iv
    sleep  2
    go back
#    click element  id=back_iv
    sleep  2
    go back
#    click element  id=back_iv

#    go back


count the following of other users
    sleep  2
    tap on following list
    sleep  6
#    ${other_user_following_list}    create list
#    set global variable  ${other_user_following_list}
#    loop for count other user following
#    swipe up for count the following
#    following count
    go back
    go back
    go back


loop for count other user following


    sleep  5
    ${inner_follow_count}=      get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.viewpager.widget.ViewPager/android.widget.RelativeLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout
    log to console  ${inner_follow_count}

    :FOR    ${i}    IN RANGE    1    ${inner_follow_count}-1
    \   log to console  ${i}
    \   ${following_name}=   get text    xpath=//androidx.viewpager.widget.ViewPager/android.widget.RelativeLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[${i}]/android.widget.RelativeLayout[1]/android.widget.TextView[1]
    \   log to console  ${following_name}
    \   ${existing_name}=   run keyword and return status  list should contain value  ${other_user_following_list}      ${following_name}
    \   run keyword if  '${existing_name}'  ==  'False'     append to list  ${other_user_following_list}   ${following_name}
    log to console  ${other_user_following_list}


before bookmark box and post
    go to profile
    sleep  3
    log to console  befor tab
    wait until element is visible  id=ivBookmark    timeout=20 seconds
    click element  id=ivBookmark
    log to console  after tab
    sleep  5
    ${postcount}=    get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.TextView
    ${boxcount}=    get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.TextView

    log to console  text for Bookmark post==${postcount}==
    log to console  text for Bookmark box==${boxcount}==
    ${numberofposts}=     split string  ${postcount}   ${EMPTY}    -1
    ${numberofboxes}=     split string  ${boxcount}   ${EMPTY}    -1
    log to console  text for Bookmark post after spllit==${numberofposts}[0]==
    log to console  text for Bookmark box after spllit==${numberofboxes}[0]==
    set global variable  ${numberofposts}
    set global variable  ${numberofboxes}
    go back
After bookmark box and post
    go to profile
    sleep  3
    log to console  befor tab
    wait until element is visible  id=ivBookmark    timeout=20 seconds
    click element  id=ivBookmark
    log to console  after tab
    sleep  5
    ${Apostcount}=    get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.TextView
    ${Aboxcount}=    get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.TextView

    log to console  text for Bookmark post==${Apostcount}==
    log to console  text for Bookmark box==${Aboxcount}==
    ${Anumberofposts}=     split string  ${Apostcount}   ${EMPTY}    -1
    ${Anumberofboxes}=     split string  ${Aboxcount}   ${EMPTY}    -1
    log to console  text for Bookmark post after spllit==${Anumberofposts}[0]==
    log to console  text for Bookmark box after spllit==${Anumberofboxes}[0]==
    should not be equal  ${Anumberofposts}[0]      ${numberofposts}[0]
    should not be equal  ${Anumberofboxes}[0]      ${numberofboxes}[0]
    go back
tap on messages
    wait until element is visible  id=ivMessages    timeout=10 seconds
    click element  id=ivMessages

search user in messages
    sleep  5
    click element  id=ivMenuItem1
    sleep  2
    click element   id=ivMenuItem1
    wait until element is visible  id=etSearch
    input text  id=etSearch     maliko
    hide keyboard
tap on user which you want
    sleep  5
    wait until element is visible  xpath=//androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout/android.widget.TextView[@text='maliko']
    ${status}=      run keyword and return status  run keyword and continue on failure  click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout/android.widget.TextView[@text='maliko']
    Run Keyword If    "${status}"=="False"     go back

send the message

    wait until element is visible  id=etConversation
    input text  id=etConversation       Please text me
    click element  id=rlSend
    sleep  2
    input text  id=etConversation       Please text me
    click element  id=rlSend
    sleep  3


send the message for arround you

    wait until element is visible  id=etInput
    input text  id=etInput       Hi
#    click text  Send
    click element  xpath=//android.widget.TextView[@text='Send']
    sleep  2
    input text  id=etInput       Hi
#    click text  Send
    click element  xpath=//android.widget.TextView[@text='Send']
    sleep  3
before join count
    sleep  8
    ${usercount}=   get text  id=tvCount
    log to console  usercount====${usercount}==
    ${result}=  split string  ${usercount}      users are in this zone
    log to console  ${result}
    ${result1}=  split string  ${result}[0]      ${EMPTY}
    log to console  ${result1}
    ${result2}=     evaluate  ${result1}[0]+1
    log to console  sum==${result2}
    set global variable  ${result2}


after join count
    sleep  8
    ${external_group_user_count}=   get text  tvSubTitle
    log to console  external_group_user_count====${external_group_user_count}=
    ${result_external_group_user_count}=  split string  ${external_group_user_count}   ${EMPTY}    -1
    log to console  result_external_group_user_count==${result_external_group_user_count}==
    should be equal as strings  ${result2}     ${result_external_group_user_count}[0]



Scroll the group chat and verify chat and scroll button
    sleep  4
    swipe by percent    50     50     50    80
    swipe by percent    50     50     50    80
    swipe by percent    50     50     50    80
    element should be visible  id=ivScrollDown
    element should be visible  id=iv_user_profile
    click element  id=ivScrollDown
    sleep  5


match the message text inside and outside
#    ${numberofmessages}=    get matching xpath count  xpath=//androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout
    ${numberofmessages}=    get matching xpath count  id=txtMessageRight
#    log to console  ${numberofmessages}
#    set global variable  ${numberofmessages}
#    :FOR    ${i}    IN RANGE    1    ${numberofmessages}
    ${insideText}=   get text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[${numberofmessages}]/android.view.ViewGroup/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.TextView
    log to console  ${insideText}
    go back
    sleep  3
    ${outsideText}=   get text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.RelativeLayout/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.TextView[3]
    log to console  ${outsideText}

    run keyword and continue on failure  should be equal as strings  ${insideText}   ${outsideText}

delete single message
#    go back
#    sleep  2
#    click element  xpath=//android.view.ViewGroup/android.widget.TextView[@text='maliko']
    sleep  3
#    long press  id=txtMessageRight
    long press  id=cl_profile_container
#    long press  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[3]/android.widget.FrameLayout/android.view.ViewGroup

    wait until element is visible  id=ivMenuSearch
    click element  id=ivMenuSearch

delete conversation
    sleep  3
    Swipe left for delete conversation
    wait until element is visible  id=delete_layout
    click element  id=delete_layout

share profile in message
    click element  id=ivUserImage
    sleep  5
    click element  id=iv_user_profile_more

    wait until element is visible  id=tv_share_profile
    click element  id=tv_share_profile
    log to console  after_get
    sleep  3
    click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]
#    click element  xpath=//android.view.ViewGroup/android.widget.TextView[@text='maliko']
#    go back

share box in profile
    wait until element is visible  id=boxParent
    click element  id=boxParent
    wait until element is visible  id=ivShare
    click element  id=ivShare
    sleep  3
    click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]
    go back
    go back
    go back


open applictaion on other devices and go to messages
    ${appium2}=     open application  ${appiumserver1}   AutomationName=${UiAutomation1}       deviceName=${deviceName1}  udid=${udid1}    platformName=${platformname1}       platformVersion=${platformVersion1}   appPackage=${appPackage1}    appActivity=${appActivity1}     noReset=${noReset}  adbExecTimeout=${adbExecTimeout1}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout1}   newCommandTimeout=${newCommandTimeout}   app=${app}
#    ${appium2}=     open application  ${appiumserver1}   AutomationName=${UiAutomation1} systemPort=${systemPort1}      deviceName=${deviceName1}  udid=${udid1}    platformName=${platformname1}       platformVersion=${platformVersion1}   appPackage=${appPackage1}    appActivity=${appActivity1}     noReset=${noReset}  adbExecTimeout=${adbExecTimeout1}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout1}
#    ${appium2}=     open application  ${appiumserver1}   AutomationName=${UiAutomation1} systemPort=${systemPort1}      deviceName=${deviceName1}  udid=${udid1}    platformName=${platformname1}       platformVersion=${platformVersion1}   app=${app}  adbExecTimeout=${adbExecTimeout1}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout1}   newCommandTimeout=${newCommandTimeout}
#    ${appium2}=     open application  ${appiumserver1}   AutomationName=${UiAutomation1} systemPort=${systemPort1}      deviceName=${deviceName1}  udid=${udid1}    platformName=${platformname1}       platformVersion=${platformVersion1}   app=${app}  adbExecTimeout=${adbExecTimeout1}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout1}
    set global variable  ${appium2}
#    sleep  5
#    tap on login button from splash screen
#    sleep  3
#    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.EditText     akash1
#    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[5]/android.view.ViewGroup/android.widget.EditText     malik03136
#    tap on login and logout button

search user in messages on another devices
    sleep  3
    click element  id=ivMenuItem1
    sleep  2
    click element   id=ivMenuItem1
    wait until element is visible  id=etSearch  timeout=None
    input text  id=etSearch     ${result1}[1]
    hide keyboard
tap on user which you want on ther device
    sleep  5
    click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout/android.widget.TextView[@text='${result1}[1]']

#    notification message id ivNotificationDot
switch to appium 1
    switch application  ${appium1}
switch to appium 2
    switch application  ${appium2}
switch to appium 4
    switch application  ${appium4}

click on push notification
    sleep  5
#    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.ScrollView/android.widget.FrameLayout[1]
#    ${number_of_notification}=      get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout[1]/android.widget.FrameLayout/android.widget.ScrollView/android.widget.FrameLayout
#    log to console  ${number_of_notification}
#
#    :FOR    ${i}    IN RANGE    1    ${number_of_notification}+1
#    \   log to console  ${i}
##    \   sleep  3
##    \   ${present}=  Run Keyword And Return Status    Element Should Be Visible   xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.ScrollView/android.widget.FrameLayout[${i}]/android.widget.FrameLayout[1]/android.widget.FrameLayout/android.view.ViewGroup/android.widget.TextView[@text='Fayvo']
##    \   log to console  ${present}
##    \   ${present}=  Run Keyword And Return Status    Element Should Be Visible   xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.ScrollView/android.widget.FrameLayout[${i}]/android.widget.FrameLayout[1]/android.widget.FrameLayout/android.view.ViewGroup/android.widget.TextView[1]
##    \   log to console  ${present}
#    \   ${not_text}=    get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.ScrollView/android.widget.FrameLayout[${i}]/android.widget.FrameLayout[1]/android.widget.FrameLayout/android.view.ViewGroup/android.widget.TextView[1]
##    \   ${not_text}=    get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.ScrollView/android.widget.FrameLayout[1]
##    \   ${not_text}=    get text  xpath=
#    \   log to console  This is xpath =${not_text}
#
#    \   Run Keyword If    "${not_text}"=="Fayvo"    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.ScrollView/android.widget.FrameLayout[${i}]
#    \   Exit For Loop IF    "${not_text}"=="Fayvo"
#    \   ${not_text}=    get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout[1]/android.widget.FrameLayout/android.widget.ScrollView/android.widget.FrameLayout
#    \   ${not_text}=    get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout[1]/android.widget.FrameLayout/android.widget.ScrollView/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.widget.LinearLayout

#    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout[1]/android.widget.FrameLayout/android.widget.FrameLayout[2]/android.widget.FrameLayout/android.widget.ScrollView/android.widget.FrameLayout[1]
#    click element  id=android:id/app_name_text[1]
    click text  akash1
#
#    ${not_text1}=    get text  id=android:id/title
#    log to console  This is xpath =${not_text1}
#    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout[1]/android.widget.FrameLayout/android.widget.ScrollView/android.widget.FrameLayout[1]/android.view.View
#    click element  xpath=///android.widget.FrameLayout/android.view.ViewGroup/android.widget.TextView[@text='Fayvo']

#Run Keyword If    "${present}"=="True"
tap on profile from messages
    sleep  3
    click element  id=title_tv
tap on notification icon
    click element  id=ivNotifications
tap on follow button on profile message
    sleep  5
    wait until element is visible  id=tv_following_user
    click element  id=tv_following_user
tap on comment in post detail
    click element  id=tvLeavePostComment
post a comment
    wait until element is visible  id=leaveComment
    input text  id=leaveComment     @maliko

in application push notification for like
    tap on home button
    wait until element is visible  id=tvDescription    timeout=40 seconds
    click element  id=tvDescription
    sleep  5
    go back
    go back

in application push notification for comment

    wait until element is visible  id=tvDescription    timeout=40 seconds
    click element  id=tvDescription
    sleep  5
    go back
    go back
    go back

in application push notification for messages

    wait until element is visible  id=tvDescription    timeout=40 seconds
    click element  id=tvDescription
    sleep  5
    go back
    go back

in application push notification for mention

    wait until element is visible  id=tvDescription    timeout=40 seconds
    click element  id=tvDescription
    sleep  5
    go back
    go back
    click element  id=iv_post_close






friends category login card check
    tap on friends button
    sleep  3
#    click element   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.TextView[3]
    click text  Follow
    sleep  2
    run keyword and continue on failure  Element Should Be Visible   id=cardOptions
    go back



login card verify on invite people
    tap on invite people
    wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[2]/android.widget.RelativeLayout[2]/android.widget.ImageView       timeout=10 seconds
    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[2]/android.widget.RelativeLayout[2]/android.widget.ImageView
    sleep  2
    run keyword and continue on failure  Element Should Be Visible   id=cardOptions
    go back
    go back

login card verify for like on for you
    tap on for you category
    wait until element is visible  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[3]
    long press   xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[3]
    sleep  3
    click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.TextView[@text='Like']
    sleep  2
    run keyword and continue on failure  Element Should Be Visible   id=cardOptions
#    go back
    go back






login card verify for rport a post on for you
    tap on for you category
    long press report post
    run keyword and continue on failure  Element Should Be Visible   id=cardOptions
    go back

login card verify for other user profile
    wait until element is visible  id=tvSearch
    click element  id=tvSearch
    sleep  2
    input text  id=edtSearch    akash111
    sleep  3
    hide keyboard
    run keyword and continue on failure  wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.LinearLayout/android.widget.TextView
    run keyword and continue on failure  click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.TextView[@text='akash111']
    open post detail and swip

profile register button verify
    go to profile
    sleep  2
    run keyword and continue on failure  Element Should Be Visible   id=tv_register

Notification page register button verify
    tap on notification icon
    sleep  2
    run keyword and continue on failure  Element Should Be Visible   id=tv_register
messages page register button verify
    tap on messages
    sleep  2
    run keyword and continue on failure  Element Should Be Visible   id=tv_register


############################## NEw Guest Mode ###############################

view user profile on guest mode
    sleep  2
    tap on home button
    wait until element is visible  id=ivSearch
    click element  id=ivSearch
    sleep  2
    input text  id=edtSearch    aakash
#    input text  id=edtSearch    maliko
    sleep  3
    hide keyboard
    run keyword and continue on failure  wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.LinearLayout/android.widget.TextView
    run keyword and continue on failure  element should be visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.TextView[@text='aakash']
    ${checknameinlist}=     run keyword and return status  element should be visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.TextView[@text='aakash']
    log to console  checknameinlist===${checknameinlist}
    Run Keyword If    "${checknameinlist}"=="True"     click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.TextView[@text='aakash']
    Run Keyword If    "${checknameinlist}"=="False"    click text  People
    Run Keyword If    "${checknameinlist}"=="False"    sleep  3
    Run Keyword If    "${checknameinlist}"=="False"    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.TextView[@text='aakash']
    sleep  3


view user box on guest mode
    sleep  3
    click element  id=boxParent
    sleep  3

view user post on guest mode
    sleep  3
    click element  id=bgGradient
    sleep  3
longpress send message
    sleep  2
    long press  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.ImageView[1]
    sleep  2
#    click text  Send via Direct Message
    click element  xpath=//android.widget.TextView[@text='Send via Direct Message']
     sleep  2
#    click text  Cancel
    go back
    sleep  2
#    click text  Cancel
    go back
    sleep  2

like user post on guest mode
    sleep  5
    click element  id=ivMyReaction
    sleep  2
#    click text  Cancel
    go back
    sleep  2
post tag count on guest mode
    sleep  3
    ${tagcountouter}=   get text  id=mTxtTags
    ${splittag}=  split string  ${tagcountouter}    ${EMPTY}
    log to console  splittag===${splittag}=
    click element  id=mTxtTags
    sleep  3
    ${taglist}=     get matching xpath count  /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout
    log to console  taglist===${taglist}=
    sleep  3
    go back
#    Swipe Down for tag list
#    click element  id=img_arrow
#    scroll up  id=img_arrow



comment user post on guest mode
    sleep  2
    click element  id=tv_comment
    sleep  2
    input text  id=et_comment    ${Comment}
    click element  id=send_icon
    sleep  3
#    click text  Cancel
    go back
    sleep  2
    go back
    sleep  2
    click element  id=iv_post_close
    sleep  2
    click element  id=back_iv
    sleep  2

user report on guest mode
    sleep  2
    click element  id=iv_user_profile_more
    sleep  2
    click element  xpath=//android.widget.TextView[@text='Report']
    sleep  2
#    click text  It's spam
    click element  xpath=//android.widget.TextView[@text='It's spam']
    sleep  2
    click text  Cancel

user block on guest mode
    sleep  2
    click element  id=iv_user_profile_more
    sleep  2
#    click text  Block
    click element  xpath=//android.widget.TextView[@text='Block']
    sleep  2
#    click text  Cancel
    click element  xpath=//android.widget.TextView[@text='Cancel']
    sleep  2
    click element  id=iv_back
    sleep  2
    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup[1]/android.widget.LinearLayout/android.widget.ImageView
    sleep  3

############################## NEw Guest Mode ###############################

press volume button
    sleep  5
##    press keycode  24
##    press keycode  24
##    press keycode  24
##    press keycode  252
#    set network connection status  0
#    sleep  5
#    set network connection status  2
#    sleep  2
#
#    lock  5
#    execute script  (window.scrollBy(0,500)",")
#    scroll down  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView
    background app  -1
    Open Notifications
    sleep   10



################################## Expression ###############################

expression are showing
    sleep  5
    run keywords  long press  id=ivMyReaction     duration=5000     AND      log to console  hahhahahah
#    swipe  35   368     99      284     duration=5000
#    long press  xpath=(//XCUIElementTypeButton[@name="0"])[1]       duration=5 seconds
#    log to console  done long press
#    click element  xpath=//XCUIElementTypeStaticText[@name="Like"]

#    page should contain element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther

guest mode expression verification
    sleep  5
    long press  id=ivMyReaction       duration=5000
    tap  id=ivMyReaction     count=1
    sleep  2
#    click text  Cancel
    go back
    sleep  3
expression save and count should be increase and undo save
    sleep  3
    ${befor_exp_count}=   get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.TextView
    log to console  this is expression count before===${befor_exp_count}
    click element  id=ivMyReaction
    sleep  2
    ${after_exp_count}=   get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.TextView
    log to console  this is expression count after===${after_exp_count}
    should not be equal as numbers  ${befor_exp_count}     ${after_exp_count}

expression save without internet and count should be increase
    sleep  3
    ${befor_exp_count}=   get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.TextView
    log to console  this is expression count before===${befor_exp_count}
    log to console  manually off the internet
    set network connection status   0
    sleep  5
    click element  id=ivMyReaction
    sleep  2
    Swipe Down for home
    log to console  manually on the internet
    set network connection status   2
    sleep  5
    Swipe Down for home
    sleep  3
    ${after_exp_count}=   get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.TextView
    log to console  this is expression count after===${after_exp_count}
    should not be equal as numbers  ${befor_exp_count}     ${after_exp_count}
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[3]


Double tab like post
    sleep  3
    ${befor_exp_count}=   get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.TextView
    log to console  this is expression count before===${befor_exp_count}
    tap  id=ivMyReaction     count=2
    sleep  2
    ${after_exp_count}=   get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.TextView
    log to console  this is expression count after===${after_exp_count}
#    should not be equal as numbers  ${befor_exp_count}     ${after_exp_count}

verify expression in list
    sleep  3
#    ${like_status}=     run keyword and return status  element should be visible  accessibility_id=Love
#    log to console  like status==${like_status}
    ${expression}=  get element attribute  id=ivMyReaction      content-desc
    log to console  This is expression===${expression}?==
    ${expressionString}=   encode string to bytes   ${expression}     UTF-8
#    set global variable  ${boxString}
    log to console  This is expression string===${expressionString}?==

    click element  id=ivSrcIcon
    sleep  5
    click text  others
    sleep  5
#    ${emoji}=   get element attribute  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]/XCUIElementTypeImage     label
#    log to console  emojie=====${emoji}===
#    ${expressionString}=   encode string to bytes   ${emoji}     UTF-8
##    set global variable  ${boxString}
#    log to console  This is expression string===${expressionString}?==
    run keyword and continue on failure  Run Keyword If    "${expressionString}"=="1"     page should contain element  xpath=//android.widget.ImageView[@content-desc="1"]
    run keyword and continue on failure  Run Keyword If    "${expressionString}"=="0"     page should contain element  xpath=//android.widget.ImageView[@content-desc="0"]
    run keyword and continue on failure  Run Keyword If    "${expressionString}"=="2"     page should contain element  xpath=//android.widget.ImageView[@content-desc="2"]
    run keyword and continue on failure  Run Keyword If    "${expressionString}"=="3"     page should contain element  xpath=//android.widget.ImageView[@content-desc="3"]
    run keyword and continue on failure  Run Keyword If    "${expressionString}"=="4"     page should contain element  xpath=//android.widget.ImageView[@content-desc="4"]
    run keyword and continue on failure  Run Keyword If    "${expressionString}"=="5"     page should contain element  xpath=//android.widget.ImageView[@content-desc="5"]

#    click element  accessibility_id=LikeCommentTip
    go back

    sleep  2
    click element  id=iv_post_close



undo the expression
    sleep  3
    ${befor_exp_count}=   get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.TextView
    log to console  this is expression count before===${befor_exp_count}

    click element  id=ivMyReaction
    sleep  2
    ${after_exp_count}=   get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.TextView
    log to console  this is expression count after===${after_exp_count}
    should not be equal as numbers  ${befor_exp_count}     ${after_exp_count}

expression made by user from anywhere in the application
    sleep  3
#    ${befor_exp_count}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[3]/XCUIElementTypeButton
#    log to console  this is expression count before===${befor_exp_count}
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[3]
#    click element  xpath=(//XCUIElementTypeButton[@name="@maliksaab"])[1]
    click text  maliksaab
    wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[3]/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.ImageSwitcher/android.widget.ImageView
    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[3]/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.ImageSwitcher/android.widget.ImageView
    sleep  3
#    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther[1]/XCUIElementTypeImage
    click element  id=ivSrcIcon
    sleep  8
#    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeImage
#    long press  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeImage        duration=5000
    click element  id=ivMyReaction
    sleep  1
    click element  id=iv_post_close


    sleep  5
#    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther[3]/XCUIElementTypeButton
    ${expr_count}=  get text  id=tvCount
    log to console  Like Count in Box=${expr_count}==

    wait until element is visible  id=back_iv
    click element  id=back_iv

    wait until element is visible  id=iv_back
    click element  id=iv_back
    sleep  5
    ${after_exp_count}=   get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.view.ViewGroup[3]/android.view.ViewGroup/android.widget.TextView
    log to console  this is expression count after===${after_exp_count}

change expression
    sleep  3
    ${expression}=  get element attribute  id=ivMyReaction      content-desc
    log to console  This is expression before===${expression}?==

    long press  id=ivMyReaction
    log to console  change now
    sleep  10

    ${expression}=  get element attribute  id=ivMyReaction      content-desc
    log to console  This is expression after===${expression}?==
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[3]



################################## Expression ###############################


#################################### Fayvo Moments ################################

Discard story check
    sleep  3
#    click text  Add Status      exact_match=Ture
    long press  id=storyBackground
    sleep  3
    page should contain text  Create
#    click text  Text
    click element  xpath=//android.widget.TextView[@text='Create']
    sleep  3
    input text  id=add_text_edit_text     This is Status.
    click element  id=add_text_done_tv
    sleep  3
#    click element  id=ivEmoji
#    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[3]
    click element  id=ivBackgroundColor
    click element  id=ivBack
    sleep  2
#    click text  Cancel
    click element  xpath=//android.widget.TextView[@text='Cancel']
    click element  id=ivBack
    sleep  2
#    click text  Discard
    click element  xpath=//android.widget.TextView[@text='Discard']
    sleep  1
    click element  id=close_tv
    sleep  1
    go back


create text story
    sleep  3
#    click text  Add Status
    long press  id=storyBackground
    sleep  3
    page should contain text  Create
#    click text  Text
    click element  xpath=//android.widget.TextView[@text='Create']
    sleep  3
    input text  id=add_text_edit_text     This is Status.
    click element  id=add_text_done_tv
    sleep  3
#    click element  id=ivEmoji
#    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[3]
    click element  id=ivBackgroundColor
#    click text  Share
    click element  xpath=//android.widget.TextView[@text='Share']

create media story
    sleep  3
    long press  id=storyBackground
    sleep  2
#    click text  Photo/Video
#    click element  xpath=//android.widget.TextView[@text='Capture']
    sleep  5
#    camra permessions for story
#    camra permessions
#    click element  id=ivFlash
#    click element  id=ivSwitchMode
#    click element  id=ivSwitchMode
#    wait until element is visible  id=recordingButton
    click element  id=recordingButton
    sleep  5
#    edit a photo post
#    click text  Share
    click element  xpath=//android.widget.TextView[@text='Share']

create media video story
    sleep  3
    wait until element is visible  id=storyBackground       timeout= 30 seconds
    long press  id=storyBackground
    sleep  2
#    click text  Photo/Video
#    click element  xpath=//android.widget.TextView[@text='Capture']
    sleep  2
#    camra permessions for story
#    camra permessions
    click element  id=ivFlash
    click element  id=ivSwitchMode
    click element  id=ivSwitchMode
    wait until element is visible  id=recordingButton
    long press  id=recordingButton       duration= 10000
    sleep  5
#    edit a photo post
#    click text  Share
    click element  xpath=//android.widget.TextView[@text='Share']

create media multi story
    sleep  3
    wait until element is visible  id=storyBackground       timeout= 30 seconds
    long press  id=storyBackground
    sleep  2
#    click text  Photo/Video
#    click element  xpath=//android.widget.TextView[@text='Capture']
    sleep  2
#    click text  Gallery
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeButton
    click element  xpath=//android.widget.TextView[@text='Gallery']
    background app  5
    sleep  2
    click element  id=postCell

#    click element  xpath=(//XCUIElementTypeButton[@name="galleryselected"])[1]
#    click element  xpath=(//XCUIElementTypeButton[@name="galleryselected"])[2]
#    click element  xpath=(//XCUIElementTypeButton[@name="galleryselected"])[3]
#    click element  xpath=//XCUIElementTypeButton[@name="Next"]
    sleep  2
#    edit a photo post
#    swipe left for category
#    edit a photo post
#    swipe left for category
#    edit a photo post
#    click text  Share
    click element  xpath=//android.widget.TextView[@text='Share']

create checkin story
    sleep  3
    wait until element is visible  id=storyBackground       timeout= 30 seconds
    long press  id=storyBackground
#    page should contain text  Checkin
#    click text  Checkin
    click element  xpath=//android.widget.TextView[@text='Checkin']
    sleep  2
    ${location_access}=     run keyword and return status  page should contain text  Turn on Your Location
    Run Keyword If    "${location_access}"=="True"     click element  accessibility_id=Allow While Using App
    sleep  3
    page should contain text  You are at
#    click text  Search here
    click element  xpath=//android.widget.TextView[@text='Search here']
    sleep  2
    input text  xpath=//android.widget.EditText[@text='Enter box Name']     Lahore
#    click text  Lahore
    click element  xpath=//android.widget.TextView[@text='Lahore']
    sleep  2
#    click text  Share
    click element  xpath=//android.widget.TextView[@text='Share']

number of stories
    sleep  3
#    ${total_stories}=      get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup
    ${total_stories}=      get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.view.ViewGroup
    log to console  number of stories====${total_stories}===
    set global variable  ${total_stories}



count the viewers
#    sleep  3
#    click text  Your Story
    wait until element is visible  id=storyBackground       timeout= 30 seconds
    click element  id=storyBackground
#    wait until element is visible  id=bottomView
#    click element  id=bottomView
#    sleep  1
    ${views}=   run keyword and return status  text should be visible  views
    log to console  views===${views}==
    Run Keyword If    "${views}"=="False"     get count and match it
    ${cross}=   run keyword and return status  element should be visible  id=ivClose
    log to console  cross===${cross}==
#    Run Keyword If    "${cross}"=="True"     Swipe Down for story
    Run Keyword If    "${cross}"=="True"     click element  id=ivClose


get count and match it
    click text  Views
    sleep  3
    ${viewer_count}=    get text  id=tvViewedCount
    log to console  static count of viewer====${viewer_count}
    ${dynamic_viewer_count}=    get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup
    log to console  dynamic viewer count===${dynamic_viewer_count}
    run keyword and continue on failure  should be equal  ${viewer_count}    ${dynamic_viewer_count}
    swipe right for story viewer
    swipe right for story viewer
    swipe left for story viewer
    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ImageView

delete my story
    sleep  3
    wait until element is visible  id=storyBackground       timeout= 30 seconds
    click element  id=storyBackground
    sleep  1
    click element  id=ivOptions
    sleep  5
    click text  OK
#    wait until element is visible  xpath=//android.widget.TextView[@text='OK']     timeout=60 seconds
#    click element  xpath=//android.widget.TextView[@text='OK']
    sleep  2
#    Swipe Down for story
#    click element  id=ivClose
    go back


report story background app
    log to console  total_stories=====${total_stories}==
    sleep  3
    Run Keyword If    "${total_stories}">"1"     click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.view.ViewGroup
    Run Keyword If    "${total_stories}">"1"     sleep  2
    Run Keyword If    "${total_stories}">"1"     click element  id=ivOptions
    Run Keyword If    "${total_stories}">"1"     sleep  3
    Run Keyword If    "${total_stories}">"1"     background app  seconds= 5
    Run Keyword If    "${total_stories}">"1"     sleep  2
    Run Keyword If    "${total_stories}">"1"     click text  It's spam
    Run Keyword If    "${total_stories}">"1"     sleep  2
    Run Keyword If    "${total_stories}">"1"     Swipe Down for story
profile story verification
    sleep  3
    ${profilestatusbutton}=     run keyword and return status  element should be visible  id=ivPlusStatus
    Run Keyword If    "${profilestatusbutton}"=="True"     click element  id=ivPlusStatus
    Run Keyword If    "${profilestatusbutton}"=="True"     sleep  3
    Run Keyword If    "${profilestatusbutton}"=="True"     click element  id=ivBack
    Run Keyword If    "${profilestatusbutton}"=="False"     click element  id=ivProfile
    Run Keyword If    "${profilestatusbutton}"=="False"     sleep  1
    Run Keyword If    "${profilestatusbutton}"=="False"     go back

count sub stories
    sleep  3
    wait until element is visible  id=storyBackground       timeout= 30 seconds
    click element  id=storyBackground
    sleep  2
    ${count_sub_stories}=      get matching xpath count    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.LinearLayout/android.widget.FrameLayout
    log to console  Sub Stories Count====${count_sub_stories}===
#    click element  accessibility_id=Close stories to return to feed
#    Swipe Down for story
    go back

shift the story to next user
    sleep  3
    ${total_stories}=      get matching xpath count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell
    log to console  number of stories====${total_stories}===
    Run Keyword If    "${total_stories}">"2"     click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeStaticText
    sleep  1
    ${count_sub_stories}=   get matching xpath count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeStaticText[1]
    log to console  Sub Stories Count====${count_sub_stories}===
    ${story_duration}=    Evaluate    15 * ${count_sub_stories}
    log to console  total story time===${story_duration}

    ${1st_username}=    get text  xpath=//XCUIElementTypeButton[@name="story-header"]
    log to console  1st_username===${1st_username}

    sleep  ${story_duration}
    wait until element is visible   xpath=//XCUIElementTypeButton[@name="story-header"]
    ${2nd_username}=    get text  xpath=//XCUIElementTypeButton[@name="story-header"]
    log to console  2nd_username===${2nd_username}

    wait until element is visible  accessibility_id=Close stories to return to feed
    click element  accessibility_id=Close stories to return to feed

other user profile around story

    sleep  3
    click element  xpath=//XCUIElementTypeCollectionView[@name="main-feed"]/XCUIElementTypeCell[2]
    sleep  3
    element should be enabled  xpath=(//XCUIElementTypeOther[@name="story-ring"])[1]
    sleep  3
    click element  accessibility_id=Feed

check my story should be on first

    sleep  3
    ${my_story_ring}=   run keyword and return status  page should contain text  Your Story
    log to console  my_story_ring====${my_story_ring}===
    Run Keyword If    "${my_story_ring}"=="True"     element should contain text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.TextView      Your Story

check empty my story
    sleep  3
    ${empty_story}=     run keyword and return status     text should be visible  Add Status
    log to console  empty_story====${empty_story}===

long press add new story
    open instagram
    sleep  3
    long press  xpath=//XCUIElementTypeCell[@name="story-tray-cell-self"]
    sleep  3
    click text  Add to Your Story
    sleep  3
    page should contain text  Capture
    click text  Capture
    sleep  2
    camra permessions
    wait until element is visible  accessibility_id=cameraCircle
    click element  accessibility_id=cameraCircle
    sleep  2
    edit a photo post
    click text  Share

don't allow location
    sleep  3
    click text  Add Stories
    sleep  3
    page should contain text  Checkin
    click text  Checkin
    sleep  2
    ${location_access}=     run keyword and return status  page should contain text  Turn on Your Location
    Run Keyword If    "${location_access}"=="True"     click element  accessibility_id=Don't Allow
    sleep  3
    page should contain text  You are at
    click text  Search here
    sleep  2
    input text  xpath=//android.widget.EditText[@text='Enter box Name']     Lahore
    click text  Lahore
    sleep  2
    click text  Share


follow the new user and its story showing on home

    sleep  3
    tap on home button
    wait until element is visible  id=ivSearch
    click element  id=ivSearch
    sleep  2
    input text  id=edtSearch    maliksaab
#    input text  id=edtSearch    maliko
    sleep  3
    hide keyboard
    run keyword and continue on failure  wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.LinearLayout/android.widget.TextView
    run keyword and continue on failure  click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.TextView[@text='maliksaab']
#    run keyword and continue on failure  click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.TextView[@text='maliko']
#    run keyword and continue on failure  wait until element is visible  xpath=//android.widget.TextView[@text='FOLLOW']
    sleep  5

    ${user_name_for_story}=   get text  id=tv_user_name
    log to console  This is user_name_for_story Whole String=${user_name_for_story}
#    ${result1}=  split string  ${profile_name}   @
#    set global variable  ${result1}
#    log to console  ${result1}


#    ${user_name_for_story}=     get text  id=tv_user_name
    ${result_for_story_user}=  split string  ${user_name_for_story}   @
    ${globle_username_for_story}=     set variable  ${result_for_story_user}[1]
#    set global variable  ${result_for_story_user}
    ${follow_button}=   get text  id=tv_following_user
    log to console  follow_button==${follow_button}=
    ${present}=  Run Keyword And Return Status    should be equal as strings  ${follow_button}      FOLLOW
    log to console  ${present}

#    run keyword and continue on failure     Run Keyword If    "${present}"=="False"    click text  FOLLOWING
#    run keyword and continue on failure     Run Keyword If    "${present}"=="False"    click text  Unfollow
#    run keyword and continue on failure     Run Keyword If    "${present}"=="False"    open application to another device
#    run keyword and continue on failure     Run Keyword If    "${present}"=="False"    page should contain text  akash1
#    run keyword and continue on failure     Run Keyword If    "${present}"=="False"    switch to appium 1
#    run keyword and continue on failure     Run Keyword If    "${present}"=="False"    click element  accessibility_id=FOLLOW
    run keyword and continue on failure     Run Keyword If    "${present}"=="True"     click text  FOLLOW
#    run keyword and continue on failure     Run Keyword If    "${present}"=="True"    ${user_name_for_story}=     get text  id=tv_user_name
    run keyword and continue on failure     Run Keyword If    "${present}"=="True"     log to console  User Name===${result_for_story_user}[1]=
    run keyword and continue on failure     Run Keyword If    "${present}"=="True"     set global variable  ${globle_username_for_story}
    sleep  2
    run keyword and continue on failure  click element  id=iv_back
    sleep  2
    run keyword and continue on failure  click element  id=btnBack

    sleep  3
#    scroll up  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]
    Swipe_down_for_friends_category
    sleep  3
    run keyword and continue on failure     Run Keyword If    "${present}"=="True"     page should contain text  maliksaab
    run keyword and continue on failure     Run Keyword If    "${present}"=="False"    page should not contain text  maliksaab
#    log to console  1st_other_user===${1st_other_user}
#    should be equal  ${1st_other_user}      ${globle_username_for_story}



update story from other user
    sleep  3
#    ${total_stories}=   get text  xpath=//XCUIElementTypeCell[@name="stories-tray"]/XCUIElementTypeOther[1]/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeStaticText
#    log to console      total_stories====${total_stories}=
    click element  xpath=//XCUIElementTypeCell[@name="stories-tray"]/XCUIElementTypeOther[1]/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeStaticText
#    sleep  3
#    ${story_time}=      get text  xpath=//XCUIElementTypeOther[@name="story-fullscreen-overlay-view"]/XCUIElementTypeOther[5]/XCUIElementTypeOther[2]/XCUIElementTypeStaticText
#    log to console      story_time===${story_time}=
    wait until element is visible  xpath=//XCUIElementTypeOther[@name="story-fullscreen-overlay-view"]/XCUIElementTypeOther[4]/XCUIElementTypeOther
    ${count_sub_stories}=   get matching xpath count  xpath=//XCUIElementTypeOther[@name="story-fullscreen-overlay-view"]/XCUIElementTypeOther[4]/XCUIElementTypeOther
    log to console  Sub Stories Count====${count_sub_stories}===
    click element  accessibility_id=Close stories to return to feed
    sleep  2
#    long press add new story
#    sleep  2
#    scroll up  accessibility_id=main-feed
    click element  xpath=//XCUIElementTypeCell[@name="stories-tray"]/XCUIElementTypeOther[1]/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeStaticText
    wait until element is visible  xpath=//XCUIElementTypeOther[@name="story-fullscreen-overlay-view"]/XCUIElementTypeOther[4]/XCUIElementTypeOther
    ${count_sub_stories}=   get matching xpath count  xpath=//XCUIElementTypeOther[@name="story-fullscreen-overlay-view"]/XCUIElementTypeOther[4]/XCUIElementTypeOther
    log to console  Sub Stories Count====${count_sub_stories}===
    click element  accessibility_id=Close stories to return to feed
    sleep  2


delete update
    sleep  3
    open instagram
    click text  Your Story
#    wait until element is visible  xpath=//XCUIElementTypeOther[@name="story-fullscreen-overlay-view"]/XCUIElementTypeOther[4]/XCUIElementTypeOther
    ${count_sub_stories}=   get matching xpath count  xpath=//XCUIElementTypeOther[@name="story-fullscreen-overlay-view"]/XCUIElementTypeOther[4]/XCUIElementTypeOther
    log to console  Sub Stories Count====${count_sub_stories}===
#    wait until element is visible   accessibility_id=More
#    sleep  1
    click element  accessibility_id=More
    sleep  2
    click text  Delete
    sleep  2
    click text  Delete
    Run Keyword If    "${count_sub_stories}">"1"    count_sub_stories_delete
    Run Keyword If    "${count_sub_stories}">"1"    accessibility_id=Close stories to return to feed
    sleep  3
    Run Keyword If    "${count_sub_stories}"=="1"    element should be enabled  accessibility_id=empty-story-badge-big-panorama
    sleep  2

count_sub_stories_delete
    wait until element is visible  xpath=//XCUIElementTypeOther[@name="story-fullscreen-overlay-view"]/XCUIElementTypeOther[4]/XCUIElementTypeOther
    ${count_sub_stories_delete}=   get matching xpath count  xpath=//XCUIElementTypeOther[@name="story-fullscreen-overlay-view"]/XCUIElementTypeOther[4]/XCUIElementTypeOther
    log to console  count_sub_stories_delete==${count_sub_stories_delete}=
    set global variable  ${count_sub_stories_delete}

############## With out internet Stories ###################
tap on your story
    sleep  3
    click text  Your Story
long press for story stay
    long press  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeImage    duration=30000
tap on retry story option button
    run keyword and continue on failure  click element  id=reloadWhite
close story
    click element  id=ivClose
tap on delete story option
    click element  accessibility_id=delete
loading status on storty
    page should contain text  Uploading
Verify Uploading Failed
    sleep  1
    page should contain text  Uploading...
#    log to console  that's
turn off the internet
    set network connection status   0
turn on the internet
    set network connection status   2
steps for check the loader button
    sleep  3
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeStaticText
    click text  maliksaab
    sleep  3
    page should contain element  accessibility_id=reloader



open story and trun off the internet
    sleep  3
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeStaticText
    click text  maliksaab
    sleep  3
#    sleep  10
#    click element  accessibility_id=Close stories to return to feed

open story without internet for cached story
    sleep  2
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[3]/XCUIElementTypeOther/XCUIElementTypeStaticText
#    sleep  3
#    element should be disabled  accessibility_id=refresh big
#    sleep  3
    click element  id=ivClose

open story without internet
    sleep  3
#    click element  xpath=//XCUIElementTypeCollectionView[@name="main-feed"]/XCUIElementTypeCell[4]
    click text  maliksaab
    sleep  3
#    element should be visible  accessibility_id=refresh big
    log to console  "Manual turn on the internet"
    sleep  1
#    click element  accessibility_id=refresh big
#    wait until element is visible  id=ivClose
    click element  id=ivClose
############## With out internet Stories ###################

################### Follow & UnFollowing User ######################
unfollow user then verify story
    click text  Your Story
#    sleep  2
#    scroll up  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeImage
    swipe up for story

    ${views}=   get text  xpath=//XCUIElementTypeStaticText[@name="No Views"]
    log to console  views==${views}==
#    scroll up  xpath=//XCUIElementTypeStaticText[@name="No Views"]
#    sleep  3
    click text  maliksaab
#    sleep  5
    click text  FOLLOWING
#    sleep  3
    click text  Unfollow
#    sleep  3
    click element  accessibility_id=BackIcon
#    sleep  3
    scroll up  accessibility_id=scroll
#    sleep  3
    page should not contain text  maliksaab

    page should contain text

follow user then verify story
    sleep  2
    tap on home button
    wait until element is visible  accessibility_id=Search
    click element  accessibility_id=Search
    sleep  2
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField    maliksaab
    sleep  2
    hide keyboard
    run keyword and continue on failure  wait until element is visible  accessibility_id=maliksaab
    run keyword and continue on failure  click element  accessibility_id=maliksaab
    sleep  5
    click text  FOLLOW
    sleep  5
    click element  accessibility_id=BackIcon
    sleep  2
    click element  accessibility_id=BackIcon
    scroll up  accessibility_id=scroll
    sleep  2
    click text  Your Story
    sleep  1
    click text  Views
    sleep  3
    page should contain text  maliksaab


################### Follow & UnFollowing User ######################

user swipe his story and add new story
    sleep  3
    click text  Your Story
    sleep  2
    ${count_sub_stories}=   get matching xpath count  xpath=//XCUIElementTypeOther[@name="story-fullscreen-overlay-view"]/XCUIElementTypeOther[4]/XCUIElementTypeOther
    log to console  Sub Stories Count====${count_sub_stories}===
    run keyword if  "${count_sub_stories}" > "1"     swipe left for category
    run keyword if  "${count_sub_stories}" > "1"     swipe right for category
    FOR    ${i}    IN RANGE    2    ${count_sub_stories}+1
       swipe left for category
    END
    click text  Add Status
    sleep  2
    page should contain text  Capture
    click text  Capture
    sleep  2
    camra permessions
    wait until element is visible  accessibility_id=cameraCircle
    click element  accessibility_id=cameraCircle
    sleep  2
    edit a photo post
    click text  Share
    sleep  2
    click element  accessibility_id=Close stories to return to feed


open the user profile from story detail
    sleep  3
    click text  maliksaab
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeStaticText
#    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeImage
    sleep  2
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeImage
    click element  id=tvUsername
#    run keyword and continue on failure  element should be visible  id=iv_back
    sleep  2
    click element  id=ivClose
#    sleep  2
#    click element  accessibility_id=WhiteCrossIcon



#################################### Fayvo Moments ################################


##################################### Around You #######################################

verify the arround you
    sleep  10
    text should be visible  Around You

tap on share button
    click element  id=Share

tap on join talk
    sleep  3
    click text  Join Talk
tap on join chat
    sleep  3
    click text  Tap to join the zone chat

verify message field
    sleep  3
    page should contain text  Type message
check next button for transaction screen
    sleep  5
    ${next_btn_status}=     run keyword and return status  page should contain text  Next
    log to console  next_btn_status====${next_btn_status}=
    Run Keyword If    "${next_btn_status}"=="True"     verify the next button
    Run Keyword If    "${next_btn_status}"=="True"     verify the I am in the zone, Lets rock button
    Run Keyword If    "${next_btn_status}"=="True"     verify the Lets Share Favs button
    diclimer popup

verify the next button
    sleep  3
    ${next_btn_status}=     run keyword and return status  page should contain text  Next
    log to console  next_btn_status====${next_btn_status}=
#    Run Keyword If    "${next_btn_status}"=="True"     click text  Next
    run keyword and continue on failure     Run Keyword If    "${next_btn_status}"=="True"     click element  id=tvDone
    run keyword and continue on failure     Run Keyword If    "${next_btn_status}"=="False"     tap on skip button

verify the I am in the zone, Lets rock button
    sleep  3
    ${zone_btn_status}=     run keyword and return status  page should contain text  I am in the zone, Lets rock
    log to console  zone_btn_status===${zone_btn_status}=
    run keyword and continue on failure     Run Keyword If    "${zone_btn_status}"=="True"     click element  id=tvDone
    run keyword and continue on failure     Run Keyword If    "${zone_btn_status}"=="False"     tap on skip button

verify the Lets Share Favs button
    sleep  3
    ${share_btn_status}=     run keyword and return status  page should contain text  Let’s Share Favs
    log to console  share_btn_status====${share_btn_status}=
#    Run Keyword If    "${share_btn_status}"=="True"     click text  Let’s Share Favs
    run keyword and continue on failure     Run Keyword If    "${share_btn_status}"=="True"     click element  id=tvDone
    run keyword and continue on failure     Run Keyword If    "${share_btn_status}"=="False"     tap on skip button

diclimer popup
    sleep  3
    ${share_btn_status}=     run keyword and return status  page should contain text  Join the Chat
    log to console  diclimer popup====${share_btn_status}=
#    Run Keyword If    "${share_btn_status}"=="True"     click text  Let’s Share Favs
    run keyword and continue on failure     Run Keyword If    "${share_btn_status}"=="True"     click element  id=tvAccept
#    run keyword and continue on failure     Run Keyword If    "${share_btn_status}"=="False"     click element  id=tvCancel


tap on skip button
    sleep  2
#    click text  Skip
    click element  id=tvSkip

group user count external
    sleep  8
    ${external_group_user_count}=   get text  tvSubTitle
    log to console  external_group_user_count====${external_group_user_count}=
    ${result_external_group_user_count}=  split string  ${external_group_user_count}   ${EMPTY}    -1
    log to console  result_external_group_user_count==${result_external_group_user_count}[0]==
#    ${result} =    Split String    ${WHITE SPACES}    ${EMPTY}    -1
    set global variable  ${result_external_group_user_count}

tap on group image
    sleep  2
    click element  id=ivThumbnail

verify group detail screen
    sleep  2
    page should contain text  Description


group user count
    sleep  2
#    ${user_count}=  get count   id=rvDetail   id=tvUsername
    ${user_count}=  get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.TextView
    log to console  user_count==${user_count}=
    ${users}=   evaluate  ${user_count}-5
    log to console  user after 5====${users}=
    should be equal as integers  ${users}      ${result_external_group_user_count}[0]
tap on option button
    sleep  5
    click element  id=ivMore

verify option sheet
    sleep  5
    click element  id=ivBack
tap on leave group
    sleep  5
#    click text  Leave Group
    click element  xpath=//android.widget.TextView[@text='Leave Group']
tap on report group
    sleep  3
    click element  id=tvReportGroup

report reason sheet
    sleep  2
    page should contain text  Fraud or scam
select any option
#    click text  Fraud or scam
    click element  xpath=//android.widget.TextView[@text='Fraud or scam']
tap on ok button
    sleep  5
#    click text  YES
    click element  id=button1

leave group banner
    page should contain text  successfully leave groupe.
report group banner
    page should contain text  successfully reported groupe.
lon press on message
    log to console  do it now
    sleep  5
    long press  id=clSender
tap on delete button
    sleep  2
    click element  id=ivDelete
delete message banner
    page should contain text  successfully message delete groupe.
tap on other zone
    wait until page contains  Other Zones   timeout=20s
#    click text  Other Zones
    click element  xpath=//android.widget.TextView[@text='Other Zones']
count other zones
    sleep  3
    ${other_zones_count}=   get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.TextView[1]
    log to console  other_zones_count===${other_zones_count}=
    scroll the zones
scroll the zones
    sleep  3
#    Swipe_up_for_other_zone
    swipe by percent    50     80     50    50
#    Swipe_down_for_other_zone
    click element  id=ivBack

open the user profile
    sleep  5
#    ${no_message}=      get matching xpath count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell
#    log to console  no_message===${no_message}=
#    ${exactno}=     evaluate  ${no_message}-2
#    log to console  exactno===${exactno}
    click element  id=iv_user_profile
    sleep  5
    click element  id=iv_back
check location button
    sleep  5
    ${next_btn_status}=     run keyword and return status  page should contain text  Turn on Your Location
    log to console  location_btn_status===${next_btn_status}=
    Run Keyword If    "${next_btn_status}"=="True"     tap on turn on your location
    Run Keyword If    "${next_btn_status}"=="True"     setting permissions
tap on turn on your location
    sleep  3
#    click text  Turn on Your Location
    click element  xpath=//android.widget.TextView[@text='Turn on Your Location']

setting permissions
#    wait until page contains  While using the app
#    click text  While using the app
#    wait until page contains  Deny
#    click text  Deny

#    wait until page contains  Allow
    sleep  5
    ${Location_permission}=  Run Keyword And Return Status    text should be visible  While using the app
    log to console  allow Location_permission==${Location_permission}=
    Run Keyword If    "${Location_permission}"=="True"     click text     While using the app
    Run Keyword If    "${Location_permission}"=="False"     click element  id=com.android.permissioncontroller:id/permission_allow_button

#    click element  id=com.android.packageinstaller:id/permission_allow_button

#    click text  Location
#    click text  Ask Next Time
location permission allow
    sleep  3
#    click text  Allow While Using App
    click element  xpath=//android.widget.TextView[@text='Allow While Using App']


##################################### Around You #######################################

############################################# Save box from post Test Cases #####################################
create box for save post
    run keyword and continue on failure  wait until element is visible  xpath=//android.widget.TextView[@text='Add a Box']   timeout=10 seconds
    click element  xpath=//android.widget.TextView[@text='Add a Box']
    wait until element is visible  xpath=//android.widget.EditText[@text='Enter box Name']      timeout=120 seconds
    input text  xpath=//android.widget.EditText[@text='Enter box Name']     SavePostBox
    wait until element is visible  id=tvOnlyMe
    click element  id=tvOnlyMe
    wait until element is visible  id=rlAddBox
    click element  id=rlAddBox
    ok button

search box for save post
    sleep  5
    run keyword and continue on failure  wait until element is visible  id=etSearch
    run keyword and continue on failure  input text  id=etSearch     SavePostBox

tap on add post
    sleep  3
    ${save_button}=  Run Keyword And Return Status    element should be visible  id=btnAddPost
    log to console  save_button==${save_button}=
    Run Keyword If    "${save_button}"=="True"     click element  id=btnAddPost
    Run Keyword If    "${save_button}"=="False"     click element  id=iv_add_post
#    sleep  3
#    click element  id=btnAddPost
tap on plus button to add post
    sleep  3
    click element  id=iv_add_post
Save music post from box
    sleep  2
    click element  xpath=//android.widget.TextView[@text='Music']
    save post from box search a post and post it
Save movies post from box
    sleep  2
    click element  xpath=//android.widget.TextView[@text='Movies/Series/TV Shows']
    save post from box search a post and post it


save post from box search a post and post it
    sleep  2
    ${present1}=  Run Keyword And Return Status    Element Should Be Visible   xpath=//android.widget.Button[@text='Allow']
    log to console  ${present1}
    sleep  2
    Run Keyword If    "${present1}"=="True"     click element  xpath=//android.widget.Button[@text='Allow']
    sleep  1
    input text  id=etSearch    hello
    wait until element is visible  xpath=//androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[@index='0']
    click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[@index='0']
    sleep  5
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.FrameLayout/android.widget.TextView[@text='Saved']
    log to console  ${present}
    sleep  2
#    Run Keyword If    "${present}"=="True"     click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.FrameLayout/android.widget.TextView[@text='Saved']
#    sleep  2
#    Run Keyword If    "${present}"=="True"     click element  id=tv_remove_post
#    Run Keyword If    "${present}"=="True"     wait until element is visible  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.FrameLayout/android.widget.TextView[@text='Save']      timeout=40s
    Run Keyword If    "${present}"=="True"     click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/androidx.cardview.widget.CardView/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[3]
    sleep  2
    ${saved_status}=  Run Keyword And Return Status    text should be visible  Saved
    log to console  saved_status====${saved_status}=
    Run Keyword If    "${saved_status}"=="True"     click element  id=btn_save_states
    Run Keyword If    "${saved_status}"=="True"     sleep  2
    Run Keyword If    "${saved_status}"=="True"     click text  REMOVE
    Run Keyword If    "${saved_status}"=="True"     sleep  15
    Run Keyword If    "${saved_status}"=="True"     click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/androidx.cardview.widget.CardView/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[3]
    save post from box check boxes are load or not for API

save post from box check boxes are load or not for API
    sleep  5
    ${boxes_data}=  Run Keyword And Return Status      wait until element is visible  xpath=//android.widget.TextView[@text='Proceed']    timeout=10 seconds
    log to console  This is API boxes Data=${boxes_data}
    sleep  3
    Run Keyword If    "${boxes_data}"=="True"      click element  id=btn_save_states
    Run Keyword If    "${boxes_data}"=="True"      sleep  5
    Run Keyword If    "${boxes_data}"=="True"      click element  id=button
    sleep  3
    Run Keyword If    "${boxes_data}"=="True"      run keyword and continue on failure  element should be visible  id=iv_add_post





############################################# Save box from post Test Cases #####################################

############################################# Profile story Test Cases #####################################

tap on profile details from setting
    sleep  2
    click element  id=tvProfileDetail

############################################# Profile story Test Cases #####################################



steps for notification open
    background app  -1
    Open Notifications

############################################# Fetch Post Test Cases #####################################
Verify the post name at feed
    sleep  4
    run keyword and continue on failure  text should be visible   ${Postname}[0]

get the post time at feed
    sleep  5
    ${videoposttime}=    get text  id=tvTime
#    log to console  videoposttime==${videoposttime}=


create the post from second device for post time
    sleep  3
    tap on post button
    sleep  2
    click element  xpath=//android.widget.TextView[@text='Movies/Series/TV Shows']
    search a post and post it from second device




################################################### USer story and suggestion user list #################################
tap for each userstory and suggestion user

    ${userstorysuggestionuser_name_list}    create list
    ${storyuserlist}    create list
    set global variable  ${userstorysuggestionuser_name_list}
    set global variable  ${storyuserlist}
    sleep  3
    repeat keyword  20 times    loop and swipe for userstory suggestion user
    loop and swipe for userstory suggestion user
    loop for last suggestion user story
    log to console  cat_name_list==${userstorysuggestionuser_name_list}==
    ${catlength}=   get length  ${userstorysuggestionuser_name_list}
    log to console  catlength==${catlength}
    log to console  storyuserlist==${storyuserlist}==
    ${afterremoveduplicationstoryuser}=     remove duplicates  ${storyuserlist}
    log to console  afterremoveduplicationstoryuser=${afterremoveduplicationstoryuser}
    ${storlistlength}=   get length  ${storyuserlist}
    log to console  storlistlength==${storlistlength}


loop and swipe for userstory suggestion user
    loop for suggestion user story
    Swipe left for userstory and suggestion user

loop for suggestion user story
#    sleep  2
#    wait until element is visible       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout     timeout=120 seconds
#    ${cat_count}=    get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout
    ${cat_count}=    get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup
    log to console  cat_count==${cat_count}=
    FOR    ${i}    IN RANGE    2    ${cat_count}
       ${storyusername}=   run keyword and return status  element should be visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[${i}]/android.view.ViewGroup
#       log to console  storyusername===${storyusername}
       ${cat_name}=   get text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[${i}]/android.widget.TextView
       ${check_category_in_list}=      run keyword and return status  list should contain value  ${userstorysuggestionuser_name_list}   ${cat_name}
#       log to console  this is catname=${cat_name}
#       log to console  this is status of listname have=${check_category_in_list}

#       Run Keyword If    "${check_category_in_list}"=="False"     click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[${i}]/android.widget.TextView
#       Run Keyword If    "${check_category_in_list}"=="False"     swipe down for home
#       sleep  5
#    \   Run Keyword If    "${check_category_in_list}"=="False"     element should be visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.ImageView
       Run Keyword If    "${check_category_in_list}"=="False"     append to list  ${userstorysuggestionuser_name_list}   ${cat_name}
       Run Keyword If    "${storyusername}"=="True"     append to list  ${storyuserlist}   ${cat_name}
    END
loop for last suggestion user story
#    sleep  2
    ${cat_count}=    get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup
    FOR    ${i}    IN RANGE    2    ${cat_count}+1
       ${storyusername}=   run keyword and return status  element should be visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[${i}]/android.view.ViewGroup
       ${cat_name}=   get text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[${i}]/android.widget.TextView
       ${check_category_in_list}=      run keyword and return status  list should contain value  ${userstorysuggestionuser_name_list}   ${cat_name}
#       log to console  this is catname=${cat_name}
#       log to console  this is status of listname have=${check_category_in_list}
       Run Keyword If    "${check_category_in_list}"=="False"     append to list  ${userstorysuggestionuser_name_list}   ${cat_name}
       Run Keyword If    "${storyusername}"=="True"     append to list  ${storyuserlist}   ${cat_name}
    END

get token api
    create session  mysession1  ${base_url_production}     verify=True
#    create session  mysession1  ${base_url_staging}     verify=True
    ${header}=       create dictionary   User-Agent=${user-agent}    x-api-key=${x-api-key_production}      Content-Type=text/plain     device-info=aWxzYS1IUC1Qcm9Cb29rLTY1MC1HMTE=       security-token=ilsa-dev-team-fayvo-786
#    ${header}=       create dictionary   User-Agent=${user-agent}    x-api-key=${x-api-key_staging}      Content-Type=text/plain     device-info=aWxzYS1IUC1Qcm9Cb29rLTY1MC1HMTE=       security-token=ilsa-dev-team-fayvo-786
    ${params}=      create dictionary   username=maliko        password=malik0313
    ${response}=     post on session  mysession1     login-user?      params=${params}      headers=${header}
    ${content_dic}=     evaluate     json.loads('''${response.content}''')      json
    ${savedidtoken}    create list
    ${savedidtoken}=      get value from json  ${content_dic}     IdToken
    ${tokentostrip}=        convert to string       ${savedidtoken}
    ${strippedtoken}=       strip string        ${tokentostrip}     characters=['']
    set global variable  ${strippedtoken}
#    log to console      stripped token is:===>>>>${strippedtoken}


#create box with api
#    create session    mysession1      ${base_url_production}     verify=True
##    create session  mysession1  ${base_url_staging}     verify=True
#    ${header}=  create dictionary       user-agent=${user-agent}        x-api-key=${x-api-key_production}      token=${strippedtoken}
##    ${header}=  create dictionary       user-agent=${user-agent}        x-api-key=${x-api-key_staging}      token=${strippedtoken}
#    ${body}=    create dictionary       name=scripting box 1        status=A
#    ${body1}=   create dictionary  data=${body}
#    ${body_data}=   evaluate     json.dumps(${body1})   json
#    ${response}=      post on session     mysession1         /user/create-box      headers=${header}     data=${body_data}
#    log to console      response[1].content====>${response.content}<=========


quick post create
    create session  mysession1  https://m6t1fjtsb1.execute-api.us-west-2.amazonaws.com/rc-01/     verify=True
    ${header}=  create dictionary         user-agent=${user-agent}        x-api-key=${x-api-key_production}      lang=en     Content-Type=application/json       token=${strippedtoken}
    ${body}=    create dictionary   local_db_path=gy9TlsYJ52d2d_001274038626002001     source_type=youtube     source_id=orJSJGHjBLI   text_content=Ed Sheeran - Bad Habits [Official Video]   search_key=    item_type_number=2        box_ids=[114539]        post_id=0
    ${body1}=   create dictionary  data=${body}
    ${body_data1}=   evaluate     json.dumps(${body1})   json
    ${str}=     replace string      ${body_data1}      "[114539]"       [114539]

    ${response}=     post on session  mysession1     /post/create-quick-post      headers=${header}       data=${str}
    ${json_obj}=    convert string to json      ${response.content}
    ${Postname}=      Get Value From Json   ${json_obj}     $.data..content
#    log to console  id=========>${Postname}[0]<==========
    set global variable  ${Postname}


For You Banner verify
    sleep  3
    element should be visible  id=banner_item

For You Banner verify without internet
    sleep  3
    page should not contain element  id=banner_item

get the count of suggestion users
    sleep  3
    ${suggestionusercounforyou}=    get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup
    log to console  suggestionusercounforyou===${suggestionusercounforyou}===
    should not be equal as numbers  ${suggestionusercounforyou}     1

see all one by one
    ${foryousectionslist}   create list
    set global variable  ${foryousectionslist}
    loop for section name
    log to console  loop0
    loop2 for section name
    log to console  loop1
    loop2 for section name
    log to console  loop2
#    loop2 for section name
#    log to console  loop3
#    loop2 for section name
    log to console  foryousectionslist==${foryousectionslist}=
loop for section name
    sleep  5
    ${suggestionusercounforyou}=    get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup
    log to console  suggestionusercounforyou===${suggestionusercounforyou}=
    FOR    ${i}    IN RANGE    1    ${suggestionusercounforyou}+1
       sleep  1
       ${sectionname}=     get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[${i}]/android.widget.TextView[1]
       log to console  sectionname==${sectionname}==
       ${checksectionnameinlist}=   run keyword and return status  list should contain value  ${foryousectionslist}     ${sectionname}
       Run Keyword If    "${checksectionnameinlist}"=="False"     append to list  ${foryousectionslist}      ${sectionname}
#       Run Keyword If    "${checksectionnameinlist}"=="False"     click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[${i}]/android.widget.TextView[2]
#       Run Keyword If    "${checksectionnameinlist}"=="False"     sleep  2
#       Run Keyword If    "${checksectionnameinlist}"=="False"     click element  id=ivBack
       Run Keyword If    "${checksectionnameinlist}"=="False"     sleep  2
    END
#    Swipe_down_for_You_category for slow
    swipe by percent  50    60      50      40      1000
    sleep  2
    ${cancel}=  run keyword and return status  text should be visible  Cancel
    Run Keyword If    "${cancel}"=="True"       click text  Cancel

loop2 for section name
    ${suggestionusercounforyou}=    get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup
    log to console  suggestionusercounforyou===${suggestionusercounforyou}=
    FOR    ${i}    IN RANGE    2    ${suggestionusercounforyou}+1
       sleep  5
       ${sectionname}=     get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[${i}]/android.widget.TextView[1]
       log to console  sectionname==${sectionname}==
       set global variable  ${i}
       ${checksectionnameinlist}=   run keyword and return status  list should contain value  ${foryousectionslist}     ${sectionname}
       Run Keyword If    "${checksectionnameinlist}"=="False"     append to list  ${foryousectionslist}      ${sectionname}
       Run Keyword If    "${checksectionnameinlist}"=="False"     click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[${i}]/android.widget.TextView[2]
       Run Keyword If    "${checksectionnameinlist}"=="False"     sleep  2
       Run Keyword If    "${checksectionnameinlist}"=="False"     click element  id=ivBack
#       Run Keyword If    "${checksectionnameinlist}"=="False"     Swipe left for for you section

#       Run Keyword If    "${checksectionnameinlist}"=="False"     sleep  2
#       Run Keyword If    "${checksectionnameinlist}"=="False"     background app  1
#       Run Keyword If    "${checksectionnameinlist}"=="False"     tap on home button
       Run Keyword If    "${sectionname}" == "${moviesseries}"    Swipe left for for you section
       Run Keyword If    "${sectionname}" == "${moviesseries}"    Play trailer from movies
       Run Keyword If    "${sectionname}" == "${Music}"    Swipe left for for you section
       Run Keyword If    "${sectionname}" == "${Music}"    Play music from music section
       Run Keyword If    "${sectionname}" == "${Books}"    Swipe left for for you section
#       Run Keyword If    "${sectionname}" == "${Books}"    books for videos

       Run Keyword If    "${sectionname}" == "${Photosandvideos}"    Swipe left for for you section
       Run Keyword If    "${sectionname}" == "${Photosandvideos}"    video and photoes from Photos $ video section
       Run Keyword If    "${sectionname}" == "${Photosandvideos}"    Refer Now check
       Run Keyword If    "${sectionname}" == "${photoandvideo}"    exit for loop

    END
#    background app  1
#    Swipe_down_for_You_category for slow
#    swipe by percent  50    70      50      40
#    swipe by percent  50    80      50      40
#    swipe by percent  50    80      50      40
    sleep  2
    ${cancel}=  run keyword and return status  text should be visible  Cancel
    Run Keyword If    "${cancel}"=="True"       click text  Cancel

Play trailer from movies
    sleep  2

#    ${moviename}=   get text  xpath=//android.view.ViewGroup[@id=postCellMain]/android.widget.TextView[@id=tvTitle]
#    ${moviename}=   get text  xpath=//android.view.ViewGroup[@id='postCellMain']
#    ${moviename}=   get text  xpath=//android.view.ViewGroup/android.widget.TextView[@text='maliko']

    ${playtrailerbutton}=   run keyword and return status  element text should be  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.TextView         Play Trailer
    Run Keyword If    "${playtrailerbutton}" == "True"    movie name found
    Run Keyword If    "${playtrailerbutton}" == "True"    click text  Play Trailer


#    Run Keyword If    "${playtrailerbutton}" == "True"    run keyword and continue on failure  wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[4]/android.view.View[1]/android.widget.SeekBar       timeout= 60 seconds
    Run Keyword If    "${playtrailerbutton}" == "True"    run keyword and continue on failure  wait until page does not contain  id=progressBar     timeout= 60 seconds
    Run Keyword If    "${playtrailerbutton}" == "True"    log to console  ${moviename} movie's Trailer is Playing
    Run Keyword If    "${playtrailerbutton}" == "True"    click element  id=ivBack
movie name found
    ${moviename}=   get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.TextView[2]
    log to console  moviename===${moviename}==
    set global variable  ${moviename}

Play music from music section
    swipe by percent  50    60      50      40
    sleep  5
    ${playmusicbutton}=   run keyword and return status  text should be visible  Play Preview
    log to console  playmusicbutton===${playmusicbutton}==
#    ${musicname}=   get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[3]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.TextView[1]
#    log to console  musicname===${musicname}==
    Run Keyword If    "${playmusicbutton}" == "True"    click text  Play Preview


    Run Keyword If    "${playmusicbutton}" == "True"    run keyword and continue on failure  wait until element is visible  id=ivAudioTrack       timeout= 60 seconds
#    Run Keyword If    "${playmusicbutton}" == "True"    log to console  ${musicname} music is Playing
    Run Keyword If    "${playmusicbutton}" == "True"    sleep  5
video and photoes from Photos $ video section
#    tap on for you category
    swipe by percent  50    60      50      40
    swipe by percent  50    60      50      40
    swipe by percent  50    60      50      40
#    swipe by percent  50    60      50      40
#    swipe by percent  50    60      50      40
    sleep  5
#    ${videobutton}=   run keyword and return status  element should be visible  id=ivVideoIcon
#    log to console  videobutton===${videobutton}==
    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[3]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.view.View
#    Run Keyword If    "${videobutton}" == "True"    sleep  5
#    ${musicname}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther[2]/XCUIElementTypeStaticText[1]
#    log to console  musicname===${musicname}==
#    Run Keyword If    "${videobutton}" == "True"    run keyword and continue on failure  wait until element is visible  id=player_main_controls
#    click element  id=iv_post_book_mark
    click element  id=iv_post_close
Refer Now check
    click text  Refer Now
    sleep  2
    profile back button
books for videos
    tap on for you category
    swipe by percent  50    60      50      40
    swipe by percent  50    60      50      40
    swipe by percent  50    60      50      40
    swipe by percent  50    60      50      40
    swipe by percent  50    60      50      40
    loop2 for section name


for you longpress report with guest mode
    close all applications
    open the fayvo application
    sleep  3
    swipe by percent  50    80      50      40
    long press  id=postCellMain
    sleep   2
    click text  Report
    sleep  2
    click element  id=tv_spam

for you longpress save with guest mode

    sleep  5
    long press  id=postCellMain
    sleep   2
    click text  Save
    sleep  2
    text should be visible  Cancel
    click text  Cancel
    sleep  1
    click text  Cancel

for you longpress save with Auth mode
    tap on home button
    sleep  2
    long press  id=postCellMain
    sleep   2
    click text  Save
    sleep  2
    create and select new box for for you post save



send email
      create session  email  https://api.sendinblue.com
      ${headers}=  create dictionary  content-type=application/json  accept=application/json  api-key=reallylongapikeyhere
      ${sendernameemail}=    create dictionary  name=aakash      email=malik.aakash@ilsainteractive.com
      ${tonameemail}=    create dictionary  email=sheraz.hassan@ilsainteractive.com      name=sheraz
      ${subjectandcontent}=    create dictionary  sender=${sendernameemail}     to=${tonameemail}     subject=robot email      htmlContent=sheraz ye dakh robot email
      ${body_data}=   evaluate     json.dumps(${subjectandcontent})   json
      log to console  body_data===${body_data}==
      ${response}  post on session  email  /v3/smtp/email  headers=${headers}  data=${body_data}
      log to console  ${response}
