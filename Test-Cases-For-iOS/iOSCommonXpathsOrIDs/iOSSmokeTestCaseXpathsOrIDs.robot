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

Resource  ../iOSExcelPath/iOSSmokeTestCaseExcelPath.robot


*** Variables ***
${usernmaeupdate}   akash111
${usernameupdate1}  malikaakash
${appiumServer}     http://localhost:4723/wd/hub
${udid}       cb3b209a3d04a1b7793e2c2bfaaf46c739b7e417
#${udid}       96afe26acc877532f0b76a878a4e1231c5a0fb80
#${udid}       286d02d77622102cd6786a84fd5f84cccb0556bd
#${udid}       ab19376c87e04e83ef84e00e9e2f1f3db3edd872
#${udid}       f99f731804ba8660f2f9a2f1f42b343efb232429
#${udid}       4A1BC6EC-10A1-44C0-87D1-1FC95BFAF3E4
#${udid}       ab19376c87e04e83ef84e00e9e2f1f3db3edd872

${deviceName}               iPhone 7
${platformName}     iOS
${platformVersion}  14.6
${noReset}          true
${newCommandTimeout}    0
${automationName}   XCUITest
${adbExecTimeout}     900000
${uiautomator2ServerInstallTimeout}     100000
#${app}              /Users/aakash/Downloads/Fayvo.app
${app}              /Users/askash-mbp/Desktop/New Fayvo/Fayvo.app
${file_path}        ./iOSExcelFiles/iOSTestCaseForSmoke.xlsx
${Comment}          Nice
${before}           Follow
${before1}           FOLLOW
#${systemPort}       8200
${newCommandTimeout}    0



${appiumServer1}     http://localhost:4733/wd/hub
${automationName1}   XCUITest
#${udid1}             172.169.87.12:5559
${udid1}             96afe26acc877532f0b76a878a4e1231c5a0fb80
#${udid1}             emulator-5554
${deviceName1}       iPhone
${platformName1}     iOS
${platformVersion1}  14.0
#${appPackage1}       com.fayvo.staging
#${appPackage1}       com.fayvo
#${appActivity1}      com.fayvo.ui.main.MainActivity
${app1}              com.google.chrome.ios
${app2}              com.apple.Preferences
${adbExecTimeout1}     900000
${uiautomator2ServerInstallTimeout1}     100000
${newCommandTimeout}    0
${wdaStartupRetries}    4
${iosInstallPause}      8000
${wdaStartupRetryInterval}      20000
#${systemPort1}       8290
${New_email}    robot@smoke.com
${phone_number}     3136326900
${new_username}     Robot
${Password}     malik0313
${day}      02
${month}     11
${year}     1994



${num1}     12.2
${num2}     12.2

${price}    Rs. 23,999
${photoandvideo}            📷 Photos & Videos
${moviesseries}            🎥 Movies & Series
${Music}            🎵 Music
${Photosandvideos}            📷 Photos & Videos
${ReferNow}            Refer Now
${base_url_production}      http://fayvo-user-production.us-west-2.elasticbeanstalk.com/dev-test
${base_url_staging}         https://api.fayvo.com/staging-v4-2
${x-api-key_production}     mdcngY0xrp7ipgSBJFy098tb0QLhRQQv7aorp6b7
${x-api-key_staging}        5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30
${user-agent}               aws-sdk-android/2.18.0 Linux/4.14.116 Dalvik/2.1.0/0 en_PK appVersion/591 apiVersion/4.4, AmazonAPIGateway_6az2tmngeb
#${remote-ip}
*** Keywords ***
Open the Fayvo application
#    sleep  60
#    open application  ${appiumserver}   AutomationName=${UiAutomation}  systemPort=${systemPort}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}   appPackage=${appPackage}    appActivity=${appActivity}  adbExecTimeout=${adbExecTimeout}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}    newCommandTimeout=${newCommandTimeout}

#    ${appium1}=     open application  ${appiumserver}    udid=${udid}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}     noReset=${noReset}  adbExecTimeout=${adbExecTimeout}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}    newCommandTimeout=${newCommandTimeout}
#    ${appium1}=     open application  ${appiumserver}   AutomationName=${UiAutomation}  systemPort=${systemPort}    udid=${udid}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}   appPackage=${appPackage}    appActivity=${appActivity}     noReset=${noReset}  adbExecTimeout=${adbExecTimeout}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}
#    ${appium1}=     open application  ${appiumserver}   AutomationName=${UiAutomation}  systemPort=${systemPort}    udid=${udid}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}   app=${app}  adbExecTimeout=${adbExecTimeout}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}    newCommandTimeout=${newCommandTimeout}
#    ${appium1}=     open application  ${appiumserver}   AutomationName=${UiAutomation}  systemPort=${systemPort}    udid=${udid}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}   app=${app}  adbExecTimeout=${adbExecTimeout}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}
    ${appium1}=     open application  ${appiumserver}    udid=${udid}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}  adbExecTimeout=${adbExecTimeout}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}    newCommandTimeout=${newCommandTimeout}       app=${app}     noReset=${noReset}
    set global variable  ${appium1}
#    open application  ${appiumserver}   AutomationName=${UiAutomation}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}   appPackage=${appPackage}    appActivity=${appActivity}
#    open application  ${appiumserver}   AutomationName=${UiAutomation}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}   app=${app}  adbExecTimeout=${adbExecTimeout}    noReset=${noReset}  uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}
#    open application  ${appiumserver}   AutomationName=${UiAutomation}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}   app=${app}      appWaitDuration=${appWaitDuration}
#    open application  ${appiumserver}   AutomationName=${UiAutomation}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}   app=${app}
#    sleep  2
Open the Fayvo application skip signup
    ${appium0}=     open application  ${appiumserver}    udid=${udid}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}      adbExecTimeout=${adbExecTimeout}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}    newCommandTimeout=${newCommandTimeout}       app=${app}
    set global variable  ${appium0}
Open the Chrom application
    ${appium2}=     open application  ${appiumserver}    udid=${udid}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}     noReset=${noReset}  adbExecTimeout=${adbExecTimeout}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}    newCommandTimeout=${newCommandTimeout}       app=${app1}
    set global variable  ${appium2}
Open the Setting application
    ${appium3}=     open application  ${appiumserver}    udid=${udid}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}     noReset=${noReset}  adbExecTimeout=${adbExecTimeout}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}    newCommandTimeout=${newCommandTimeout}       app=${app2}
    set global variable  ${appium3}
Open the fayvo second application
    ${appium4}=     open application  ${appiumserver1}    udid=${udid1}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}     noReset=${noReset}  adbExecTimeout=${adbExecTimeout}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}    newCommandTimeout=${newCommandTimeout}       app=${app}
    set global variable  ${appium4}


check iphone setting for wifi
    sleep  3
#    background app  -1
#    launch application
#    close all applications
#    close application
    quit application
    sleep  5
    run keyword and continue on failure  open the setting application
    sleep  5
#    wait until element is visible  accessibility_id=WIFI
    ${checkmainsettingwifi}=    run keyword and return status  element should be visible  xpath=//XCUIElementTypeSwitch[@name="Wi-Fi"]
#    log to console  checkmainsettingwifi==${checkmainsettingwifi}
    Run Keyword If    "${checkmainsettingwifi}"=="False"    click element  xpath=//XCUIElementTypeCell[@name="Wi-Fi"]
#    wait until element is visible  xpath=//XCUIElementTypeSwitch[@name="Wi-Fi"]
    sleep  10
#    ${wifivalue}=   get variable value  xpath=//XCUIElementTypeSwitch[@name="Wi-Fi"]      value
#    log to console  wifivalue==${wifivalue}=
    run keyword and continue on failure  click element  xpath=//XCUIElementTypeSwitch[@name="Wi-Fi"]
#    background app  -1
#    close all applications
#    close
    quit application

    sleep  5
#    run keyword and continue on failure  open the fayvo application
    open the fayvo application


internet on off
    run keyword and continue on failure  open the setting application
    sleep  10
    run keyword and continue on failure  click element  xpath=//XCUIElementTypeSwitch[@name="Wi-Fi"]
    run keyword and continue on failure  open the fayvo application
Swipe for expression
    ${element_size}=    Get Element Size    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[3]
    ${element_location}=    Get Element Location    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[3]
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.6)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  100
    sleep  5


Swipe_up_for internet
    ${element_size}=    Get Element Size    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[2]
    ${element_location}=    Get Element Location    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[2]
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  400
    Sleep  1



Swipe_up_for_other_profile
    ${element_size}=    Get Element Size    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView
    ${element_location}=    Get Element Location    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  400
    Sleep  1

Swipe_up_for_feed
    ${element_size}=    Get Element Size    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]
    ${element_location}=    Get Element Location    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.1)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  400
    Sleep  1
Pull to refresh at home sreen
    sleep  2
    swipe by percent    50     20     50    70  2000
Swipe_up_for_You_category
    sleep  3
    scroll down  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]
Swipe_down_for_friends_category
    sleep  3
    ${element_size}=    Get Element Size    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]
    ${element_location}=    Get Element Location    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.0)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  400
#    Sleep  1
#    scroll up  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]

Swipe up for sound on feed
    ${element_size}=    Get Element Size    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]
    ${element_location}=    Get Element Location    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.6)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  800
    sleep  5


Swipe up for for you sound
    ${element_size}=    Get Element Size    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]
    ${element_location}=    Get Element Location    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  800
    sleep  5

Swipe_down_for_notifications
    sleep  3
    ${element_size}=    Get Element Size    xpath=//XCUIElementTypeOther[@name="Home screen icons"]/XCUIElementTypeOther/XCUIElementTypeOther
    ${element_location}=    Get Element Location    xpath=//XCUIElementTypeOther[@name="Home screen icons"]/XCUIElementTypeOther/XCUIElementTypeOther
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.0)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  800
    Sleep  1

Swipe_down_for_other_profile
    log to console  this is other profile
    ${element_size}=    Get Element Size    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView
    ${element_location}=    Get Element Location    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.1)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.9)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  900
    Sleep  1
check the swipe up coch mark
    ${present}=     run keyword and return status  element should be visible  accessibility_id=Swipe up to scroll
#    log to console  ${present}
    Run Keyword If    "${present}"=="True"      Check the post and swip

Check the post and swip
    sleep  5
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[1]
    log to console  ${present}
    Run Keyword If    "${present}"=="True"      Swipe up_in post detail for API post
    Run Keyword If    "${present}"=="False"      Swipe up_in post detail for media post

Swipe up_in post detail for media post
    ${element_size}=    Get Element Size    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[1]
    ${element_location}=    Get Element Location    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[1]
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  400
    sleep  5
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeCollectionView
    log to console  ${present}
    Run Keyword If    "${present}"=="True"      Swipe Down_in post detail for API post
    Run Keyword If    "${present}"=="False"      Swipe Down_in post detail for media post

Swipe up_in post detail for API post
    ${element_size}=    Get Element Size    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[1]
    ${element_location}=    Get Element Location    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[1]
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  400
    sleep  2
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[1]
    log to console  ${present}
    Run Keyword If    "${present}"=="True"      Swipe Down_in post detail for API post
    Run Keyword If    "${present}"=="False"      Swipe Down_in post detail for media post


Swipe Down_in post detail for media post
    sleep  2
    ${element_size}=    Get Element Size    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[1]
    ${element_location}=    Get Element Location    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[1]
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  300
    Sleep  1
Swipe Down_in post detail for API post
    sleep  2
    ${element_size}=    Get Element Size    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[1]
    ${element_location}=    Get Element Location    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[1]
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  300
    Sleep  1

Swipe up for count the following
    ${element_size}=    Get Element Size    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeTable
    ${element_location}=    Get Element Location    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeTable
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.6)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  700
    Sleep  1

Swipe up for setting
    ${element_size}=    Get Element Size    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable
    ${element_location}=    Get Element Location    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  800
    Sleep  1

Swipe up for edit profile photo
    ${element_size}=    Get Element Size    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther
    ${element_location}=    Get Element Location    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  800
    Sleep  1

Swipe Down for edit profile photo
    sleep  2
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther
    ${element_size}=    Get Element Size    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther
    ${element_location}=    Get Element Location    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  300
    Sleep  1

Swipe up for for you category count
    wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup
    ${element_size}=    Get Element Size    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup
    ${element_location}=    Get Element Location    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  800
    Sleep  1




Swipe up for story
    sleep  2
    ${element_size}=    Get Element Size    xpath=//XCUIElementTypeStaticText[@name="No Views"]
    ${element_location}=    Get Element Location    xpath=//XCUIElementTypeStaticText[@name="No Views"]
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  800
    Sleep  1


Swipe up for for you category post scroll
    sleep  5
    ${element_size}=    Get Element Size    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView
    ${element_location}=    Get Element Location    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  800
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

Swipe Down for load boxes data
    sleep  3
    ${element_size}=    Get Element Size    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeTable
    ${element_location}=    Get Element Location    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeTable
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1

wipe Down for load boxes data for API
    sleep  3
    ${element_size}=    Get Element Size    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeTable
    ${element_location}=    Get Element Location    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeTable
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.2)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1

Swipe Down for edit post1
    sleep  3
    ${element_size}=    Get Element Size    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeScrollView
    ${element_location}=    Get Element Location    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeScrollView
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.4)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.6)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  800
    Sleep  1

Swipe Down for edit post2
    sleep  3
    ${element_size}=    Get Element Size    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeScrollView
    ${element_location}=    Get Element Location    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeScrollView
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.4)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.4)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.4)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.6)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  800
    Sleep  1

Swipe Down for mobile home
    sleep  3
    ${element_size}=    Get Element Size    xpath=//XCUIElementTypeOther[@name="Home screen icons"]/XCUIElementTypeOther/XCUIElementTypeOther
    ${element_location}=    Get Element Location    xpath=//XCUIElementTypeOther[@name="Home screen icons"]/XCUIElementTypeOther/XCUIElementTypeOther
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.4)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.4)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.4)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.6)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  800
    Sleep  1
Swipe left for userstory and suggestion user
    ${element_size}=    Get Element Size    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView
    ${element_location}=    Get Element Location    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.8)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.2)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  600
    Sleep  1
Swipe left for category
    ${element_size}=    Get Element Size    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[1]/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeCollectionView
    ${element_location}=    Get Element Location    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[1]/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeCollectionView
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.8)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.2)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  600
    Sleep  1

Swipe left for for you section
    ${element_size}=    Get Element Size    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[${i}]/XCUIElementTypeOther/XCUIElementTypeCollectionView
    ${element_location}=    Get Element Location    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[${i}]/XCUIElementTypeOther/XCUIElementTypeCollectionView
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.8)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.2)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  600
    Sleep  1

Swipe right for camera post

    ${element_size}=    Get Element Size    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]
    ${element_location}=    Get Element Location    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.2)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.5)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.8)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.5)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1
swipe right for camera
    log to console  swipe kr bhai
    sleep  2
    swipe by percent    20     50     80    50    500
Swipe left for delete conversation
    sleep  3
    ${element_size}=    Get Element Size    xpath=//XCUIElementTypeStaticText[@name="maliko"]
    ${element_location}=    Get Element Location    xpath=//XCUIElementTypeStaticText[@name="maliko"]
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.8)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.5)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.2)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.5)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  700
    Sleep  1

Swipe left for for share post on whatsapp
    sleep  3
    ${element_size}=    Get Element Size    id=rv_share_items
    ${element_location}=    Get Element Location    id=rv_share_items
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.8)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.5)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.2)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.5)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  700
    Sleep  1




Swipe left for edit filter
    sleep  3
#    ${element_size}=    Get Element Size    accessibility_id=completeLayerDim
    ${element_size}=    Get Element Size    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeScrollView
#    ${element_location}=    Get Element Location    accessibility_id=completeLay∂erDim
    ${element_location}=    Get Element Location    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeScrollView
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
#    ${present1}=  Run Keyword And Return Status    Element Should Be Visible   id=tvTitle
#    Run Keyword If    "${present1}"=="True"    Expected for 3
#    Run Keyword If    "${present1}"=="False"    Not Expected for 3
#    save excel document  ${file_path}


Arabic Chater for login check
    ${Wrong_Username}     read excel cell  5   16   Sheet1
    ${Wrong_Password}     read excel cell   5       17    Sheet1
    log to console  ${Wrong_Username}
    log to console  ${Wrong_Password}
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.EditText     ${Wrong_Username}
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[5]/android.view.ViewGroup/android.widget.EditText     ${Wrong_Password}
    tap on login and logout button
    sleep  2
#    ${present1}=  Run Keyword And Return Status    Element Should Be Visible   id=tvTitle
#    Run Keyword If    "${present1}"=="True"    Expected for 3
#    Run Keyword If    "${present1}"=="False"    Not Expected for 3
#    save excel document  ${file_path}


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
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeTextField     malik.aakash@ilsainteractive.com
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeSecureTextField     malik0313
    tap on login button from splash screen
    sleep  5
#    ${not_now}   run keyword and return status  wait until element is visible  xpath=//XCUIElementTypeSheet[@name="Would you like to save this password in your Keychain to use with apps and websites?"]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton       timeout=15 second
#    log to console  not_now ===${not_now}=
#    run keyword if  'Ture'=='${not_now}'     click element  xpath=//XCUIElementTypeSheet[@name="Would you like to save this password in your Keychain to use with apps and websites?"]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton
#    wait until element is visible  xpath=//XCUIElementTypeButton[@name="Not Now"]       timeout=15 second
#    click element  xpath=//XCUIElementTypeButton[@name="Not Now"]
#    ${not_now}=     run keyword and return status  text should be visible  Not Now
#    log to console  not_now===${not_now}=
#    Run Keyword If    "${not_now}"=="Ture"        clear text  Not Now


tap on Apple button
    sleep  3
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]
tap on continue passcode
    sleep  3
    click element  name=Continue with Passcode
tap on 0
    click element  name=0

tap on login button from splash screen
    sleep  5
    ${log_in}   run keyword and return status  wait until element is visible  xpath=//XCUIElementTypeButton[@name="Skip & Discover"]       timeout=15 second
#    log to console  log In ===${log_in}=
    run keyword if  'Ture'=='${log_in}'     click element  xpath=//XCUIElementTypeButton[@name="Skip & Discover"]
    run keyword if  'False'=='${log_in}'     click element  xpath=//XCUIElementTypeStaticText[@name="Log in"]
#    wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="Log In"]
#    click element  xpath=//XCUIElementTypeStaticText[@name="Log In"]
    sleep  3
go to profile
    wait until element is visible  accessibility_id=Profile    timeout=120 seconds
    click element  accessibility_id=Profile
go to setting
    wait until element is visible  accessibility_id=settings   timeout=120 seconds
    click element  accessibility_id=settings
go to Deactivate account
    wait until element is visible  accessibility_id=Deactivate account   timeout=60 seconds
    click element  accessibility_id=Deactivate account
    wait until element is visible  accessibility_id=enter password to remove your account   timeout=60 seconds
#    click text  Deactivate account
    input text  accessibility_id=enter password to remove your account   malik0313
    click element  xpath=//XCUIElementTypeStaticText[@name="REMOVE"]
go to Deactivate account for sign up deatil
    wait until element is visible  accessibility_id=Deactivate account   timeout=60 seconds
    click element  accessibility_id=Deactivate account
    wait until element is visible  accessibility_id=enter password to remove your account   timeout=60 seconds
#    click text  Deactivate account
    input text  accessibility_id=enter password to remove your account   1234567
    click element  xpath=//XCUIElementTypeStaticText[@name="REMOVE"]


tap on update username
    wait until element is visible  accessibility_id=Update username      timeout=100 seconds
    click element  accessibility_id=Update username

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
    wait until element is visible  accessibility_id=YES     timeout=60 seconds
    click element  accessibility_id=YES

go to user profile for like and comment notification
    sleep  2
    click element  xpath=(//XCUIElementTypeStaticText[@name="@maliko"])[1]
    sleep  5
    long press  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[4]/XCUIElementTypeOther
    wait until element is visible  accessibility_id=Like
    click element  accessibility_id=Like
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

##    Run Keyword If    "${post_name}"=="${result1}[1]"    Expected for 13
#    Run Keyword If    "${post_name}"=="${updatename}"    Expected for 13
#    ...     ELSE
#    ...     Not Expected for 13
#    save excel document  ${file_path}
got to comment section
    click element  id=tvLeavePostComment
    sleep  2
#    ${present}=  Run Keyword And Return Status    element should be visible   id=ivShowHideDialog
#    Run Keyword If    "${present}"=="True"    Expected for 14
#    Run Keyword If    "${present}"=="False"    Not Expected for 14
#    save excel document  ${file_path}

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
#    ${present}=  Run Keyword And Return Status      list should contain value  ${name_of_users}     ${updatename}
#    log to console  Print_status =${present}
#    Run Keyword If    "${present}"=="True"    Expected for 15
#    Run Keyword If    "${present}"=="False"    Not Expected for 15
#    save excel document  ${file_path}
#    element text should be  id=txt_title       ${updatename}
#    ${post_name}=   get text  id=txt_title
#    Run Keyword If    "${post_name}"=="${updatename}"    Expected for 15
#    ...     ELSE
#    ...     Not Expected for 15
#    save excel document  ${file_path}



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
    wait until element is visible  accessibility_id=BackIcon    timeout= 60 seconds
    click element  accessibility_id=BackIcon


tap on proceed button
    wait until element is visible  xpath=//XCUIElementTypeButton[@name="Proceed"]   timeout=60 seconds
    click element  xpath=//XCUIElementTypeButton[@name="Proceed"]
tap on login and logout button
    wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="LOGOUT"]    timeout= 120 seconds
    click element  xpath=//XCUIElementTypeStaticText[@name="LOGOUT"]
tap on register button
    wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="Register Now"]
    click element  xpath=//XCUIElementTypeStaticText[@name="Register Now"]



tap on login button
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
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeButton   timeout=60 seconds
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeButton
    wait until element is visible  accessibility_id=Continue   timeout=60 seconds
    click element  accessibility_id=Continue
    wait until element is visible  accessibility_id=Continue   timeout=60 seconds
    click element  accessibility_id=Continue

Facebook login or signup

    ${present}=  Run Keyword And Return Status      element should be visible   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.TextView[2]
    log to console  ${present}
    Run Keyword If    "${present}"=="True"    Expected for 11
    Run Keyword If    "${present}"=="False"    Not Expected for 11
    save excel document  ${file_path}
    Run Keyword If    "${present}"=="True"    Sign up with facebook
    Run Keyword If    "${present}"=="False"         Logout from profile
    Run Keyword If    "${present}"=="False"    Expected for 17
    Run Keyword If    "${present}"=="True"    Not Expected for 17
    save excel document  ${file_path}

Sign up with facebook
#    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText
#    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText
    sleep  5
    tap on login and logout button
    sleep  3
    ${present}=  Run Keyword And Return Status      element should be visible   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText
    log to console  ${present}
    Run Keyword If    "${present}"=="True"    Expected for 12
    Run Keyword If    "${present}"=="False"    Not Expected for 12
    save excel document  ${file_path}
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText      malik0313
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText      malik0313
    tap on login and logout button
    sleep  5
    ${present}=  Run Keyword And Return Status      element should be visible   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText
    log to console  ${present}
    Run Keyword If    "${present}"=="True"    Expected for 13
    Run Keyword If    "${present}"=="False"    Not Expected for 13
    save excel document  ${file_path}
    date of birth and gender
    sleep  5
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   id=tvSelectInterestTitle
    run keyword if  "${present}"=="True"    category choice
    sleep  5
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   id=iv_settings
    Run Keyword If    "${present}"=="True"    Expected for 14
    Run Keyword If    "${present}"=="False"    Not Expected for 14
    save excel document  ${file_path}

    go to setting
    sleep  3
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   id=rlChangeUsername
    Run Keyword If    "${present}"=="True"    Expected for 15
    Run Keyword If    "${present}"=="False"    Not Expected for 15
    save excel document  ${file_path}
    tap on login and logout button
    sleep  3
    ok button
    sleep  2
    ${present1}=  Run Keyword And Return Status    Element Should Be Visible   id=ivHomeLogo
    Run Keyword If    "${present1}"=="True"    Expected for 16
    Run Keyword If    "${present1}"=="False"    Not Expected for 16
    save excel document  ${file_path}

Logout from profile
#    go to profile
    go to setting
    sleep  3
#    ${present}=  Run Keyword And Return Status    Element Should Be Visible   id=rlChangeUsername
#    Run Keyword If    "${present}"=="True"    Expected for 18
#    Run Keyword If    "${present}"=="False"    Not Expected for 18
#    save excel document  ${file_path}

    tap on login and logout button
    sleep  3
    ok button
    sleep  5


tap on home button
#    ${present1}=  Run Keyword And Return Status    Element Should Be Visible   accessibility_id=Home
#    Run Keyword If    "${present1}"=="True"    click element  accessibility_id=Home
#    Run Keyword If    "${present1}"=="False"    go back
    wait until element is visible  accessibility_id=Home    timeout=120 seconds
    click element  accessibility_id=Home
tap on people category
    sleep  3
#    wait until element is visible  xpath=//android.widget.LinearLayout[2]/android.widget.TextView[@text='People']
#    click element  xpath=//android.widget.LinearLayout[2]/android.widget.TextView[@text='People']
    click text  People
#    log to console  For You done
    sleep  2

Tap on Google button
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeButton     timeout=60 seconds
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeButton
    wait until element is visible  accessibility_id=Continue   timeout=60 seconds
    click element  accessibility_id=Continue
Tap on google button on login screen
#    sleep  5
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[5]/XCUIElementTypeOther[1]/XCUIElementTypeButton
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[5]/XCUIElementTypeOther[1]/XCUIElementTypeButton
    wait until element is visible  accessibility_id=Continue   timeout=60 seconds
    click element  accessibility_id=Continue
Tap on user email
    sleep  8
    ${webelement}=  get webelement  xpath=//XCUIElementTypeLink[@name="ract541@gmail.com"]
#    log to console  this_is_web=${webelement}
    click element  ${webelement}
check the gmail id is new
    sleep  5
#    ${enter_user_detail}=   get text  id=tvTitle

    ${present}=  Run Keyword And Return Status    element text should be   id=tvTitle  Enter Your User Details
    log to console  ${present}
    Run Keyword If    "${present}"=="True"    Enter user details for gemail

Enter user details for gemail
#    hide keyboard
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
    sleep  5
    log to console  click email button
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[3]/XCUIElementTypeButton
    log to console  click email button after
#    wait until element is visible  id=com.google.android.gms:id/cancel
#    ${present1}=  Run Keyword And Return Status    Element Should Be Visible   id=com.google.android.gms:id/cancel
#    Run Keyword If    "${present1}"=="True"    click element  id=com.google.android.gms:id/cancel
enter existing email and phone number
    ${Username}     read excel cell  6   1   Sheet1
    ${exist_number}     read excel cell   5       14    Sheet1
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText  ${Username}
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText  ${exist_number}
    tap on login and logout button
select country code sign up
    sleep   5
#    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeStaticText
    sleep  3
#    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[4]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeTextField   pak
    input text  xpath=//XCUIElementTypeAny[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[4]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeTextField   pak
    sleep  3
    click text  Pakistan
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther       timeout=15 seconds
    ${country_code}=    get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeStaticText
    set global variable  ${country_code}
    log to console  this country code===${country_code}=

enter email and phone number
    select country code sign up
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField  ${New_email}
    log to console  this is field
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeTextField  ${phone_number}
    click text  Proceed

    # Production
    ${base_url1}=    set variable   http://fayvo-user-production.us-west-2.elasticbeanstalk.com/admin
    # Staging
#    ${base_url1}=    set variable   http://user.us-west-2.elasticbeanstalk.com/admin
    create session  mysession1  ${base_url1}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0    api-key=JPS4p@8pbeUO2EY0B3XayUEucRsydO_pd      Content-Type=application/json
    ${body}=    create dictionary   phone=${country_code}${phone_number}
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
#    ${code}=    split string  {
    set global variable  ${verification_code}
    log to console  this is verification code =${verification_code}[0]

Put the verification code
    sleep  3
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView      ${verification_code}[0]

#    btnResendTime



####################### Pin Sign Up ##########################
incomplete email

    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField     malik
#    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[5]/android.view.ViewGroup/android.widget.EditText     ${Wrong_Password}
    tap on proceed button
    sleep  2
    run keyword and continue on failure  page should contain text  Please enter valid email address
invalid phone number
#    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText
#    sleep  1
#    ${present1}=  Run Keyword And Return Status    Element Should Be Visible   id=com.google.android.gms:id/cancel
#    Run Keyword If    "${present1}"=="True"    click element  id=com.google.android.gms:id/cancel
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField     malik@malik.com
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeTextField     malik
    tap on proceed button
    error banner
    sleep  2
    run keyword and continue on failure  page should contain text  Please enter valid phone number

already exist email
#    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText
#    sleep  1
#    ${present1}=  Run Keyword And Return Status    Element Should Be Visible   id=com.google.android.gms:id/cancel
#    Run Keyword If    "${present1}"=="True"    click element  id=com.google.android.gms:id/cancel
    select country code sign up
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField     malik.aakash@ilsainteractive.com
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeTextField     3225533890
    tap on proceed button
    error banner
    sleep  2
#    run keyword and continue on failure  page should contain text  This email already exists
without internet correct email and correct phone nummber
#    set network connection status  0
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField     robot@smoke.com
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeTextField     3136326900

correct email and correct phone nummber
#    set network connection status  2
    sleep  5
    tap on proceed button

invalid pin send
    sleep  5
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView      0000
    error banner
valid pin send without internet
#    set network connection status  0
       #     Production
#    ${base_url1}=    set variable   http://fayvo-user-production.us-west-2.elasticbeanstalk.com/admin
#     Staging
    ${base_url1}=    set variable   http://user.us-west-2.elasticbeanstalk.com/admin
    create session  mysession1  ${base_url1}     verify=True
    ${header}=  create dictionary   User-Agent=aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554 FayvoClient, AmazonAPIGateway_lorb8s58n0    api-key=JPS4p@8pbeUO2EY0B3XayUEucRsydO_pd      Content-Type=application/json
    ${body}=    create dictionary   phone=+923136326900
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
#    sleep  3
#    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView      ${verification_code}[0]
#    set network connection status   0
#    error banner

select country code sign up for detail signup
    sleep   5
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther
    sleep  3
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[4]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeTextField   Belg
    sleep  3
    click text  Belgium
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther       timeout=15 seconds
    ${country_code}=    get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeStaticText
    set global variable  ${country_code}
    log to console  this country code===${country_code}=
valid pin send
#    set network connection status  2
    sleep  5
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView      ${verification_code}[0]
#    set network connection status   0
    error banner
contry code phone number
#    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText
#    sleep  1
#    ${present1}=  Run Keyword And Return Status    Element Should Be Visible   id=com.google.android.gms:id/cancel
#    Run Keyword If    "${present1}"=="True"    click element  id=com.google.android.gms:id/cancel
    select country code sign up for detail signup
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeTextField     3269090900
    tap on proceed button
    error banner
    sleep  2
####################### Pin Sign Up ##########################

error banner
#    sleep  1
    ${errorbaner}=  run keyword and return status  element should be visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeImage
    log to console  error===${errorbaner}=
    run keyword and continue on failure     Run Keyword If    "${errorbaner}"=="True"    element should be visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeImage
    run keyword and continue on failure     Run Keyword If    "${errorbaner}"=="True"    error text
    run keyword and continue on failure     Run Keyword If    "${errorbaner}"=="False"    log to console  Pass Server

error text
    ${errortext}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeStaticText
    log to console  errortext===${errortext}==


enter name and username
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField  ${new_username}
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeTextField  ${new_username}
    click text  Proceed

create new password
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[4]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeSecureTextField   timeout=15 seconds
#    ${Password}     read excel cell   5       2    Sheet1
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[4]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeSecureTextField  ${Password}
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[4]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeSecureTextField  ${Password}
    click text  Proceed

date of birth and gender
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[5]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeTextField    timeout=20 seconds
#    ${day}     read excel cell   5       8    Sheet1
#    ${month}     read excel cell   5       9    Sheet1
#    ${year}     read excel cell   5       10    Sheet1
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[5]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeTextField   ${day}
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[5]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeTextField    ${month}
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[5]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[3]/XCUIElementTypeOther[1]/XCUIElementTypeTextField    ${year}
    click text  MALE
    click text  Proceed
    sleep  5


Category choice
    ${ContactFollow}=  Run Keyword And Return Status    text should be visible  Follow
    log to console  ${ContactFollow}
    run keyword and continue on failure     Run Keyword If    "${ContactFollow}"=="True"    click text  Follow
    run keyword and continue on failure     Run Keyword If    "${ContactFollow}"=="False"    click text  Skip
    sleep  3
    click text  People
    click text  Books
    click text  Sports
    click text  Find People
    log to console  do the follow now
    sleep  5
    ${SuggestionFollow}=  Run Keyword And Return Status    text should be visible  Follow
    log to console  ${SuggestionFollow}
    run keyword and continue on failure     Run Keyword If    "${SuggestionFollow}"=="True"    click text  Follow
    run keyword and continue on failure     Run Keyword If    "${SuggestionFollow}"=="False"    click text  Skip
    sleep  8


############################ Login Detail Test Cases ##########################

enter email and empty password

    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeTextField     malikaakash.com
    tap on login button from splash screen
verify enter email and empty password
    sleep  2
    run keyword and continue on failure  text should be visible  Please enter password
enter password and empty email
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeSecureTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeSecureTextField     malik0313
    tap on login button from splash screen
verify enter password and empty email
    sleep  2
    run keyword and continue on failure  text should be visible  Please enter username or email
incorect email and correct password
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeTextField
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeSecureTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeTextField     mmalikaaksh@.com
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeSecureTextField     malik0313
    tap on login button from splash screen
verify incorect email and correct password
    sleep  2
    run keyword and continue on failure  text should be visible  User name can only contain English alphabets
minimum username character
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeTextField
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeSecureTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeTextField     mm
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeSecureTextField     malik0313
    tap on login button from splash screen
verify minimum username character
    sleep  2
    run keyword and continue on failure  text should be visible  Minimum user name length must be 3 characters
maximum username character
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeTextField
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeSecureTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeTextField     malikaakashiamfromlahoreandiamdoingtheautomationengineeringjobatilsainteractive
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeSecureTextField     malik0313
    tap on login button from splash screen

verify maximum username character
    sleep  2
    run keyword and continue on failure  text should be visible  Maximum user name length must be 64 characters

minimum password character
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeTextField
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeSecureTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeTextField     Akash1
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeSecureTextField     malik
    tap on login button from splash screen
verify minimum password character
    sleep  2
    run keyword and continue on failure  text should be visible  Minimum password length must be 6 characters
maximum password character
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeTextField
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeSecureTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeTextField     Akash1
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeSecureTextField     malikaakashiamfromlahoreandiamdoingtheautomationengineeringjobatilsainteractive
    tap on login button from splash screen

verify maximum password character
    sleep  2
    run keyword and continue on failure  text should be visible  Maximum password length must be 25 characters

corect email and incorrect password
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeTextField
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeSecureTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeTextField     malik.aakash@ilsainteractive.com
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeSecureTextField     malik0312
    tap on login button from splash screen

verify corect email and incorrect password
    error banner
background app at login screen
    background app  5
corect email and correct password without internet
    sleep  5
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeTextField
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeSecureTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeTextField     malik.aakash@ilsainteractive.com
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeSecureTextField     malik0313
    click element  xpath=//XCUIElementTypeStaticText[@name="Remember me"]
verify corect email and correct password without internet
    error banner

verify corect email and correct password with internet
    sleep  10
    run keyword and continue on failure  element should be visible  accessibility_id=Home    timeout=120 seconds

verify remember me check
    sleep  5
    run keyword and continue on failure  text should be visible  malik.aakash@ilsainteractive.com





############################ Login Detail Test Cases ##########################


############# Skip Sign Up #################
tap on skip sign up button
    sleep  5
    click text  Skip & Discover




############# Skip Sign Up #################

############# Sign Up #################
enter wrong name via Pin signup
    sleep  5
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField     123456789
enter wrong name via google signup
    sleep  5
#    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField     123456789
verify wrong name via google signup
    sleep  2
    run keyword and continue on failure  text should be visible  Name should have some alphabets.

enter wrong username via pin signup
    sleep  2
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField     Khalidbinwalid
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeTextField     123456789
enter wrong username via google signup
    sleep  2
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField     Khalidbinwalid
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeTextField     123456789
verify wrong username via google signup
    sleep  3
    run keyword and continue on failure  text should be visible  User name must have an English alphabet

empty name filed and correct username via pin
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField     Khalidbinwalid


empty name filed and correct username
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeTextField     Khalidbinwalid
verify empty name filed and correct username
    sleep  2
    run keyword and continue on failure  text should be visible  Please enter name.
empty username filed and correct name via pin
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField     Khalidbinwalid

empty username filed and correct name
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField     Khalidbinwalid
verify empty username filed and correct name
    sleep  2
    run keyword and continue on failure  text should be visible  Please enter username
already exist user name via pin
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField     Khalidbinwalid
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeTextField     akash1

already exist user name
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField      Khalidbinwalid
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeTextField      akash1


verify already exist user name
    sleep  2
    run keyword and continue on failure  text should be visible   This username already exists

without internet correct name and correct username via pin

#    check iphone setting for wifi
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField     Khalidbinwalid
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeTextField     Khalidbinwalid

without internet correct name and correct username

#    check iphone setting for wifi

    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField      Khalidbinwalid
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeTextField      Khalidbinwalid

correct name and correct username via pin
#    internet on off
    sleep  5

correct name and correct username
#    internet on off
    sleep  5

less then 6 characters password
    sleep  2
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeSecureTextField      123
verify less then 6 characters password
     sleep  2
     run keyword and continue on failure  text should be visible  Minimum password length must be 6 characters
greater then 25 characters password
    sleep  2
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeSecureTextField      123456789101112131415161718
verify greater then 25 characters password
    sleep  2
    run keyword and continue on failure  text should be visible  Maximum password length must be 25 characters
wrong confirm password
    sleep  2

    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeSecureTextField
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeSecureTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeSecureTextField      1234567
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeSecureTextField      123


verify wrong confirm password
    sleep  2
    run keyword and continue on failure  text should be visible  Password doesn't match.
without internet correct password
#    internet on off
    sleep  2
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeSecureTextField
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeSecureTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeSecureTextField      1234567
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeSecureTextField      1234567


correct password
#    internet on off
    sleep  5

less then 6 characters password via pin
    sleep  2
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[4]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeSecureTextField      123

greater then 25 characters password via pin
    sleep  2
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[4]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeSecureTextField      123456789101112131415161718

wrong confirm password via pin
    sleep  2
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[4]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeSecureTextField
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[4]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeSecureTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[4]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeSecureTextField      1234567
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[4]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeSecureTextField      123


without internet correct password via pin
#    internet on off
    sleep  2
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[4]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeSecureTextField
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[4]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeSecureTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[4]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeSecureTextField      1234567
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[4]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeSecureTextField      1234567


correct password via pin
#    internet on off
    sleep  5

dob day via pin
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[5]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeTextField    timeout=20 seconds
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[5]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeTextField       42

invalid dob via pin
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[5]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[5]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeTextField  42
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[5]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeTextField  15
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[5]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[3]/XCUIElementTypeOther[1]/XCUIElementTypeTextField  1999


correct dob via pin

    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[5]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[5]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[5]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[3]/XCUIElementTypeOther[1]/XCUIElementTypeTextField

    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[5]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeTextField  02
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[5]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeTextField  11
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[5]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[3]/XCUIElementTypeOther[1]/XCUIElementTypeTextField  1994
gender change dob via pin
    click text  OTHER
    click text  FEMALE
    click text  MALE
dob day

    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeTextField    timeout=20 seconds
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeTextField       42
verify dob day
    sleep  2
    run keyword and continue on failure  text should be visible  Please enter all fields.
invalid dob
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeTextField  42
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeTextField  15
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[3]/XCUIElementTypeOther[1]/XCUIElementTypeTextField  1999

verify invalid dob
    sleep  2
    run keyword and continue on failure  text should be visible  Please enter valid age.
correct dob
    sleep  5
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[3]/XCUIElementTypeOther[1]/XCUIElementTypeTextField

    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeTextField  02
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeTextField  11
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[3]/XCUIElementTypeOther[1]/XCUIElementTypeTextField  1994

gender change dob
    click text  OTHER
    click text  FEMALE
    click text  MALE



count the checkmark
    ${contactallowbutton}=  run keyword and return status  text should be visible  Allow
    log to console  contactallowbutton==${contactallowbutton}=
    Run Keyword If    "${contactallowbutton}"=="True"    click button  name=Allow
    Run Keyword If    "${contactallowbutton}"=="True"    click button  name=OK
    sleep  10
#    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]/XCUIElementTypeImage[2]         timeout=30 seconds
    ${checkmarkatcontactlist}=      get matching xpath count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell/XCUIElementTypeImage[2]
    log to console  checkmarkatcontactlist==${checkmarkatcontactlist}=
    set global variable  ${checkmarkatcontactlist}
unselect all the check mark
    click text  Select individually
without internet skip
    log to console  Skip
#    internet on off
#    click text  Skip
select the user individually
    FOR    ${i}    IN RANGE    1    ${checkmarkatcontactlist}+1
        log to console  i value==${i}=
       click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[${i}]
#       click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[${i}]/XCUIElementTypeImage[2]
    END
follow without internet
    log to console  Follow
#    internet on off
#    click text  Follow
follow with internet
#    internet on off
    sleep  5
    click text  Follow

all categories name
    sleep  10
#    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeImage
    ${categorislist}=   get matching xpath count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell
    log to console  categorislist==${categorislist}=
    ${catlistwhilesignup}   create list
    FOR    ${i}    IN RANGE    1    ${categorislist}+1
        ${getcatname}=     get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[${i}]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeStaticText
#        ${getcatname}=     get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[${i}]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeStaticText
        log to console  getcatname==${getcatname}=
        append to list  ${catlistwhilesignup}   ${getcatname}
    END
    log to console  Cat List ==${catlistwhilesignup}==
    set global variable  ${catlistwhilesignup}
all categories name skip sign up
    sleep  10
#    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeImage
    ${categorislistskipsignup}=   get matching xpath count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell
    log to console  categorislist==${categorislistskipsignup}=
    ${catlistwhileskipsignup}   create list
    FOR    ${i}    IN RANGE    1    ${categorislistskipsignup}+1
        ${getcatname}=     get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[${i}]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeStaticText
        log to console  getcatname==${getcatname}=
        append to list  ${catlistwhileskipsignup}   ${getcatname}
    END
    log to console  Cat List ==${catlistwhileskipsignup}==
    set global variable  ${catlistwhileskipsignup}

select categoires skip sign up
    FOR    ${i}    IN    @{catlistwhileskipsignup}
        click text  ${i}
    END
select categories
    sleep  5
    click text  People
    click text  Books
    click text  Sports
tap on Get Started Button
    click text  Get Started
select categoires
    FOR    ${i}    IN    @{catlistwhilesignup}
        click text  ${i}
    END
Allow location button after skip sign up
    sleep  15
    run keyword and continue on failure  element should be visible  accessibility_id=Allow While Using App      timeout=30 seconds
    click text  accessibility_id=Allow While Using App


count the checkmark for suggestion user
    sleep  10
#    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]/XCUIElementTypeImage[2]         timeout=60 seconds
    ${checkmarksuggestionuserlist}=      get matching xpath count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell
    log to console  checkmarkatcontactlist==${checkmarksuggestionuserlist}=
    set global variable  ${checkmarksuggestionuserlist}
unselect all the check mark for suggestion user
    click text  Select individually
without internet skip for suggestion user
    internet on off
    click text  Skip
select the user individually for suggestion user
    FOR    ${i}    IN RANGE    1    4
       click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[${i}]/XCUIElementTypeImage[2]
    END
follow without internet for suggestion user
    log to console  Follow
#    internet on off
#    click text  Follow
follow with internet for suggestion user
#    internet on off
#    sleep  5
    click text  Follow
############# Sign Up #################
Signup with google
    sleep  5
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField      Khalidbinwalid
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeTextField      Khalidbinwalid
    tap on proceed button
    sleep  2
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeSecureTextField
    clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeSecureTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeSecureTextField      1234567
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeSecureTextField      1234567
    tap on proceed button
    sleep  5
    tap on proceed button
    sleep  5
    click text  Follow
    sleep  5
    click text  Skip

    sleep  8
    go to profile
    sleep  3
    go to setting
    sleep  3
    go to Deactivate account for sign up deatil
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
    wait until element is visible  accessibility_id=Feed
    click element  accessibility_id=Feed
tap on for you category
    wait until element is visible  accessibility_id=For You
    click element  accessibility_id=For You
get the username form profile
    sleep  5
#    wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="Edit Profile"]
#    ${profile_name}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeStaticText[2]
    ${profile_name}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeStaticText[2]
    log to console  This is Username Whole String=${profile_name}
    ${result1}=  split string  ${profile_name}   @
    set global variable  ${result1}
    log to console  ${result1}[1]



tap on 2nd user on following list
    sleep  3
    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.viewpager.widget.ViewPager/android.widget.RelativeLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[2]/android.widget.RelativeLayout[1]/android.widget.TextView[1]
tap on following list
    sleep   3
    click text  Following

tap on follower list
    sleep   3
    click text  Followers
block the user
    wait until element is visible  accessibility_id=OptionsIcon
    click element  accessibility_id=OptionsIcon
    wait until element is visible  accessibility_id=Block
    click element  accessibility_id=Block
    click element  accessibility_id=BackIcon
    sleep  5
    click element  accessibility_id=BackIcon





following count
#    log to console  this list of users=${invite_people_list}
    sleep  7
#    ${following_count}=  get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeStaticText[2]
    ${following_count}=  get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeStaticText[2]
    ${string}=    Set Variable    ${following_count}
    ${str}=       Split String    ${string}
    ${following_name_list}     create list
    set global variable  ${following_name_list}
    ${val}=     convert to integer  ${str}[0]
    log to console  This is val =${val}
    sleep  5
    ${inner_follow_count}=      get matching xpath count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeTable/XCUIElementTypeCell
    log to console  ${inner_follow_count}
    should be equal as integers   ${val}     ${inner_follow_count}




follower count
    sleep  7
    ${following_count}=  get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeStaticText[1]
    ${string}=    Set Variable    ${following_count}
    ${str}=       Split String    ${string}
    ${following_name_list}     create list
    set global variable  ${following_name_list}
    ${val}=     convert to integer  ${str}[0]
    log to console  This is val =${val}
    sleep  5
    ${inner_follow_count}=      get matching xpath count    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeTable/XCUIElementTypeCell
    log to console  ${inner_follow_count}
    should be equal as integers   ${val}     ${inner_follow_count}

search follow like comment and shre post
    sleep  2
    tap on home button
    wait until element is visible  accessibility_id=Search
    click element  accessibility_id=Search
    sleep  2
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField    aakash
    sleep  2
#    hide keyboard

    run keyword and continue on failure  wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell
    run keyword and continue on failure  wait until element is visible  accessibility_id=aakash
    ${checknameinlist}=     run keyword and return status  element should be visible  accessibility_id=aakash
    log to console  checknameinlist===${checknameinlist}
    Run Keyword If    "${checknameinlist}"=="True"     click element  accessibility_id=aakash
    Run Keyword If    "${checknameinlist}"=="False"    click text  People
    Run Keyword If    "${checknameinlist}"=="False"    sleep  3
    Run Keyword If    "${checknameinlist}"=="False"    click element  accessibility_id=aakash
    sleep  5




#    run keyword and continue on failure  wait until element is visible  accessibility_id=aakash
#    run keyword and continue on failure  click element  accessibility_id=aakash
#    sleep  5
#    run keyword and continue on failure  wait until element is visible  accessibility_id=FOLLOW
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   accessibility_id=FOLLOW
    log to console  ${present}
    run keyword and continue on failure     Run Keyword If    "${present}"=="True"    click element  accessibility_id=FOLLOW
    sleep  8
    Like comment and send message
    sleep  2
    run keyword and continue on failure  profile back button
    sleep  2
    run keyword and continue on failure  profile back button
    sleep  3
    run keyword and continue on failure  profile back button
    sleep  3

Like comment and send message
    view user box on guest mode
    view user post on guest mode
    Long press share via internal on post detail
    Like the post and check like
    click element  accessibility_id=ClosePostDetail





################################################ This is feed code #############################################
tap on follow button and check the status of follow button
    sleep  2
    scroll up  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]
    sleep  3
Feed screen referesh call without internet
#    sleep  2
    Swipe_down_for_friends_category
    error banner
Feed screen categories without internet open application
    sleep  2
    ${categorieswithoutinternet}=   get matching xpath count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[1]/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell
#    log to console  categorieswithoutinternet==${categorieswithoutinternet}=
    should not be equal as numbers  3   ${categorieswithoutinternet}
Feed screen post without internet open application
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell    timeout=30 seconds
    run keyword and continue on failure  element should be visible   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell

Feed screen connect internet and verify data
    sleep  5
    ${categorieswithoutinternet}=   get matching xpath count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[1]/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell
#    log to console  categorieswithoutinternet==${categorieswithoutinternet}=
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
    ${feedusernameforblock}=    get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeButton[2]
    log to console  feedusernameforblock==${feedusernameforblock}

    ${usernamesplitresult}=  split string  ${feedusernameforblock}   @
    set global variable  ${usernamesplitresult}
    log to console  ${usernamesplitresult}

    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeButton[2]
    sleep  5
#    block the user
    log to console  before options
#    wait until element is visible  accessibility_id=OptionsIcon
    sleep  3
    click element  accessibility_id=OptionsIcon
    log to console  After options
#    wait until element is visible  accessibility_id=Block
    sleep  3
    log to console  before Block
    click element  accessibility_id=Block
    log to console  After Block
    click element  accessibility_id=BackIcon
    sleep  5
    Swipe_down_for_friends_category
    Swipe_down_for_friends_category
    sleep  3
    run keyword and continue on failure  page should not contain text  ${usernamesplitresult}[1]

Follow the some one and verify his post are showing at feed screen
    go to profile
    go to setting
    tap on blocked users
    checked blocked users
    sleep  2
    click element  accessibility_id=BackIcon
#    tap on home button
    sleep  2
    tap on home button
    wait until element is visible  accessibility_id=Search
    click element  accessibility_id=Search
    sleep  2
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField    ${usernamesplitresult}[1]
    sleep  2
#    hide keyboard

    run keyword and continue on failure  wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell
    run keyword and continue on failure  wait until element is visible  accessibility_id=${usernamesplitresult}[1]
    ${checknameinlist}=     run keyword and return status  element should be visible  accessibility_id=${usernamesplitresult}[1]
    log to console  checknameinlist===${checknameinlist}
    Run Keyword If    "${checknameinlist}"=="True"     click element  accessibility_id=${usernamesplitresult}[1]
    Run Keyword If    "${checknameinlist}"=="False"    click text  People
    Run Keyword If    "${checknameinlist}"=="False"    sleep  3
    Run Keyword If    "${checknameinlist}"=="False"    click element  accessibility_id=${usernamesplitresult}[1]
    sleep  5




#    run keyword and continue on failure  wait until element is visible  accessibility_id=aakash
#    run keyword and continue on failure  click element  accessibility_id=aakash
#    sleep  5
#    run keyword and continue on failure  wait until element is visible  accessibility_id=FOLLOW
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   accessibility_id=FOLLOW
    log to console  ${present}
    run keyword and continue on failure     Run Keyword If    "${present}"=="True"    click element  accessibility_id=FOLLOW
    sleep  8
    click element  accessibility_id=BackIcon
    sleep  2
    click element  accessibility_id=BackIcon
    Swipe_down_for_friends_category
    sleep  3
    run keyword and continue on failure  text should be visible  ${usernamesplitresult}[1]

entity shareing from feed
    sleep  3

    ${Music}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Preview
    log to console  this is tell us Music Post===${Music}
    Run Keyword If    "${Music}"=="True"   long press   xpath=/XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]

    ${IMDB}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Trailer
    log to console  this is tell us IMDB Post===${IMDB}
    Run Keyword If    "${IMDB}"=="True"   long press   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]

    ${Video}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Video
    log to console  this is tell us Video Post===${Video}
    Run Keyword If    "${Video}"=="True"   long press   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]
    Run Keyword If    "${Video}"=="False"   long press   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]

    sleep  5
    click element  accessibility_id=Share in Group Chat
    sleep  3
check the fayved button
    sleep  10
    ${fayvedbuttoncheck}=   run keyword and return status  element should be visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[4]/XCUIElementTypeOther/XCUIElementTypeImage
    ${fayvedname}=  get element attribute  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[4]/XCUIElementTypeOther/XCUIElementTypeImage      name
    log to console  fayvedname===${fayvedname}=
    Run Keyword If    "${fayvedname}"=="MarkFayvIcon"        fayve count
    Run Keyword If    "${fayvedname}"=="MarkFayvIcon"        save post by fayved button
    Run Keyword If    "${fayvedname}"=="MarkFayvIcon"        fayve count
fayve count
    ${FayvedCount}=     get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[4]/XCUIElementTypeOther/XCUIElementTypeStaticText
    log to console  FayvedCount==${FayvedCount}
save post by fayved button
    click element   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[4]/XCUIElementTypeOther/XCUIElementTypeImage
    sleep  3
#    click text  Save
#    sleep  3
    create and select new box for for you post save


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
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeTextField     maliko
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeSecureTextField     malik0313
    tap on login button from splash screen
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
    log to console  manually turn OFF internet
    sleep  10
    scroll up  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]
#    Swipe_down_for_friends_category
    sleep  2
    repeat keyword  7 times  scroll down  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]
#    ${wifi}=    get network connection status
#    log to console  about network=${wifi}
    ${ab}=  run keyword and return status  element should be enabled  id=ivLoading
    log to console  loader is enable or not=${ab}
    run keyword and continue on failure  Run Keyword If    "${ab}"=="True"    element should be enabled  xpath=//XCUIElementTypeButton[@name="MuteOn"]
    run keyword and continue on failure  Run Keyword If    "${ab}"=="False"    element should be enabled  xpath=//XCUIElementTypeButton[@name="MuteOn"]
    sleep   5
    go to profile
    sleep  3
    go to setting
    sleep  3
    tap on login and logout button
    sleep  3
    ok button
    log to console  manually turn ON internet
    sleep  10

    Steps for login with email

    log to console  before home
    tap on home button
    log to console  after home
    sleep  3
    log to console  before feed
    tap on friends button
    log to console  after feed
###################### no video play catch ###########################






################################################# for time check ############################################################
for time check
    sleep  2
#    Swipe up for sound on feed
    sleep  5
    ${a}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    log to console  This is outer time=${a}
    click element   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    click element  accessibility_id=WhitePlay
    sleep  2
    ${b}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeStaticText
    log to console  This is inner time=${b}

#    run keyword and continue on failure  should not be equal  ${a}       ${b}
    log to console  close the post.
    click element  accessibility_id=ClosePostDetail

################################################# for time check ############################################################

################################# This is code for sound button #############################################################
This is code for sound button
    sleep  5
    ${x}=   run keyword and return status  element should be visible  xpath=//XCUIElementTypeButton[@name="MuteOn"]
    log to console  THis is status of valume mute=${x}
    run keyword and continue on failure     Run Keyword If    "${x}"=="True"      element should be visible  xpath=//XCUIElementTypeButton[@name="MuteOn"]
    Run Keyword If    "${x}"=="True"    click element  xpath=//XCUIElementTypeButton[@name="MuteOn"]
    sleep  2

    ${y}=   run keyword and return status  element should be visible  xpath=//XCUIElementTypeButton[@name="MuteOff"]
    log to console  THis is status of valume mute=${y}
    run keyword and continue on failure     Run Keyword If    "${y}"=="True"      element should be visible  xpath=//XCUIElementTypeButton[@name="MuteOff"]
    Run Keyword If    "${y}"=="True"    click element  xpath=//XCUIElementTypeButton[@name="MuteOff"]

################################# This is code for sound button #############################################################
##################################### internet should be off then appicatiuon in background and close then verify video ####################################
internet should be off and on then appicatiuon in background and close then verify video
    log to console  Internet OFF Put It Background and Close ForceFully
    sleep  3
    run keyword and continue on failure  put the application in background and verify the video
    sleep  3
    run keyword and continue on failure  application forcefully close and verify the video
    sleep  3
    log to console  Turn OFF the Internet Manually
    sleep  10
    run keyword and continue on failure  put the application in background and verify the video
    sleep  3
    run keyword and continue on failure  application forcefully close and verify the video
    sleep  3
    log to console  Turn ON the Internet Manually
    sleep  10
##################################### internet should be off then appicatiuon in background and close then verify video ####################################

##################################### open the profile and back to home then verify video ####################################
open the profile and back to home then verify video

    log to console  Open Profile and Verify Video time
    sleep  3
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    ${g}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    log to console  before profile=${g}
    ${i}=   convert time  ${g}
    log to console  that time=${i}
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeButton[1]
    wait until element is visible  accessibility_id=BackIcon
    click element  accessibility_id=BackIcon
    ${k}=   run keyword and return status  wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    log to console  this is loader status==${k}
    ${h}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    log to console  after profile=${h}
    ${j}=   convert time  ${h}
    log to console  this time=${j}
    Run Keyword If    "${j}"=="${i}"    fail  time is equal
    Run Keyword If    "${k}"=="Ture"   fail  loader is appearing
##################################### open the profile and back to home then verify video ####################################
##################################### open the tray and close the tray then verify video ####################################
open the tray and close the tray then verify video
    log to console  Open Tray and Verify Video time
    sleep  3
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    ${bef_tray}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    log to console  before tray=${bef_tray}
    long press   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]
    sleep  2
    scroll up  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    ${Aft_tray}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    log to console  after tray=${Aft_tray}
#    run keyword and continue on failure  should not be equal  ${Aft_tray}       ${bef_tray}
##################################### open the tray and close the tray then verify video ####################################

##################################### open the tray and post a comment then verify video ####################################
open the tray and post a comment then verify video
    log to console  Open Tray and Post a Comment Then Verify Video time
    sleep  3
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    ${bef_comment}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    log to console  before comment=${bef_comment}
    long press  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]
    wait until element is visible  accessibility_id=Comment
    click element  accessibility_id=Comment
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeTextView
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeTextView
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeTextView    ${Comment}
    click element  xpath=//XCUIElementTypeButton[@name="ok icn"]

    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    ${Aft_comment}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    log to console  after comment=${Aft_comment}
#    run keyword and continue on failure  should not be equal  ${Aft_comment}       ${bef_comment}
##################################### open the tray and post a comment then verify video ####################################

##################################### play api post then verify video ####################################
play api post then verify video
    log to console  Play API Sound and Verify Video time
    sleep  3
    ${api_play_button}=     run keyword and return status  element should be enabled  xpath=//XCUIElementTypeButton[@name="Play Preview"]
    log to console  this is tell us play button===${api_play_button}
    Run Keyword If    "${api_play_button}"=="True"   click element  xpath=//XCUIElementTypeButton[@name="Play Preview"]
    sleep  1
    Run Keyword If    "${api_play_button}"=="True"   wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther
    ${bef_play}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    log to console  before comment=${bef_play}


    Run Keyword If    "${api_play_button}"=="True"   sleep  5
    Run Keyword If    "${api_play_button}"=="True"   click element  xpath=//XCUIElementTypeButton[@name="MiniPauseVideo"]
    log to console  now do it
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    ${Aft_play}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    log to console  after comment=${Aft_play}
    run keyword and continue on failure  should not be equal  ${Aft_play}       ${bef_play}
##################################### play api post then verify video ####################################

##################################### saved api post then verify video ####################################
saved api post then verify video
    log to console  Saved API Post and Verify Video time
    sleep  3
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    ${bef_saved}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    log to console  before saved=${bef_saved}
    ${api_saved_button}=     run keyword and return status  element should be enabled  accessibility_id=MarkFayvIcon
    log to console  this is tell us fayved button===${api_saved_button}
    Run Keyword If    "${api_saved_button}"=="True"   click element  accessibility_id=MarkFayvIcon
    Run Keyword If    "${api_saved_button}"=="True"   Auto play create and select new box for API Post
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    ${Aft_saved}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    log to console  after saved=${Aft_saved}
    run keyword and continue on failure  should not be equal  ${Aft_saved}       ${bef_saved}
##################################### saved api post then verify video ####################################

##################################### removed api post then verify video ####################################
removed api post then verify video
    log to console  Saved API Post and Verify Video time
    sleep  3
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    ${bef_removed}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    log to console  before removed=${bef_removed}
    ${api_removed_button}=     run keyword and return status  element should be enabled  accessibility_id=MarkFayvIcon
    log to console  this is tell us fayved button===${api_removed_button}
    Run Keyword If    "${api_removed_button}"=="True"   click element  accessibility_id=MarkFayvIcon
    Run Keyword If    "${api_removed_button}"=="True"   wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="Remove"]
    Run Keyword If    "${api_removed_button}"=="True"   click element  xpath=//XCUIElementTypeStaticText[@name="Remove"]
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    ${Aft_removed}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    log to console  after removed=${Aft_removed}
    run keyword and continue on failure  should not be equal  ${Aft_removed}       ${bef_removed}
##################################### removed api post then verify video ####################################




#######################  Put the appliaction in background then verify video is pause or not ################################
put the application in background and verify the video
    sleep  5
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    ${c}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    log to console  before bacground=${c}
    background app  5
    sleep  5
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    ${d}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    log to console  after bacground=${d}
#    run keyword and continue on failure  should not be equal  ${c}       ${d}
#######################  Put the appliaction in background then verify video is pause or not ################################
#######################  forcfully close application then verify video is pause or not ################################
application forcefully close and verify the video
    sleep  5
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    ${e}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    log to console  before close=${e}
    close application
    Open the Fayvo application
    sleep  5
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    ${f}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
    log to console  after close=${f}
#     run keyword and continue on failure  should not be equal  ${e}       ${f}
#######################  forcfully close application then verify video is pause or not ################################

without inter like with longpress
    sleep  5
    sleep  3

    ${Music}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Preview
    log to console  this is tell us Music Post===${Music}
    Run Keyword If    "${Music}"=="True"   long press   xpath=/XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]

    ${IMDB}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Trailer
    log to console  this is tell us IMDB Post===${IMDB}
    Run Keyword If    "${IMDB}"=="True"   long press   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]

    ${Video}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Video
    log to console  this is tell us Video Post===${Video}
    Run Keyword If    "${Video}"=="True"   long press   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]
    Run Keyword If    "${Video}"=="False"   other part

    sleep  5
#    log to console  before like
    click element  xpath=//XCUIElementTypeStaticText[@name="Like"]
#    log to console  After like
other part
    log to console  yes it is else
    ${else}=     run keyword and return status  element should be visible   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]
    log to console  else===${else}===
    Run Keyword If    "${else}"=="Ture"   long press   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]
    set global variable  ${else}
like with longpress
    sleep  3

    ${Music}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Preview
    log to console  this is tell us Music Post===${Music}
    Run Keyword If    "${Music}"=="True"   long press   xpath=/XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]

    ${IMDB}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Trailer
    log to console  this is tell us IMDB Post===${IMDB}
    Run Keyword If    "${IMDB}"=="True"   long press   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]

    ${Video}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Video
    log to console  this is tell us Video Post===${Video}
    Run Keyword If    "${Video}"=="True"   long press   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]
    Run Keyword If    "${Video}"=="False"   other part
#    ${ElseAPI}=     run keyword and return status  element should be enabled  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]
#    log to console  this is tell us Else Post===${ElseAPI}
#    Run Keyword If    "${ElseAPI}"=="True"   long press   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]





#    long press   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]
    sleep  5
#    log to console  before like press
    click element  xpath=//XCUIElementTypeStaticText[@name="Like"]
#    log to console  After like press
    sleep  2
    Run Keyword If    "${Music}"=="True"   click element   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[1]/XCUIElementTypeImage
    Run Keyword If    "${IMDB}"=="True"   click element   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther[1]/XCUIElementTypeImage
    Run Keyword If    "${Video}"=="True"   click element   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther[1]/XCUIElementTypeImage
    Run Keyword If    "${else}"=="Ture"   click element   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]
    ${youtext}=     run keyword and return status  text should be visible  You
#    sleep  3
#    check the swipe up coch mark
    sleep  3
    Run Keyword If    "${youtext}"=="True"   Check name in like section
    wait until element is visible  accessibility_id=ClosePostDetail
    click element  accessibility_id=ClosePostDetail
    sleep  3

open post detail and swip
    sleep  3
    ${Music}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[4]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Preview
    log to console  this is tell us Music Post===${Music}
    Run Keyword If    "${Music}"=="True"   click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[4]/XCUIElementTypeOther/XCUIElementTypeOther[3]

    ${IMDB}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[4]/XCUIElementTypeOther/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Trailer
    log to console  this is tell us IMDB Post===${IMDB}
    Run Keyword If    "${IMDB}"=="True"   click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[4]/XCUIElementTypeOther/XCUIElementTypeOther[2]

    ${Video}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[4]/XCUIElementTypeOther/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Video
    log to console  this is tell us Video Post===${Video}
    Run Keyword If    "${Video}"=="True"   click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[4]/XCUIElementTypeOther/XCUIElementTypeOther[2]
    Run Keyword If    "${Video}"=="False"   else for click
#    ${ElseAPI}=     run keyword and return status  element should be enabled  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[4]/XCUIElementTypeOther/XCUIElementTypeImage
#    log to console  this is tell us Else Post===${ElseAPI}
#    Run Keyword If    "${ElseAPI}"=="True"   click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[4]/XCUIElementTypeOther/XCUIElementTypeImage



    #IMDB, Location, Web, Video, Books,
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[4]/XCUIElementTypeOther/XCUIElementTypeOther[2]
    #Music
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[4]/XCUIElementTypeOther/XCUIElementTypeOther[3]
    #Media Photo
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[4]/XCUIElementTypeOther/XCUIElementTypeOther[1]

    sleep  5
    check the swipe up coch mark
else for click
    ${elseclick}=     run keyword and return status  element should be visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[4]/XCUIElementTypeOther/XCUIElementTypeImage
    log to console  this is tell us elseclick Post===${elseclick}
    Run Keyword If    "${elseclick}"=="False"   click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[4]/XCUIElementTypeOther/XCUIElementTypeImage

Like the post and check like
    ${Likeorunlike}=  run keyword and return status  page should contain text  You
    log to console  likebutton===${Likeorunlike}=
    sleep  3
    Run Keyword If    "${Likeorunlike}"=="False"        click element  accessibility_id=PostOptions
    sleep  2
    Run Keyword If    "${Likeorunlike}"=="False"        click element  xpath=//XCUIElementTypeStaticText[@name="Like"]
    like on post detail with longpress
    sleep  2


like on post detail with longpress
    sleep  3
    Check name in like section



Check name in like section
    sleep  3
    click element  xpath=//XCUIElementTypeStaticText[@name="Add a comment"]
    sleep  2
    click element  xpath=//XCUIElementTypeStaticText[@name="Likes"]
    sleep  3
    run keyword and continue on failure  page should contain text  ${result1}[1]
    sleep  3
    click element   accessibility_id=LikeCommentTip

Check name in like section for post detail

    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[2]/XCUIElementTypeButton
    ${present}=  Run Keyword And Return Status    element should be visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[2]/XCUIElementTypeButton
    log to console  this is like status=${present}
    Run Keyword If    "${present}"=="True"        click element   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[2]/XCUIElementTypeButton
    sleep  2
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]/XCUIElementTypeButton
    ${name_text}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]/XCUIElementTypeButton
    log to console  ${name_text}
    run keyword and continue on failure  should contain  ${result1}   ${name_text}
    sleep  3
    click element   accessibility_id=LikeCommentTip


Comment with longpress on post detail
    sleep  3
    click element  accessibility_id=PostOptions
    sleep  2
    click element  xpath=//XCUIElementTypeStaticText[@name="Comment"]
    sleep  3
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeTextView    ${Comment}
    click element  accessibility_id=ok icn
    sleep  3
    run keyword and continue on failure  page should contain text  ${Comment}
    sleep  3
    click element   accessibility_id=LikeCommentTip


Without internet Comment with longpress
    sleep  3

    ${Music}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Preview
    log to console  this is tell us Music Post===${Music}
    Run Keyword If    "${Music}"=="True"   long press   xpath=/XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]

    ${IMDB}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Trailer
    log to console  this is tell us IMDB Post===${IMDB}
    Run Keyword If    "${IMDB}"=="True"   long press   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]

    ${Video}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Video
    log to console  this is tell us Video Post===${Video}
    Run Keyword If    "${Video}"=="True"   long press   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]
    Run Keyword If    "${Video}"=="False"   other part
    wait until element is visible  accessibility_id=Comment
    click element  accessibility_id=Comment
    sleep  3
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeTextView
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeTextView
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeTextView    ${Comment}
    click element  xpath=//XCUIElementTypeButton[@name="ok icn"]
    sleep  3



Comment with longpress
    sleep  3

    ${Music}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Preview
    log to console  this is tell us Music Post===${Music}
    Run Keyword If    "${Music}"=="True"   long press   xpath=/XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]

    ${IMDB}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Trailer
    log to console  this is tell us IMDB Post===${IMDB}
    Run Keyword If    "${IMDB}"=="True"   long press   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]

    ${Video}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Video
    log to console  this is tell us Video Post===${Video}
    Run Keyword If    "${Video}"=="True"   long press   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]
    Run Keyword If    "${Video}"=="False"   other part
    wait until element is visible  accessibility_id=Comment
    click element  accessibility_id=Comment
    sleep  3
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeTextView
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeTextView
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeTextView    ${Comment}
    click element  xpath=//XCUIElementTypeButton[@name="ok icn"]
    sleep  3
#    wait until element is visible   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[1]/XCUIElementTypeImage
    Run Keyword If    "${Music}"=="True"   click element   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[1]/XCUIElementTypeImage
    Run Keyword If    "${IMDB}"=="True"   click element   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther[1]/XCUIElementTypeImage
    Run Keyword If    "${Video}"=="True"   click element   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther[1]/XCUIElementTypeImage
    Run Keyword If    "${else}"=="True"   click element   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]


    Check name in Comment section
    wait until element is visible  accessibility_id=ClosePostDetail
    click element  accessibility_id=ClosePostDetail


Check name in Comment section
    sleep  3
#    wait until element is visible   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther[3]/XCUIElementTypeButton
    click element  xpath=//XCUIElementTypeStaticText[@name="Add a comment"]
    sleep  5
    run keyword and continue on failure  page should contain text  Nice
    click on tip button

click on tip button
    wait until element is visible   xpath=//XCUIElementTypeButton[@name="LikeCommentTip"]
    click element   xpath=//XCUIElementTypeButton[@name="LikeCommentTip"]

Long Press share post on post detail in fayvo
    sleep  3
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

Long Press share post via direct message
    wait until element is visible   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]
    long press   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]
    Send Message Via Direct
Send Message Via Direct
    wait until element is visible  accessibility_id=Send via Direct Message
    click element  accessibility_id=Send via Direct Message
    run keyword and continue on failure  wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    run keyword and continue on failure  input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField       maliko
    sleep  5
    run keyword and continue on failure  click element  accessibility_id=@maliko
    run keyword and continue on failure  input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeTextView    hello
    run keyword and continue on failure  click element  accessibility_id=send chat message

without internet Long Press report post
    sleep  3
    ${Music}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Preview
    log to console  this is tell us Music Post===${Music}
    Run Keyword If    "${Music}"=="True"   long press   xpath=/XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]

    ${IMDB}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Trailer
    log to console  this is tell us IMDB Post===${IMDB}
    Run Keyword If    "${IMDB}"=="True"   long press   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]

    ${Video}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Video
    log to console  this is tell us Video Post===${Video}
    Run Keyword If    "${Video}"=="True"   long press   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]
    Run Keyword If    "${Video}"=="False"   other part
    wait until element is visible  accessibility_id=Report
    click element  accessibility_id=Report
#    wait until element is visible  xpath=//XCUIElementTypeButton[@name="It's spam"]
    sleep  5
#    log to console  press spam button
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeSheet/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[1]
#    log to console  After press spam button
    sleep  2

Long Press report post
    sleep  3
    ${Music}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Preview
    log to console  this is tell us Music Post===${Music}
    Run Keyword If    "${Music}"=="True"   long press   xpath=/XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]

    ${IMDB}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Trailer
    log to console  this is tell us IMDB Post===${IMDB}
    Run Keyword If    "${IMDB}"=="True"   long press   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]

    ${Video}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Video
    log to console  this is tell us Video Post===${Video}
    Run Keyword If    "${Video}"=="True"   long press   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]
    Run Keyword If    "${Video}"=="False"   other part
    wait until element is visible  accessibility_id=Report
    click element  accessibility_id=Report
    wait until element is visible  accessibility_id=It's spam
    click element  accessibility_id=It's spam
    sleep  2
scrol till element
    sleep  2
    swipe by percent    50     60     50    70  2000

scrol category element
    sleep  2
    swipe by percent    311     97     123    97  2000
tap on post button at camera screen
    sleep  2
    click element  xpath=//XCUIElementTypeStaticText[@name="POST"]

Long Press report post for FOR YOU
    sleep  3
    log to console  befor long press
    click element   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeImage
    log to console  after long press
    sleep  2
    click element  accessibility_id=PostOptions
    wait until element is visible  accessibility_id=Report
    click element  accessibility_id=Report
    wait until element is visible  accessibility_id=It's spam
    click element  accessibility_id=It's spam
    sleep  2
    click element  accessibility_id=ClosePostDetail
    sleep  2


post deep link copy
    sleep  5
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]
    sleep  5
    ${checkpost}=   run keyword and return status  element should be visible  //XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[5]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther[3]/XCUIElementTypeButton
#    ${username}=    get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeButton
    run keyword if  "${checkpost}"== "True"    get username from API post
    run keyword if  "${checkpost}"== "False"    get username from media post
    click element  accessibility_id=PostOptions
    wait until element is visible  accessibility_id=Copy Link
    click element  accessibility_id=Copy Link
    sleep  2
    Open the Chrom application
    sleep  2
    ${addressbar}=  run keyword and return status  element should be visible  accessibility_id=NTPHomeFakeOmniboxAccessibilityID
    run keyword if  "${addressbar}"== "True"    click element  accessibility_id=NTPHomeFakeOmniboxAccessibilityID
    run keyword if  "${addressbar}"== "False"    click element  accessibility_id=Address and search bar
#    click element  accessibility_id=Address and search bar
#    click element  accessibility_id=NTPHomeFakeOmniboxAccessibilityID
#    click element  xpath=(//XCUIElementTypeStaticText[@name="Search or type URL"])[2]
    sleep  3
    click element  accessibility_id=Link that you copied
    sleep  5
    run keyword and continue on failure  page should contain element  accessibility_id=${username}[1]
    sleep  2
    open the fayvo application

get username from media post
    ${usernamewithAt}=    get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeButton
    log to console  deepnameusernamewithAt===${usernamewithAt}
    ${username}=  split string  ${usernamewithAt}   @
    log to console  ${username}[1]
    set global variable  ${username}
get username from API post
    ${usernamewithAt}=    get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[5]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther[3]/XCUIElementTypeButton
    log to console  deepnameusernamewithAt===${usernamewithAt}
    ${username}=  split string  ${usernamewithAt}   @
    log to console  ${username}[1]
    set global variable  ${username}


box deep link copy
    sleep  5
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton
    sleep  5
#    ${deepbox}=     get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeStaticText
    ${deepbox}=     get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeStaticText
    log to console  deepbox===${deepbox}
    set global variable  ${deepbox}
    wait until element is visible  accessibility_id=Shareblue
    click element  accessibility_id=Shareblue
    wait until element is visible  accessibility_id=Copy Link
    click element  accessibility_id=Copy Link
    sleep  2
    Open the Chrom application
    sleep  2
    ${addressbar}=  run keyword and return status  element should be visible  accessibility_id=NTPHomeFakeOmniboxAccessibilityID
    run keyword if  "${addressbar}"== "True"    click element  accessibility_id=NTPHomeFakeOmniboxAccessibilityID
    run keyword if  "${addressbar}"== "False"    click element  accessibility_id=Address and search bar
    sleep  3
    click element  accessibility_id=Link that you copied
    sleep  5
    run keyword and continue on failure  page should contain text  ${deepbox}
    sleep  2
    open the fayvo application

profile deep link copy
    sleep  5
    click element  accessibility_id=BackIcon
    sleep  2
    click element  //XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeImage
    sleep  3
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeImage
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeImage
    sleep  2
#    ${deepname}=    get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeStaticText
#    log to console  deepname===${deepname}
    click element  accessibility_id=OptionsIcon
    sleep  2
    click element  accessibility_id=Share
   wait until element is visible  accessibility_id=Copy Link
    click element  accessibility_id=Copy Link
    sleep  2
    Open the Chrom application
    sleep  2
    ${addressbar}=  run keyword and return status  element should be visible  accessibility_id=NTPHomeFakeOmniboxAccessibilityID
    run keyword if  "${addressbar}"== "True"    click element  accessibility_id=NTPHomeFakeOmniboxAccessibilityID
    run keyword if  "${addressbar}"== "False"    click element  accessibility_id=Address and search bar
    sleep  3
    click element  accessibility_id=Link that you copied
    sleep  5
    run keyword and continue on failure  page should contain element  accessibility_id=${username}[1]
    sleep  2
    open the fayvo application

after deep links
    sleep  3
    click element  accessibility_id=BackIcon
    sleep  2
#    click element  accessibility_id=BackIcon
#    sleep  2
    click element  accessibility_id=ClosePostDetail






Long press share via internal on post detail
    sleep  3
    click element  accessibility_id=PostOptions
    sleep  2
    click element  accessibility_id=Send via Direct Message
    run keyword and continue on failure  wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    run keyword and continue on failure  input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField       maliko
    sleep  5
    run keyword and continue on failure  click element  accessibility_id=@maliko
    run keyword and continue on failure  input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeTextView    hello
    run keyword and continue on failure  click element  accessibility_id=send chat message
    sleep  3


Long Press Delete post on post detail
    sleep  3
#    ${x}=   run keyword and return status  element should be enabled  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeScrollView
#    log to console  this is tell us about media Post detail=${x}
#    Run Keyword If    "${x}"=="False"        long press   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeImage
#    Run Keyword If    "${x}"=="True"        long press   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeScrollView
#    sleep  2
    click element  accessibility_id=PostOptions
    sleep  2
#    click text  Like
#    click element  xpath=//XCUIElementTypeStaticText[@name="Comment"]
    click element  accessibility_id=Delete
    sleep  3
    click element  accessibility_id=Yes
    sleep  5
    log to console  before done
    click element  accessibility_id=ClosePostDetail
    log to console  after done

Long Press edit post on post detail
    sleep  3
    click element  accessibility_id=PostOptions
    sleep  2
    click element  accessibility_id=Edit
    sleep  3
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]/XCUIElementTypeTextView
    log to console  ${present}
    Run Keyword If    "${present}"=="True"       Edit a API post
    Run Keyword If    "${present}"=="False"      Edit a media post
    sleep  3


report post, scroll posts and save post for you and get the category names
    tap on home button
    tap on for you category
    scrol till element
    click element  xpath=(//XCUIElementTypeButton[@name="See all"])[2]
    sleep  3
    ${check_name_in_list}   run keyword and return status   element should be visible  xpath=//XCUIElementTypeStaticText[@name="🎥 Movies & Series"]
    sleep  3
#    Run Keyword If    "${check_name_in_list}"=="True"        Long Press report post for FOR YOU
    Run Keyword If    "${check_name_in_list}"=="True"        scroll down  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView
    Run Keyword If    "${check_name_in_list}"=="True"        click element  xpath=(//XCUIElementTypeImage[@name="MarkFayvIcon"])[1]
    Run Keyword If    "${check_name_in_list}"=="True"        create and select new box for for you post save
    Run Keyword If    "${check_name_in_list}"=="True"        profile back button


Edit a media post
    # Tag a user
    click element  accessibility_id=TagPeople
    sleep  3
#    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeTextField    akash111
#    sleep  2
#    click element  accessibility_id=maliko
    wait until element is visible  xpath=//XCUIElementTypeButton[@name="Done"]
    click element  xpath=//XCUIElementTypeButton[@name="Done"]
    sleep  2
#    element should be visible  accessibility_id=LocationCancelIcon
#
#    # Add location
#    click element  accessibility_id=AddLocationIcon
    sleep  2
#    ${present}=  Run Keyword And Return Status    Element Should Be Visible   accessibility_id=Allow While Using App
#    log to console  ${present}
#    Run Keyword If    "${present}"=="True"     click element  accessibility_id=Allow While Using App
#    sleep  5
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]
    wait until element is visible  xpath=//XCUIElementTypeButton[@name="postCheck"]
    click element  xpath=//XCUIElementTypeButton[@name="postCheck"]
    wait until element is visible  xpath=//XCUIElementTypeButton[@name="Save"]      timeout=60 seconds
    click element  xpath=//XCUIElementTypeButton[@name="Save"]



Edit a API post
    sleep  2
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]/XCUIElementTypeTextView       This is API Post
    sleep  1
    click element  xpath=//XCUIElementTypeButton[@name="Proceed"]
    wait until element is visible  xpath=//XCUIElementTypeButton[@name="Save"]      timeout=20 seconds
    click element  xpath=//XCUIElementTypeButton[@name="Save"]



tap for each category

    ${cat_name_list}    create list
    sleep  3
    set global variable  ${cat_name_list}
    repeat keyword  15 times    loop and swipe
    loop and swipe
    loop for last category
    log to console  Catlist===${cat_name_list}
    ${catcount}=    get length  ${cat_name_list}
    log to console  catcount==${catcount}==

loop and swipe
    loop for category
    swipe left for category

loop for category
#    sleep  3
    ${cat_count}=    get matching xpath count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[1]/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell
    FOR    ${i}    IN RANGE    1    ${cat_count}

       ${cat_name}=   get text    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[1]/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[${i}]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeStaticText
       ${check_category_in_list}=      run keyword and return status  list should contain value  ${cat_name_list}   ${cat_name}
#       log to console  ${cat_name}
#       log to console  ${check_category_in_list}
#       Run Keyword If    "${check_category_in_list}"=="False"     click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[${i}]/android.widget.TextView
#       Run Keyword If    "${check_category_in_list}"=="False"     swipe down for home
#       sleep  5
#    \   Run Keyword If    "${check_category_in_list}"=="False"     element should be visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.ImageView
       Run Keyword If    "${check_category_in_list}"=="False"     append to list  ${cat_name_list}   ${cat_name}

    END
loop for last category
    ${cat_count}=    get matching xpath count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[1]/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell
    FOR    ${i}    IN RANGE    1    ${cat_count}+1

       ${cat_name}=   get text    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[1]/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[${i}]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeStaticText
       ${check_category_in_list}=      run keyword and return status  list should contain value  ${cat_name_list}   ${cat_name}
#       log to console  ${cat_name}
#       log to console  ${check_category_in_list}
#       Run Keyword If    "${check_category_in_list}"=="False"     click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[${i}]/android.widget.TextView
#       Run Keyword If    "${check_category_in_list}"=="False"     swipe down for home
#       sleep  5
#       Run Keyword If    "${check_category_in_list}"=="False"     element should be visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.ImageView
       Run Keyword If    "${check_category_in_list}"=="False"     append to list  ${cat_name_list}   ${cat_name}
    END

tap on invite people

    wait until element is visible  accessibility_id=tag people
    click element  accessibility_id=tag people


suggestions friends
    sleep  4
#    ${x}=   get matching xpath count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell/XCUIElementTypeImage
    ${x}=   get matching xpath count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell
    log to console  this is the count of invite=${x}
    should not be equal as numbers  ${x}    0

#    wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[2]/android.widget.RelativeLayout[2]/android.widget.ImageView       timeout=10 seconds
#    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[2]/android.widget.RelativeLayout[2]/android.widget.ImageView
#    sleep  2
#    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[2]/android.widget.RelativeLayout[1]/android.widget.TextView[1]
#    sleep  3
#    ${text_of_follow_button}=   get text  id=tv_following_user
#    log to console  ${text_of_follow_button}
#    should be equal as strings  ${text_of_follow_button}    FOLLOWING
#    go back
list of users from invite people
    ${invite_people_list}    create list
    set global variable  ${invite_people_list}
follow the one user from suggestion
    sleep  3
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[3]/XCUIElementTypeImage
    sleep  5
    wait until element is visible  xpath=//XCUIElementTypeButton[@name="FOLLOW"]
    ${sug_follow_name}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeStaticText[2]
    log to console  this is suggestion follow name==${sug_follow_name}
    ${splitA}=  split string  ${sug_follow_name}   @
    set global variable  ${splitA}
    log to console  ${splitA}
    append to list  ${invite_people_list}       ${splitA}[1]
    click element  xpath=//XCUIElementTypeButton[@name="FOLLOW"]
    wait until element is visible  accessibility_id=BackIcon
    click element  accessibility_id=BackIcon
follow the one user from contact
    sleep  5
    click element  accessibility_id=Connect to contacts
    sleep  5
    click text  OK
#    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]/XCUIElementTypeButton
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]/XCUIElementTypeButton
    wait until element is visible  xpath=//XCUIElementTypeButton[@name="FOLLOW"]
    ${contact_follow_name}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeStaticText[2]

    log to console  this is contact follow name==${contact_follow_name}
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[2]/XCUIElementTypeButton[2]
    sleep  5

    ${contact_visible}=   run keyword and return status  element should be visible  xpath=//XCUIElementTypeButton[@name="PENDING"]
    ${splitA}=  split string  ${contact_follow_name}   @
    set global variable  ${splitA}
    log to console  ${splitA}
    Run Keyword If    "${contact_visible}"=="False"      append to list  ${invite_people_list}       ${splitA}[1]

    wait until element is visible  accessibility_id=BackIcon
    click element  accessibility_id=BackIcon
    sleep  2
    click element  accessibility_id=BackIcon



follow the one user from facebook
#    wait until element is visible  accessibility_id=Connect to Facebook
    sleep  5
    click element  accessibility_id=Connect to Facebook
    ${fb}=      run keyword and return status  element should be visible  accessibility_id=Continue
    log to console  ${fb}
    Run Keyword If    "${fb}"=="True"      click element  accessibility_id=Continue
    sleep  3
    Run Keyword If    "${fb}"=="True"      click element  accessibility_id=Continue

    wait until element is visible  accessibility_id=No friend found in your facebook friend zone.       timeout=15 seconds
    element should be visible  accessibility_id=No friend found in your facebook friend zone.
    wait until element is visible  accessibility_id=OK
    click element  accessibility_id=OK
    log to console  this is list of Users of following from invite====${invite_people_list}
new post submit button
    sleep  3
    wait until element is visible  xpath=//XCUIElementTypeButton[@name="postCheck"]     timeout=60 seconds
    click element  xpath=//XCUIElementTypeButton[@name="postCheck"]
check boxes are load or not for media posts
    sleep  3
    run keyword and continue on failure  wait until element is visible  accessibility_id=Create a box...    timeout=10 seconds
    ${boxes_data}=  Run Keyword And Return Status      run keyword and continue on failure  wait until element is visible  accessibility_id=Create a box...    timeout=10 seconds
    log to console  This is boxes Data=${boxes_data}
    Run Keyword If    "${boxes_data}"=="False"      swipe down for load boxes data
    ${boxes_data}=  Run Keyword And Return Status    wait until element is visible   accessibility_id=Create a box...    timeout=10 seconds
    Run Keyword If    "${boxes_data}"=="False"      swipe down for load boxes data
    ${boxes_data}=  Run Keyword And Return Status    wait until element is visible   accessibility_id=Create a box...    timeout=10 seconds
    Run Keyword If    "${boxes_data}"=="False"      go back
    Run Keyword If    "${boxes_data}"=="False"      go back
    Run Keyword If    "${boxes_data}"=="False"      go back
    Run Keyword If    "${boxes_data}"=="True"      create and select new box

create and select new box for for you post save
    sleep  2
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   accessibility_id=hellobox
    log to console  ${present}
    Run Keyword If    "${present}"=="True"     click element  accessibility_id=hellobox
    log to console  Before click the save button
    sleep  5
    Run Keyword If    "${present}"=="True"     click element  xpath=//XCUIElementTypeButton[@name="Save"]
    log to console  After click the save button
    sleep  5
    Run Keyword If    "${present}"=="False"     click element  accessibility_id=Create a box...
    sleep  1
    Run Keyword If    "${present}"=="False"     input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeTextField     hellobox
    sleep  1
    Run Keyword If    "${present}"=="False"     click element  xpath=//XCUIElementTypeStaticText[@name="Private"]
    sleep  5
    Run Keyword If    "${present}"=="False"      click element   xpath=//XCUIElementTypeButton[@name="Create box"]
    Run Keyword If    "${present}"=="False"      wait until element is visible  accessibility_id=OK
    Run Keyword If    "${present}"=="False"     click element  accessibility_id=OK
    sleep  5
    Run Keyword If    "${present}"=="False"     click text  Save

    ${present1}=  Run Keyword And Return Status    wait until element is visible   accessibility_id=Not Now      timeout=15 seconds
    log to console  ${present1}
    sleep  2
    Run Keyword If    "${present1}"=="True"     click element  accessibility_id=Not Now
    sleep  3
create and select new box
    sleep  2
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   accessibility_id=hellobox
    log to console  HelloBox=${present}
    Run Keyword If    "${present}"=="True"     click element  accessibility_id=hellobox
    sleep  2
    Run Keyword If    "${present}"=="True"     click text  Save
    sleep  2
    Run Keyword If    "${present}"=="False"     click element  accessibility_id=Create a box...
    sleep  1
    Run Keyword If    "${present}"=="False"     input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeTextField     hellobox
    sleep  1
    Run Keyword If    "${present}"=="False"     click element  xpath=//XCUIElementTypeStaticText[@name="Private"]
    sleep  5
    Run Keyword If    "${present}"=="False"      click element   xpath=//XCUIElementTypeButton[@name="Create box"]
    Run Keyword If    "${present}"=="False"      wait until element is visible  accessibility_id=OK
    Run Keyword If    "${present}"=="False"     click element  accessibility_id=OK
    sleep  5
    Run Keyword If    "${present}"=="False"     click text  Save

    ${present}=  Run Keyword And Return Status    wait until element is visible   accessibility_id=Not Now      timeout=15 seconds
#    log to console  ${present}
    sleep  2
    Run Keyword If    "${present}"=="True"     click element  accessibility_id=Not Now
    sleep  3

check boxes are load or not for API
    run keyword and continue on failure  wait until element is visible  accessibility_id=Create a box...    timeout=10 seconds
    ${boxes_data}=  Run Keyword And Return Status      run keyword and continue on failure  wait until element is visible  accessibility_id=Create a box...    timeout=10 seconds
#    log to console  This is API boxes Data=${boxes_data}
    Run Keyword If    "${boxes_data}"=="False"      wipe Down for load boxes data for API
    Run Keyword If    "${boxes_data}"=="False"      click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.FrameLayout/android.widget.TextView[@text='Save']
    ${boxes_data}=  Run Keyword And Return Status    wait until element is visible   accessibility_id=Create a box...    timeout=10 seconds
    Run Keyword If    "${boxes_data}"=="False"      wipe Down for load boxes data for API
    Run Keyword If    "${boxes_data}"=="False"      click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.FrameLayout/android.widget.TextView[@text='Save']
    ${boxes_data}=  Run Keyword And Return Status    wait until element is visible   accessibility_id=Create a box...    timeout=10 seconds
    Run Keyword If    "${boxes_data}"=="False"      wipe Down for load boxes data for API
    Run Keyword If    "${boxes_data}"=="False"      go back
    Run Keyword If    "${boxes_data}"=="True"      create and select new box for API POST


create and select new box for API POST
    sleep  3
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   accessibility_id=hellobox
#    log to console  hellobox exist or not===${present}
    Run Keyword If    "${present}"=="True"     select box and save
    Run Keyword If    "${present}"=="False"     click element  accessibility_id=Create a box...
    Run Keyword If    "${present}"=="False"     wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    Run Keyword If    "${present}"=="False"     input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeTextField     hellobox
    Run Keyword If    "${present}"=="False"     wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="All users"]
    Run Keyword If    "${present}"=="False"     click element  xpath=//XCUIElementTypeStaticText[@name="All users"]
    Run Keyword If    "${present}"=="False"     wait until element is visible  xpath=//XCUIElementTypeButton[@name="Create box"]
    Run Keyword If    "${present}"=="False"     click element  xpath=//XCUIElementTypeButton[@name="Create box"]
#    Run Keyword If    "${present}"=="False"     wait until element is visible  accessibility_id=OK
#    Run Keyword If    "${present}"=="False"     click element  accessibility_id=OK
    Run Keyword If    "${present}"=="False"     wait until element is visible   accessibility_id=hellobox
    Run Keyword If    "${present}"=="False"     click element  accessibility_id=hellobox
    Run Keyword If    "${present}"=="False"     select box and save
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeTable/XCUIElementTypeCell[1]   timeout=30 seconds
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeTable/XCUIElementTypeCell[1]
    ${saveButton}=  get text  xpath=//XCUIElementTypeButton[@name="Saved"]
    click element  xpath=//XCUIElementTypeButton[@name="BackIconWhite"]
#    wait until element is visible  xpath=//XCUIElementTypeButton[@name="Saved"]
    element text should be  xpath=//XCUIElementTypeButton[@name="Saved"]      ${saveButton}
    log to console  ${saveButton}
    Profile back button
#    go back

Auto play create and select new box for API Post
    sleep  3
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   accessibility_id=hellobox
    log to console  hellobox exist or not===${present}==
    Run Keyword If    "${present}"=="True"     select box and save
    Run Keyword If    "${present}"=="False"     click element  accessibility_id=Create a box...
    Run Keyword If    "${present}"=="False"     wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    Run Keyword If    "${present}"=="False"     input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeTextField     hellobox
    Run Keyword If    "${present}"=="False"     wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="Private"]
    Run Keyword If    "${present}"=="False"     click element  xpath=//XCUIElementTypeStaticText[@name="Private"]
    Run Keyword If    "${present}"=="False"     wait until element is visible  xpath=//XCUIElementTypeButton[@name="Create box"]
    Run Keyword If    "${present}"=="False"     click element  xpath=//XCUIElementTypeButton[@name="Create box"]
#    Run Keyword If    "${present}"=="False"     wait until element is visible  accessibility_id=OK
#    Run Keyword If    "${present}"=="False"     click element  accessibility_id=OK
    Run Keyword If    "${present}"=="False"     wait until element is visible   accessibility_id=hellobox
    Run Keyword If    "${present}"=="False"     click element  accessibility_id=hellobox
    Run Keyword If    "${present}"=="False"     select box and save


select box and save
#    wait until element is visible   accessibility_id=hellobox
    sleep  3
    click element  accessibility_id=hellobox
#    wait until element is visible  xpath=//XCUIElementTypeButton[@name="Save"]
    sleep  3
    click text  Save

tap on post button
    wait until element is visible  accessibility_id=Save    timeout=40 seconds
    click element  accessibility_id=Save

gallary permissions for story
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeButton
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   xpath=//XCUIElementTypeButton[@name="Allow"]
    log to console  Camera=${present}
    Run Keyword If    "${present}"=="True"     click element  xpath=//XCUIElementTypeButton[@name="Allow"]
    Run Keyword If    "${present}"=="True"     wait until element is visible  accessibility_id=Don’t Allow
    Run Keyword If    "${present}"=="True"     click element  accessibility_id=Don’t Allow

    ${opensetting}=  Run Keyword And Return Status    Element Should Be Visible   xpath=//XCUIElementTypeStaticText[@name="Open Settings"]
    log to console  opensetting=${opensetting}


    Run Keyword If    "${opensetting}"=="True"     wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="Open Settings"]
    Run Keyword If    "${opensetting}"=="True"     click text  Open Settings
#    Run Keyword If    "${opensetting}"=="True"     wait until element is visible  xpath=/XCUIElementTypeSwitch[@name="Camera"]
    sleep  3
    Run Keyword If    "${opensetting}"=="True"     click text  Photos
    Run Keyword If    "${opensetting}"=="True"     click text  All Photos
    Run Keyword If    "${opensetting}"=="True"     launch application
    Run Keyword If    "${opensetting}"=="True"     sleep  3
    Run Keyword If    "${opensetting}"=="True"     click text  Add Status
    Run Keyword If    "${opensetting}"=="True"     sleep  2
    Run Keyword If    "${opensetting}"=="True"     page should contain text  Capture
    Run Keyword If    "${opensetting}"=="True"     click text  Capture
    Run Keyword If    "${opensetting}"=="True"     sleep  3
    Run Keyword If    "${opensetting}"=="True"     click text  Gallery
    Run Keyword If    "${opensetting}"=="True"     click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeButton




camra permessions for story
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   xpath=//XCUIElementTypeButton[@name="Allow"]
    log to console  Camera=${present}
    Run Keyword If    "${present}"=="True"     click element  xpath=//XCUIElementTypeButton[@name="Allow"]
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
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   xpath=//XCUIElementTypeButton[@name="Allow"]
#    log to console  Camera=${present}
    Run Keyword If    "${present}"=="True"     click element  xpath=//XCUIElementTypeButton[@name="Allow"]
    Run Keyword If    "${present}"=="True"     wait until element is visible  accessibility_id=OK
    Run Keyword If    "${present}"=="True"     click element  accessibility_id=OK
    Run Keyword If    "${present}"=="True"     wait until element is visible  accessibility_id=OK
    Run Keyword If    "${present}"=="True"     click element  accessibility_id=OK
    Run Keyword If    "${present}"=="True"     wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeButton
    Run Keyword If    "${present}"=="True"     click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeButton
    Run Keyword If    "${present}"=="True"     wait until element is visible  xpath=//XCUIElementTypeButton[@name="Allow"]
    Run Keyword If    "${present}"=="True"     click element  xpath=//XCUIElementTypeButton[@name="Allow"]
    Run Keyword If    "${present}"=="True"     wait until element is visible  accessibility_id=Allow Access to All Photos
    Run Keyword If    "${present}"=="True"     click element  accessibility_id=Allow Access to All Photos
    Run Keyword If    "${present}"=="True"     profile back button


edit a photo post
    sleep  2
    repeat keyword  2 times     swipe left for edit filter
    click element  accessibility_id=AddIcon
    sleep  1
    Swipe Down for edit post1
    Swipe Down for edit post2
    click element  accessibility_id=ok icn
    sleep  1
    click element  accessibility_id=TagPeople
    sleep  3
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeTextField    maliko
    wait until element is visible  accessibility_id=tagUnselectedPeople
    click element  accessibility_id=tagUnselectedPeople
    wait until element is visible  xpath=//XCUIElementTypeButton[@name="Done"]
    click element  xpath=//XCUIElementTypeButton[@name="Done"]
    sleep  1
    click element  accessibility_id=EmojiIcon
    sleep  2
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeCollectionView/XCUIElementTypeCell[4]/XCUIElementTypeOther
    sleep  2
    click element  accessibility_id=CropIcon
    sleep  1
    click element  accessibility_id=rotate image
    click element  accessibility_id=rotate image
    click element  xpath=//XCUIElementTypeStaticText[@name="Done"]

edit a video post
    sleep  2
    repeat keyword  2 times     swipe left for edit filter
    click element  accessibility_id=AddIcon
    sleep  1
    Swipe Down for edit post1
    Swipe Down for edit post2
    click element  accessibility_id=ok icn
    click element  accessibility_id=EmojiIcon
    sleep  2
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeCollectionView/XCUIElementTypeCell[4]/XCUIElementTypeOther


Add a new post with camra photo
#    tap on post button
#    sleep  2
#    click element  accessibility_id=Photo/Video
#    sleep  2
#    swipe right for camera
    Swipe right for camera post
    sleep  2
    tap on post button at camera screen
#    camra permessions
    wait until element is visible  accessibility_id=cameraCircle
    click element  accessibility_id=cameraCircle
    sleep  1
    new post submit button
    sleep  3
    check boxes are load or not for media posts

Add a new edit post with camra photo
    Swipe right for camera post
    sleep  2
    tap on post button at camera screen
#    tap on post button
#    sleep  2
#    click element  accessibility_id=Photo/Video
#    sleep  2
    camra permessions
    sleep  1
    click element  accessibility_id=cameraCircle
    sleep  2
    edit a photo post
    sleep  2
    new post submit button
    sleep  3
    check boxes are load or not for media posts

Add a new post with camra video
    Swipe right for camera post
    sleep  2
    tap on post button at camera screen
#    tap on post button
#    sleep  2
#    click element  accessibility_id=Photo/Video
#    sleep  2
    camra permessions
    sleep  1
    long press  accessibility_id=cameraCircle  duration=10000
    sleep  1
    new post submit button
    sleep  3
    check boxes are load or not for media posts

Add a new multi post with gallery
    Swipe right for camera post
    sleep  2
    tap on post button at camera screen
#    tap on post button
#    sleep  2
#    click element  accessibility_id=Photo/Video
    sleep  2
    camra permessions
    sleep  3
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeButton
#    click element  accessibility_id=galleryup
#    scroll down  accessibility_id=galleryup
    scroll down  accessibility_id=Gallery
#    click element  accessibility_id=Gallery
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[3]
    click element  xpath=//XCUIElementTypeButton[@name="Next"]
    sleep  1
    new post submit button
    sleep  3
    check boxes are load or not for media posts

Add a new edit post with camra video
    tap on post button
    sleep  2
    click element  accessibility_id=Photo/Video
    sleep  2
    camra permessions
    sleep  1
    long press  accessibility_id=cameraCircle  duration=10000
    sleep  2
    edit a video post
    sleep  2
    new post submit button
    sleep  3
    check boxes are load or not for media posts

Home search on deifferent categories
    sleep  3
    click element  accessibility_id=Search
    sleep  2
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField    c
    sleep  3
#    hide keyboard
    ${cat_name_list}    create list
    set global variable  ${cat_name_list}
    log to console  search category
#    repeat keyword  5 times    loop and swipe on serach
#    run keyword and continue on failure  loop and swipe on serach
#    loop for last category on serach
    sleep  3
    click element  accessibility_id=BackIcon
    sleep  2

loop and swipe on serach
    loop for category on serach
    log to console  search category 2
    swipe left for category

loop for category on serach
    ${cat_count}=    get matching xpath count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther
    log to console  ${cat_count}
    FOR    ${i}    IN RANGE    2    ${cat_count}+1
       ${cat_name}=   get text    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeCollectionView/XCUIElementTypeCell[${i}]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeStaticText
       ${check_category_in_list}=      run keyword and return status  list should contain value  ${cat_name_list}   ${cat_name}
       log to console  This is cate=${cat_name}
       log to console  This is cate list=${check_category_in_list}
       Run Keyword If    "${check_category_in_list}"=="False"     click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeCollectionView/XCUIElementTypeCell[${i}]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeStaticText
       sleep  5
#    \   Run Keyword If    "${check_category_in_list}"=="False"     element should be visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup
       Run Keyword If    "${check_category_in_list}"=="False"     append to list  ${cat_name_list}   ${cat_name}
    END

loop for last category on serach
    ${cat_count}=    get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout
#    :FOR    ${i}    IN RANGE    1    ${cat_count}+1
    :FOR    ${i}    IN RANGE    1    3

    \   ${cat_name}=   get text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[${i}]/android.widget.TextView
    \   ${check_category_in_list}=      run keyword and return status  list should contain value  ${cat_name_list}   ${cat_name}
    \   log to console  ${cat_name}
    \   log to console  ${check_category_in_list}
    \   Run Keyword If    "${check_category_in_list}"=="False"     click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[${i}]/android.widget.TextView
#    \   sleep  5
#    \   Run Keyword If    "${check_category_in_list}"=="False"     element should be visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup
    \   Run Keyword If    "${check_category_in_list}"=="False"     append to list  ${cat_name_list}   ${cat_name}

Add a new post with Places API
    tap on post button
    wait until element is visible  accessibility_id=Places
    click element  accessibility_id=Places
    search a post and post it


search a post and post it from second device
    sleep  3
    ${allowbuttonstatus}=  Run Keyword And Return Status    Element Should Be Visible   accessibility_id=Allow While Using App
#    log to console  ${present}

    Run Keyword If    "${allowbuttonstatus}"=="True"     click element  accessibility_id=Allow While Using App
    sleep  5
    input text  xpath=//XCUIElementTypeTextField    spider
    sleep  5
#    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeTable/XCUIElementTypeCell[1]
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeTable/XCUIElementTypeCell[1]
    sleep  3
    ${savedbuttonstatus}=  Run Keyword And Return Status    Element Should Be Visible   xpath=(//XCUIElementTypeStaticText[@name="Saved"])[1]
#    log to console  ${present}
    Run Keyword If    "${savedbuttonstatus}"=="True"     wait until element is visible  xpath=(//XCUIElementTypeStaticText[@name="Saved"])[1]
    Run Keyword If    "${savedbuttonstatus}"=="True"     click element  xpath=(//XCUIElementTypeStaticText[@name="Saved"])[1]
    Run Keyword If    "${savedbuttonstatus}"=="True"     wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="Remove"]
    Run Keyword If    "${savedbuttonstatus}"=="True"     click element  xpath=//XCUIElementTypeStaticText[@name="Remove"]
    wait until element is visible  xpath=(//XCUIElementTypeStaticText[@name="Save"])[1]
    click element  xpath=(//XCUIElementTypeStaticText[@name="Save"])[1]
    check boxes are load or not for API


search a post and post it
    sleep  3
    ${allowbuttonstatus}=  Run Keyword And Return Status    Element Should Be Visible   accessibility_id=Allow While Using App
#    log to console  ${present}

    Run Keyword If    "${allowbuttonstatus}"=="True"     click element  accessibility_id=Allow While Using App
    sleep  5
    input text  xpath=//XCUIElementTypeTextField    hello
    sleep  5
#    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeTable/XCUIElementTypeCell[1]
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeTable/XCUIElementTypeCell[1]
    sleep  3
    ${savedbuttonstatus}=  Run Keyword And Return Status    Element Should Be Visible   xpath=(//XCUIElementTypeStaticText[@name="Saved"])[1]
#    log to console  savedbuttonstatus==${savedbuttonstatus}=
    Run Keyword If    "${savedbuttonstatus}"=="True"     wait until element is visible  xpath=(//XCUIElementTypeStaticText[@name="Saved"])[1]
    Run Keyword If    "${savedbuttonstatus}"=="True"     click element  xpath=(//XCUIElementTypeStaticText[@name="Saved"])[1]
    Run Keyword If    "${savedbuttonstatus}"=="True"     wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="Remove"]
    Run Keyword If    "${savedbuttonstatus}"=="True"     click element  xpath=//XCUIElementTypeStaticText[@name="Remove"]
    wait until element is visible  xpath=(//XCUIElementTypeStaticText[@name="Save"])[1]
    click element  xpath=(//XCUIElementTypeStaticText[@name="Save"])[1]
    check boxes are load or not for API


Add a new post with Music API
    tap on post button
    wait until element is visible  accessibility_id=Music
    click element  accessibility_id=Music
    search a post and post it

Add a new post with Books API
    tap on post button
    wait until element is visible  accessibility_id=Books
    click element  accessibility_id=Books
    search a post and post it
    log to console  Book APi End

Add a new post with Video API
    tap on post button
    wait until element is visible  accessibility_id=Videos
    click element  accessibility_id=Videos
    search a post and post it
    log to console  Video APi End

Add a new post with Web API
    tap on post button
    wait until element is visible  accessibility_id=Web
    click element  accessibility_id=Web
    search a post and post it
    log to console  Web APi End

Add a new post with Movies/Series/TV Shows API
    tap on post button
    wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="Movies / Series / TV Shows "]
    click element  xpath=//XCUIElementTypeStaticText[@name="Movies / Series / TV Shows "]
    search a post and post it
    log to console  Movie APi End

tap on edit profile
    sleep  3
    click element  accessibility_id=Edit profile
Edit profile
    sleep  3
    clear text  accessibility_id=Name
    input text  accessibility_id=Name  Aakash
    clear text  accessibility_id=About Me
    input text  accessibility_id=About Me   This is about me
    sleep  2
    clear text  xpath=//XCUIElementTypeTextField[@name="Url"]
    input text  xpath=//XCUIElementTypeTextField[@name="Url"]   wwww.QAautomation.com
    click element  xpath=//XCUIElementTypeButton[@name="SAVE"]
    wait until element is visible  accessibility_id=OK  timeout=120 seconds
    click element  accessibility_id=OK


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
    sleep  3
    click element  accessibility_id=Notification settings
change the notification setting
    sleep  5
    ${before_like_notification}=    get element attribute  xpath=(//XCUIElementTypeSwitch[@name="Push Notifications"])[1]   value
    log to console  1st=${before_like_notification}
    click element  xpath=(//XCUIElementTypeSwitch[@name="Push Notifications"])[1]
    sleep   1
    ${before_comment_notification}=    get element attribute  xpath=(//XCUIElementTypeSwitch[@name="Push Notifications"])[2]     value
    log to console  2nd=${before_comment_notification}
    click element  xpath=(//XCUIElementTypeSwitch[@name="Push Notifications"])[2]
    sleep   1
    ${before_follow_notification}=    get element attribute  xpath=(//XCUIElementTypeSwitch[@name="Push Notifications"])[3]      value
    log to console  3rd=${before_follow_notification}
    click element  xpath=(//XCUIElementTypeSwitch[@name="Push Notifications"])[3]

    click element  xpath=//XCUIElementTypeButton[@name="SAVE"]
    wait until element is visible  accessibility_id=OK
    click element  accessibility_id=OK
    tap on notification setting
    sleep  2
    ${after_like_notification}=    get element attribute  xpath=(//XCUIElementTypeSwitch[@name="Push Notifications"])[1]   value
    log to console  1st=${after_like_notification}
    should not be equal as strings      ${before_like_notification}    ${after_like_notification}
    click element  xpath=(//XCUIElementTypeSwitch[@name="Push Notifications"])[1]
    ${after_comment_notification}=    get element attribute  xpath=(//XCUIElementTypeSwitch[@name="Push Notifications"])[2]     value
    log to console  2nd=${after_comment_notification}
    should not be equal as strings      ${before_comment_notification}    ${after_comment_notification}
    click element  xpath=(//XCUIElementTypeSwitch[@name="Push Notifications"])[2]
    ${after_follow_notification}=    get element attribute  xpath=(//XCUIElementTypeSwitch[@name="Push Notifications"])[3]      value
    log to console  3rd=${after_follow_notification}
    should not be equal as strings      ${before_follow_notification}    ${after_follow_notification}
    click element  xpath=(//XCUIElementTypeSwitch[@name="Push Notifications"])[3]
    click element  xpath=//XCUIElementTypeButton[@name="SAVE"]
    wait until element is visible  accessibility_id=OK
    click element  accessibility_id=OK
#    profile back button

tap on message setting
    wait until element is visible  accessibility_id=Message settings
    click element  accessibility_id=Message settings
change message setting
    sleep  3
    click element  accessibility_id=Everyone
    wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="Done"]
    click element  xpath=//XCUIElementTypeStaticText[@name="Done"]


tap on blocked users
    wait until element is visible  accessibility_id=Blocked users
    click element  accessibility_id=Blocked users
checked blocked users
#    wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="Unblock"]
    sleep  3
    click element  accessibility_id=Unblock
    sleep  2
    click element  accessibility_id=BackIcon

tap on recommendations
    sleep  5
    swipe up for setting
    wait until element is visible  accessibility_id=Recommendations
    click element  accessibility_id=Recommendations

input recommendation and tap on submit button
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTextView
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTextView    This is recommendation.
    click element  xpath=//XCUIElementTypeButton[@name="Submit"]

tap on privacy policy
    sleep  5
#    wait until element is visible  accessibility_id=Recommendations
    swipe up for setting
    wait until element is visible  accessibility_id=Privacy policy
    click element  accessibility_id=Privacy policy
check page is loaded or not
    sleep  15
    run keyword and continue on failure  page should contain text   Privacy Policy- Fayvo
    sleep  5
    click element  accessibility_id=CrossDarkGray

tap on private accout
#    wait until element is visible  accessibility_id=Recommendations
    sleep  5
    swipe up for setting
    wait until element is visible  xpath=//XCUIElementTypeSwitch[@name="Private account"]
    ${before_private_account_status}=   get element attribute  xpath=//XCUIElementTypeSwitch[@name="Private account"]       value
    log to console  ${before_private_account_status}
    click element  xpath=//XCUIElementTypeSwitch[@name="Private account"]
    sleep  3
    ${after_private_account_status}=   get element attribute  xpath=//XCUIElementTypeSwitch[@name="Private account"]       value
    log to console  ${after_private_account_status}
    should not be equal as strings  ${before_private_account_status}    ${after_private_account_status}
    click element  xpath=//XCUIElementTypeSwitch[@name="Private account"]

tap on app language
#    wait until element is visible  accessibility_id=Recommendations
    sleep  5
    swipe up for setting
    wait until element is visible  accessibility_id=App Language
    click element  accessibility_id=App Language

change the app language
    wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="Continue"]
    click element  xpath=//XCUIElementTypeStaticText[@name="Continue"]
    sleep  3
#    wait until element is visible  xpath=//XCUIElementTypeCell[@name="Language English"]
    click text  Language
    run keyword and continue on failure  wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="العربية"]
    run keyword and continue on failure  click element  xpath=//XCUIElementTypeStaticText[@name="العربية"]
    run keyword and continue on failure  launch application
    run keyword and continue on failure  wait until element is visible  accessibility_id=الملف الشخصي    timeout=160 seconds
    run keyword and continue on failure  click element  accessibility_id=الملف الشخصي
    run keyword and continue on failure  go to setting
    run keyword and continue on failure  wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable
    run keyword and continue on failure  swipe up for setting
    run keyword and continue on failure  wait until element is visible  accessibility_id=لغة التطبيق
    run keyword and continue on failure  click element  accessibility_id=لغة التطبيق
    run keyword and continue on failure  wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="استمرار"]
    run keyword and continue on failure  click element  xpath=//XCUIElementTypeStaticText[@name="استمرار"]
#    run keyword and continue on failure  wait until element is visible  xpath=//XCUIElementTypeButton[@name="Language, Arabic"]
    run keyword and continue on failure  sleep  3
    run keyword and continue on failure  click text  Language
    run keyword and continue on failure  wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="English"]
    run keyword and continue on failure  click element  xpath=//XCUIElementTypeStaticText[@name="English"]
    run keyword and continue on failure  launch application

tap on clear saerch history
#    wait until element is visible  accessibility_id=Recommendations
    sleep  3
    swipe up for setting
    wait until element is visible  accessibility_id=Clear search history
    click element  accessibility_id=Clear search history
    wait until element is visible  accessibility_id=Clear
    click element  accessibility_id=Clear

tap on profile image
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeImage
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeImage
tap on view picture and close it
    wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="View Picture"]
    click element  xpath=//XCUIElementTypeStaticText[@name="View Picture"]
    wait until element is visible  accessibility_id=closeButton
    click element  accessibility_id=closeButton
tap on change profile picture
    wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="Change Profile Picture"]
    click element  xpath=//XCUIElementTypeStaticText[@name="Change Profile Picture"]
    sleep  2
    camra permessions
    sleep  2
    run keyword and continue on failure  click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeButton
    run keyword and continue on failure  wait until element is visible  xpath=(//XCUIElementTypeButton[@name="galleryselected"])[1]
    run keyword and continue on failure  click element  xpath=(//XCUIElementTypeButton[@name="galleryselected"])[1]
    wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="Done"]
    click element  xpath=//XCUIElementTypeStaticText[@name="Done"]
tap on edit picture and edit picture
    wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="Edit Picture"]
    click element  xpath=//XCUIElementTypeStaticText[@name="Edit Picture"]
    sleep  3
    wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="Done"]      timeout=60 seconds
#    repeat keyword  2 times  click element  accessibility_id=arrow.counterclockwise
    click element  xpath=//XCUIElementTypeStaticText[@name="Done"]
Scan QR Code for other user
    sleep  5
    scroll down  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView
    sleep  2
    click text  Scan Code
    sleep  3
    ${ok_to_access_gallary}=    run keyword and return status  text should be visible  OK
    run keyword if  "${ok_to_access_gallary}" == "True"     click text  OK
    sleep  3
    click text  Scan from photos
    sleep  3
    click text  xpath=(//XCUIElementTypeButton[@name="galleryselected"])[1]
    sleep  5
    click element  accessibility_id=BackIcon
    sleep  3
    click element  accessibility_id=BackIcon





tap on save profile QR Code
    sleep  5
    scroll down  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView
    sleep  2
    wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="Save my Profile's QR Code"]
    click element  xpath=//XCUIElementTypeStaticText[@name="Save my Profile's QR Code"]
    sleep  5
    ${allow_save}=      run keyword and return status  element should be visible  accessibility_id=Allow Access to All Photos
    run keyword if  "${allow_save}" == "True"   click element  accessibility_id=Allow Access to All Photos
#    wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="QR code is saved successfully."]
#    element should be visible  xpath=//XCUIElementTypeStaticText[@name="QR code is saved successfully."]

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
    sleep   5
#    run keyword and continue on failure  wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    run keyword and continue on failure  input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField     AAA

view serached box
    sleep  5
    run keyword and continue on failure  click element  accessibility_id=AAA
    sleep  3
update box
    run keyword and continue on failure  wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeImage   timeout=10 seconds
    run keyword and continue on failure  click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeImage
#    run keyword and continue on failure  wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    sleep   5
    run keyword and continue on failure  clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    run keyword and continue on failure  input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeTextField      BBB
    run keyword and continue on failure  click element  xpath=//XCUIElementTypeStaticText[@name="Followers"]
    run keyword and continue on failure  click element  xpath=//XCUIElementTypeStaticText[@name="Save changes"]
#    run keyword and continue on failure  wait until element is visible  accessibility_id=OK     timeout=30 seconds
#    run keyword and continue on failure  click element  accessibility_id=OK
delete box
    sleep  5
#    run keyword and continue on failure  wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    run keyword and continue on failure  clear text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField
    run keyword and continue on failure  input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField     BBB
    sleep  5
    run keyword and continue on failure  click element  accessibility_id=BBB
    sleep  3
    run keyword and continue on failure  click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeImage
    run keyword and continue on failure  wait until element is visible  accessibility_id=delete
    run keyword and continue on failure  click element  accessibility_id=delete
    run keyword and continue on failure  wait until element is visible  accessibility_id=YES
    run keyword and continue on failure  click element  accessibility_id=YES
#    run keyword and continue on failure  wait until element is visible  accessibility_id=OK     timeout=30 seconds
#    run keyword and continue on failure  click element  accessibility_id=OK

search user in following
    sleep  2
    click element  id=iv_search
    input text  id=etSearch    s
    sleep  3
    ${number_of_following_searched}=    get matching xpath count  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.viewpager.widget.ViewPager/android.widget.RelativeLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout/android.widget.RelativeLayout[1]/android.widget.TextView[1]
    log to console  ${number_of_following_searched}
#    hide keyboard
    wait until element is visible  id=ivCross
    click element  id=ivCross

create box on profile
    run keyword and continue on failure  wait until element is visible  accessibility_id=ADD A BOX   timeout=10 seconds
    click element  accessibility_id=ADD A BOX
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeTextField      timeout=10 seconds
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeTextField     AAA
    wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="Private"]
    click element  xpath=//XCUIElementTypeStaticText[@name="Private"]
    wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="Create box"]
    click element  xpath=//XCUIElementTypeStaticText[@name="Create box"]
#    wait until element is visible  accessibility_id=OK
#    click element  accessibility_id=OK

tap on 1st user in following list
#    run keyword and continue on failure  wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeTable/XCUIElementTypeCell[1]/XCUIElementTypeImage
    sleep  6
#    run keyword and continue on failure  click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView[2]/XCUIElementTypeOther[1]/XCUIElementTypeTable/XCUIElementTypeCell[1]/XCUIElementTypeButton[2]
    run keyword and continue on failure  click text     maliksaab

up and down loadmore request
    sleep  2
    swipe_up_for_other_profile
    swipe_up_for_other_profile
    sleep  2
    repeat keyword  4 times     swipe_down_for_other_profile
save post from other user profile
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeImage
    sleep  5
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeImage
    ${ps}=  get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther[1]/XCUIElementTypeStaticText
    log to console  this is post name=${ps}
    set global variable  ${ps}
    click element   accessibility_id=ClosePostDetail


view box
    sleep  5
#    wait until element is visible   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeStaticText
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther
open box and bookmark the box
    wait until element is visible  accessibility_id=saveProfileUnselected
#    save post from other user profile
    sleep  3
#    ${x}=   run keyword and return status   element should be visible  accessibility_id=saveProfileUnselected
    click element  accessibility_id=saveProfileUnselected

#    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeStaticText     timeout=20 seconds
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeStaticText     timeout=20 seconds
#    ${boxText}=     get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeStaticText
    ${boxText}=     get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeStaticText
    log to console  ${boxText}
    ${boxString}=   encode string to bytes   ${boxText}     UTF-8
    set global variable  ${boxString}
    log to console  ${boxString}


    ${Music}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Preview
    log to console  this is tell us Music Post===${Music}
    Run Keyword If    "${Music}"=="True"   click element   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]

    ${IMDB}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Trailer
    log to console  this is tell us IMDB Post===${IMDB}
    Run Keyword If    "${IMDB}"=="True"   click element   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]

    ${Video}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Video
    log to console  this is tell us Video Post===${Video}
    Run Keyword If    "${Video}"=="True"   click element   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]
    Run Keyword If    "${Video}"=="False"   click element   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]
#    ${ElseAPI}=     run keyword and return status  element should be enabled  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]
#    log to console  this is tell us Else Post===${ElseAPI}
#    Run Keyword If    "${ElseAPI}"=="True"   click element   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]








#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]
    sleep  5
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[4]
    ${bookmarkbutton}=  run keyword and return status  element should be enabled   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeImage
    log to console  bookmarkbutton==${bookmarkbutton}=
    Run Keyword If    "${bookmarkbutton}"=="True"   click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeImage
    Run Keyword If    "${bookmarkbutton}"=="False"   click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeImage
    sleep  2
    click element  accessibility_id=ClosePostDetail
    sleep  2
    click element  accessibility_id=BackIcon
    sleep  2
    click element  accessibility_id=BackIcon
    sleep  2
    click element  accessibility_id=BackIcon




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

go to post and verify the post
#    ${postcounttitle}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeStaticText
    sleep  3
    ${postcounttitle}=   get text  xpath=//XCUIElementTypeCell[1]
    log to console  Post count title=====${postcounttitle}=======
    ${postresult}=  split string  ${postcounttitle}   Post
    log to console  this is count of Post=====${postresult}[0]=======
#    run keyword if  '${result}[0]'  >  '0'     verify name of post in bookmark collection
    ${numberofposts}=   get matching xpath count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell
    log to console  ${numberofposts}

    ${px}=  Remove String  ${postresult}[0]  ${SPACE}        ${EMPTY}
    log to console  this is again count of post=====${px}======
    should be equal  ${px}       ${numberofposts}


#verify name of post in bookmark collection
#    sleep  3
#    ${numberofposts}=   get matching xpath count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell
#    log to console  ${numberofposts}
#    ${post_name_list}    create list
#    :FOR    ${i}    IN RANGE    1    ${numberofposts}+1
#
#    \   ${pn}=  get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[${i}]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeStaticText
#    \   log to console  ${pn}
#    \   ${postString1}=   encode string to bytes   ${pn}     UTF-8
#    \   append to list  ${post_name_list}    ${postString1}
#    list should contain value  ${post_name_list}     ${ps}
#    log to console  ${post_name_list}

go to saved box and get count before
    sleep  2
    click element  accessibility_id=BookMarkIcon
    sleep  3
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeStaticText
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeStaticText
    sleep  4
    ${boxcounttitle}=   get text  xpath=//XCUIElementTypeCell[2]
    log to console  box count title=====${boxcounttitle}====
    ${postcounttitle}=   get text  xpath=//XCUIElementTypeCell[1]
    log to console  box count title=====${postcounttitle}====


    log to console  text for Bookmark post==${postcounttitle}==
    log to console  text for Bookmark box==${boxcounttitle}==
    ${numberofposts}=     split string  ${postcounttitle}   ${EMPTY}    -1
    ${numberofboxes}=     split string  ${boxcounttitle}   ${EMPTY}    -1
    log to console  text for Bookmark post after spllit==${numberofposts}[0]==
    log to console  text for Bookmark box after spllit==${numberofboxes}[0]==
    set global variable  ${numberofposts}
    set global variable  ${numberofboxes}
    sleep  3
    click element  accessibility_id=BackIcon

go to saved box and verifiy the box name
    sleep  2
    click element  accessibility_id=BookMarkIcon

#    run keyword and continue on failure  go to post and verify the post
    sleep  3
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeStaticText
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeStaticText
    sleep  5
#    ${numberofboxes}=   get matching xpath count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell
#    ${numberofboxes}=   get matching xpath count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell
#    log to console  this collection of boxes=====${numberofboxes}========


    ${boxcounttitle}=   get text  xpath=//XCUIElementTypeCell[2]
    log to console  box count title=====${boxcounttitle}====
    ${postcounttitle}=   get text  xpath=//XCUIElementTypeCell[1]
    log to console  box count title=====${postcounttitle}====


    log to console  text for Bookmark post==${postcounttitle}==
    log to console  text for Bookmark box==${boxcounttitle}==
    ${Anumberofposts}=     split string  ${postcounttitle}   ${EMPTY}    -1
    ${Anumberofboxes}=     split string  ${boxcounttitle}   ${EMPTY}    -1
    log to console  text for Bookmark post after spllit==${Anumberofposts}[0]==
    log to console  text for Bookmark box after spllit==${Anumberofboxes}[0]==
    run keyword and continue on failure  should not be equal  ${Anumberofposts}[0]      ${numberofposts}[0]
    run keyword and continue on failure  should not be equal  ${Anumberofboxes}[0]      ${numberofboxes}[0]
    sleep  3
    click element  accessibility_id=BackIcon
tap on messages
    sleep  3
#    hide keyboard
    wait until element is visible  accessibility_id=Chat    timeout=10 seconds
    click element  accessibility_id=Chat

search user in messages
    sleep  5
    click element  accessibility_id=new chat
    wait until element is visible  accessibility_id=Search
    click element  accessibility_id=Search
    sleep  3
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTextField
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTextField     maliko
    sleep  2
#    hide keyboard
tap on user which you want
    sleep  5
    wait until element is visible  accessibility_id=maliko
    ${status}=      run keyword and return status  run keyword and continue on failure  click element  accessibility_id=maliko
    Run Keyword If    "${status}"=="False"     go back

send the message
    sleep  5
#    click text  xpath=//*[contains(@label,"Message...") or contains(@value, "Message...")]
#    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextView
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextView       Hi
    click element  xpath=//XCUIElementTypeStaticText[@name="Send"]
    sleep  2
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextView       Hi
    click element  xpath=//XCUIElementTypeStaticText[@name="Send"]
    sleep  3
match the message text inside and outside
    sleep  5
    ${numberofmessages}=    get matching xpath count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell
    log to console  ${numberofmessages}
    set global variable  ${numberofmessages}
    ${insideText}=   get text    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[${numberofmessages}]/XCUIElementTypeTextView/XCUIElementTypeTextView
    log to console  This is messages=${insideText}
    click element  accessibility_id=BackIcon
    sleep  3
    ${outsideText}=   get text    xpath=(//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]/XCUIElementTypeStaticText)[2]
    log to console  Out message=${outsideText}
#
    run keyword and continue on failure  should be equal as strings  ${insideText}   ${outsideText}

delete single message
#    go back
    sleep  2
    click element  accessibility_id=maliko
    sleep  3
#    long press  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[${numberofmessages}]/XCUIElementTypeTextView/XCUIElementTypeTextView
##    long press  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[21]
#    wait until element is visible  accessibility_id=Delete
#    click element  accessibility_id=Delete

delete conversation
    sleep  3
    Swipe left for delete conversation
    wait until element is visible  accessibility_id=Delete
    click element  accessibility_id=Delete

share profile in message
#    tap on messages
#    sleep  3
#    click element  accessibility_id=maliko
    sleep  3
    click element  xpath=(//XCUIElementTypeStaticText[@name="@maliko"])[1]
    sleep  5
#    click element  accessibility_id=OptionsIcon
#
#    wait until element is visible  accessibility_id=Share
#    click element  accessibility_id=Share
#    log to console  after_get
#    sleep  5
#    click element  accessibility_id=@maliko
#    click element  xpath=//android.view.ViewGroup/android.widget.TextView[@text='maliko']
#    go back

share box in profile
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]
    wait until element is visible  accessibility_id=Shareblue
    click element  accessibility_id=Shareblue
    sleep  5
    click element  accessibility_id=@maliko
    click element  accessibility_id=BackIcon
    sleep  2
    click element  accessibility_id=BackIcon
    sleep  2
    click element  accessibility_id=BackIcon



open applictaion on other devices and go to messages
#    ${appium2}=     open application  ${appiumserver1}   AutomationName=${UiAutomation1} systemPort=${systemPort1}      deviceName=${deviceName1}  udid=${udid1}    platformName=${platformname1}       platformVersion=${platformVersion1}   appPackage=${appPackage1}    appActivity=${appActivity1}     noReset=${noReset}  adbExecTimeout=${adbExecTimeout1}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout1}   newCommandTimeout=${newCommandTimeout}
    ${appium2}=     open application  ${appiumserver1}    udid=${udid1}      deviceName=${deviceName1}    platformName=${platformname1}       platformVersion=${platformVersion1}     noReset=${noReset}  adbExecTimeout=${adbExecTimeout}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}    newCommandTimeout=${newCommandTimeout}       app=${app}
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
#    hide keyboard
tap on user which you want on ther device
    sleep  5
    click element  accessibility_id=${result1}[1]

switch to appium 1
    switch application  ${appium1}
    open the fayvo application
switch to appium 2
    switch application  ${appium2}
switch to appium 3
    switch application  ${appium3}
    open the setting application
switch to appium 4
    switch application  ${appium4}

click on push notification
    sleep  5
    click element  xpath=(//XCUIElementTypeButton[@name="NotificationCell"])[1]
    sleep  1
    click element  xpath=(//XCUIElementTypeButton[@name="notification-action-button"])[1]
##    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.ScrollView/android.widget.FrameLayout[1]
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
##    \   ${not_text}=    get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout[1]/android.widget.FrameLayout/android.widget.ScrollView/android.widget.FrameLayout
##    \   ${not_text}=    get text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout[1]/android.widget.FrameLayout/android.widget.ScrollView/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.widget.LinearLayout
#
##
##    ${not_text1}=    get text  id=android:id/title
##    log to console  This is xpath =${not_text1}
##    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout[1]/android.widget.FrameLayout/android.widget.ScrollView/android.widget.FrameLayout[1]/android.view.View
##    click element  xpath=///android.widget.FrameLayout/android.view.ViewGroup/android.widget.TextView[@text='Fayvo']
#
##Run Keyword If    "${present}"=="True"
tap on profile from messages
    sleep  3
    click element  id=title_tv
tap on notification icon
    click element  accessibility_id=Notification
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
    wait until element is visible  accessibility_id=maliko    timeout=40 seconds
    click element  accessibility_id=maliko
    sleep  5
    click element  accessibility_id=LikeCommentTip
    sleep  2
    click element  accessibility_id=ClosePostDetail

in application push notification for comment

    wait until element is visible  accessibility_id=maliko    timeout=40 seconds
    click element  accessibility_id=maliko
    sleep  5
    click element  accessibility_id=LikeCommentTip
    sleep  2
    click element  accessibility_id=ClosePostDetail

in application push notification for messages

    wait until element is visible  accessibility_id=maliko    timeout=40 seconds
    click element  accessibility_id=maliko
    sleep  5
    click element  accessibility_id=BackIcon

in application push notification for mention
    wait until element is visible  accessibility_id=maliko    timeout=40 seconds
    click element  accessibility_id=maliko
    sleep  5
    click element  accessibility_id=LikeCommentTip
    sleep  2
    click element  accessibility_id=ClosePostDetail











## this is new code added
#    check boxes are load or not for API
#    run keyword and continue on failure  wait until element is visible  xpath=//android.widget.TextView[@text='Create Box']    timeout=10 seconds
#    ${boxes_data}=  Run Keyword And Return Status      run keyword and continue on failure  wait until element is visible  xpath=//android.widget.TextView[@text='Create Box']    timeout=10 seconds
#    log to console  This is API boxes Data=${boxes_data}
#
##    sleep  3
##    ${boxes_data}=  Run Keyword And Return Status    wait until element is visible   xpath=//android.widget.TextView[@text='Create Box']    timeout=10 seconds
##    log to console  This is API boxes Data=${boxes_data}
#    Run Keyword If    "${boxes_data}"=="False"      wipe Down for load boxes data for API
#    Run Keyword If    "${boxes_data}"=="False"      click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.FrameLayout/android.widget.TextView[@text='Save']
#    ${boxes_data}=  Run Keyword And Return Status    wait until element is visible   xpath=//android.widget.TextView[@text='Create Box']    timeout=10 seconds
#    Run Keyword If    "${boxes_data}"=="False"      wipe Down for load boxes data for API
#    Run Keyword If    "${boxes_data}"=="False"      click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.FrameLayout/android.widget.TextView[@text='Save']
#    ${boxes_data}=  Run Keyword And Return Status    wait until element is visible   xpath=//android.widget.TextView[@text='Create Box']    timeout=10 seconds
#    Run Keyword If    "${boxes_data}"=="False"      wipe Down for load boxes data for API
#    Run Keyword If    "${boxes_data}"=="False"      go back
#    Run Keyword If    "${boxes_data}"=="True"      create and select box on quick save

create and select box on quick save
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

# this is new code end

#    check boxes are load or not for API
    ${after_save_count}=   get text  id=tv_post_fayved
    log to console  ${after_save_count}
    run keyword and continue on failure  run keyword and continue on failure  should be equal as integers  ${after_save_count}    ${before_save_count}
    ${Quick_save_post_name}=   get text  id=tv_search_title
    log to console  ${Quick_save_post_name}
    set global variable  ${Quick_save_post_name}

friends category login card check
    tap on friends button
    click element   xpath=(//XCUIElementTypeStaticText[@name="Follow"])[1]
    sleep  2
    run keyword and continue on failure  Element Should Be Visible   xpath=//XCUIElementTypeStaticText[@name="Log in"]
    click element  xpath=//XCUIElementTypeStaticText[@name="Cancel"]




login card verify on invite people
    tap on invite people
#    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[3]/XCUIElementTypeButton[2]
    sleep  8
#    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[5]/XCUIElementTypeButton[3]
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[4]/XCUIElementTypeButton
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[4]/XCUIElementTypeButton[3]
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[4]/XCUIElementTypeButton
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[4]/XCUIElementTypeButton[3]
    sleep  5
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[5]/XCUIElementTypeButton[3]
    wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="FOLLOW"]
    click element  xpath=//XCUIElementTypeStaticText[@name="FOLLOW"]
    sleep  2
    run keyword and continue on failure  Element Should Be Visible   xpath=//XCUIElementTypeStaticText[@name="Log in"]
    click element  xpath=//XCUIElementTypeStaticText[@name="Cancel"]
    click element  accessibility_id=BackIcon
    sleep  2
    click element  accessibility_id=BackIcon
#    go back








login card verify for rport a post on for you
    tap on for you category
    wait until element is visible   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]
    long press   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]
    wait until element is visible  accessibility_id=Report
    click element  accessibility_id=Report
    wait until element is visible  accessibility_id=It's spam
    click element  accessibility_id=It's spam
    sleep  2
    run keyword and continue on failure  Element Should Be Visible   xpath=//XCUIElementTypeStaticText[@name="Log in"]
    click element  xpath=//XCUIElementTypeStaticText[@name="Cancel"]

login card verify for other user profile
    wait until element is visible  id=tvSearch
    click element  id=tvSearch
    sleep  2
    input text  id=edtSearch    akash111
    sleep  3
#    hide keyboard
    run keyword and continue on failure  wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.LinearLayout/android.widget.TextView
    run keyword and continue on failure  click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.TextView[@text='akash111']
    open post detail and swip

profile register button verify
    go to profile
    sleep  2
    run keyword and continue on failure  Element Should Be Visible   xpath=//XCUIElementTypeStaticText[@name="Register Now"]

Notification page register button verify
    tap on notification icon
    sleep  2
    run keyword and continue on failure  Element Should Be Visible   xpath=//XCUIElementTypeStaticText[@name="Register Now"]
messages page register button verify
    tap on messages
    sleep  2
    run keyword and continue on failure  Element Should Be Visible   xpath=//XCUIElementTypeStaticText[@name="Register Now"]

############################## NEw Guest Mode ###############################

view user profile on guest mode
    sleep  2
    tap on home button
    wait until element is visible  accessibility_id=Search
    click element  accessibility_id=Search
    sleep  2
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField    aakash
    sleep  2
#    hide keyboard
    run keyword and continue on failure  wait until element is visible  accessibility_id=aakash
    run keyword and continue on failure  click element  accessibility_id=aakash
    sleep  5

view user box on guest mode
    sleep  3
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther
    sleep  3

view user post on guest mode
    sleep  3
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[11]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeImage
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[5]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeImage
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]
    sleep  3
post tag count on guest mode
    sleep  3
    ${tagcountouter}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeStaticText
    ${splittag}=  split string  ${tagcountouter}    ${EMPTY}
    log to console  splittag===${splittag}=
    click element  accessibility_id=TinyTagIcon
    sleep  3
#    ${taglist}=     get matching xpath count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[12]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell
    ${taglist}=     get matching xpath count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell
    log to console  taglist===${taglist}=
    sleep  3
    run keyword and continue on failure  should be equal as numbers  ${taglist}    ${splittag}[0]
#    go back
    click element  accessibility_id=LikeCommentTip
without internet Long press share via internal
    sleep  3

    ${Music}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Preview
    log to console  this is tell us Music Post===${Music}
    Run Keyword If    "${Music}"=="True"   long press   xpath=/XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]

    ${IMDB}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Trailer
    log to console  this is tell us IMDB Post===${IMDB}
    Run Keyword If    "${IMDB}"=="True"   long press   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]

    ${Video}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Video
    log to console  this is tell us Video Post===${Video}
    Run Keyword If    "${Video}"=="True"   long press   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]
    Run Keyword If    "${Video}"=="False"   other part
    sleep  3
    click text  Send via Direct Message
    error banner
    sleep  3
    Swipe_down_for_friends_category
longpress send message
    sleep  2
#    long press  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther[1]
    click element  accessibility_id=PostOptions
    sleep  2
    click text  Send via Direct Message
     sleep  2
    click text  Cancel
    sleep  2

like user post on guest mode
    sleep  2
#    long press  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther[1]
    click element  accessibility_id=PostOptions
    sleep  2
#    click text  Like
    click element  xpath=//XCUIElementTypeStaticText[@name="Like"]
    sleep  2
    click text  Cancel
    sleep  2

comment user post on guest mode
    sleep  2
#    long press  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther[1]
    click element  accessibility_id=PostOptions
    sleep  2
    click text  Comment
    sleep  2
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeTextView    ${Comment}
    click element  accessibility_id=ok icn
    sleep  3
    click text  Cancel
    sleep  2
    click element  accessibility_id=LikeCommentTip
    sleep  2
    click element  accessibility_id=ClosePostDetail
    sleep  2
    click element  accessibility_id=BackIcon
    sleep  2

user report on guest mode
    sleep  2
    click element  accessibility_id=OptionsIcon
    sleep  2
    click text  Report
    sleep  2
    click text  Cancel

user block on guest mode
    sleep  2
    click element  accessibility_id=OptionsIcon
    sleep  2
    click text  Block
    sleep  2
    click text  Cancel
    sleep  2
    click element  accessibility_id=BackIcon
    sleep  2
    click element  accessibility_id=BackIcon
    sleep  3

############################## NEw Guest Mode ###############################



scrolling test case
    go to profile
    go to setting
    sleep  3
    scroll down  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[2]
#    execute script      window.scrollTo(0,1500)
    sleep  2



press volume button for test case
#    sleep  5
#    press keycode  volume_up
    FOR    ${i}    IN RANGE    @${invite_people_list}
        log to console  ${i}
        log to console  ${i}

       click element  accessibility_id=${following_name}
       sleep  3
       click element  xpath=//XCUIElementTypeButton[@name="FOLLOWING"]
       sleep  3
       click element  xpath=//XCUIElementTypeStaticText[@name="Unfollow"]
       sleep  3
       click element  accessibility_id=BackIcon
       sleep  3
    END

expression are showing
    tap on home button
    tap on friends button
    sleep  5


    run keywords  long press  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[3]     duration=5000     AND      log to console  hahhahahah
#    swipe  35   368     99      284     duration=5000
#    long press  xpath=(//XCUIElementTypeButton[@name="0"])[1]       duration=5 seconds
#    log to console  done long press
#    click element  xpath=//XCUIElementTypeStaticText[@name="Like"]

    page should contain element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther

guest mode expression verification
    sleep  5
    long press  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[3]       duration=5000
    tap  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[3]     count=1
    sleep  2
    click text  Cancel
    sleep  3
expression save and count should be increase and undo save
    sleep  3
    ${befor_exp_count}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[3]/XCUIElementTypeButton
    log to console  this is expression count before===${befor_exp_count}
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[3]
    sleep  2
    ${after_exp_count}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[3]/XCUIElementTypeButton
    log to console  this is expression count after===${after_exp_count}
    should not be equal as numbers  ${befor_exp_count}     ${after_exp_count}

expression save without internet and count should be increase
    sleep  3
    ${befor_exp_count}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[3]/XCUIElementTypeButton
    log to console  this is expression count before===${befor_exp_count}
    log to console  manually off the internet
    sleep  20
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[3]
    sleep  2
    scroll up  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]
    log to console  manually on the internet
    sleep  20
    scroll up  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]
    sleep  3
    ${after_exp_count}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[3]/XCUIElementTypeButton
    log to console  this is expression count after===${after_exp_count}
    should not be equal as numbers  ${befor_exp_count}     ${after_exp_count}
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[3]


Double tab like post
    sleep  3
    ${befor_exp_count}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[3]/XCUIElementTypeButton
    log to console  this is expression count before===${befor_exp_count}
    tap  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]     count=2
    sleep  2
    ${after_exp_count}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[3]/XCUIElementTypeButton
    log to console  this is expression count after===${after_exp_count}
#    should not be equal as numbers  ${befor_exp_count}     ${after_exp_count}

verify expression in list
    sleep  3
#    ${like_status}=     run keyword and return status  element should be visible  accessibility_id=Love
#    log to console  like status==${like_status}
    ${expression}=  get element attribute  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[3]/XCUIElementTypeOther[2]/XCUIElementTypeImage[1]      name
    log to console  This is expression===${expression}?==
    ${expressionString}=   encode string to bytes   ${expression}     UTF-8
#    set global variable  ${boxString}
    log to console  This is expression string===${expressionString}?==

    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[1]
    sleep  3
    click element  accessibility_id=You
    sleep  5
#    ${emoji}=   get element attribute  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]/XCUIElementTypeImage     label
#    log to console  emojie=====${emoji}===
#    ${expressionString}=   encode string to bytes   ${emoji}     UTF-8
##    set global variable  ${boxString}
#    log to console  This is expression string===${expressionString}?==
    run keyword and continue on failure  Run Keyword If    "${expressionString}"=="Like"     page should contain element  xpath=//XCUIElementTypeImage[@name="Like"]
    run keyword and continue on failure  Run Keyword If    "${expressionString}"=="Love"     page should contain element  xpath=//XCUIElementTypeImage[@name="Love"]
    run keyword and continue on failure  Run Keyword If    "${expressionString}"=="Haha"     page should contain element  xpath=//XCUIElementTypeImage[@name="Haha"]
    run keyword and continue on failure  Run Keyword If    "${expressionString}"=="Wow"     page should contain element  xpath=//XCUIElementTypeImage[@name="Wow"]
    run keyword and continue on failure  Run Keyword If    "${expressionString}"=="Sad"     page should contain element  xpath=//XCUIElementTypeImage[@name="Sad"]
    run keyword and continue on failure  Run Keyword If    "${expressionString}"=="Angry"     page should contain element  xpath=//XCUIElementTypeImage[@name="Angry"]

    click element  accessibility_id=LikeCommentTip

    sleep  2
    click element  accessibility_id=ClosePostDetail



undo the expression
    sleep  3
    ${befor_exp_count}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[3]/XCUIElementTypeButton
    log to console  this is expression count before===${befor_exp_count}

    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[3]
    sleep  2
    ${after_exp_count}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[3]/XCUIElementTypeButton
    log to console  this is expression count after===${after_exp_count}
    should not be equal as numbers  ${befor_exp_count}     ${after_exp_count}

expression made by user from anywhere in the application
    sleep  3
#    ${befor_exp_count}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[3]/XCUIElementTypeButton
#    log to console  this is expression count before===${befor_exp_count}
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[3]
    click element  xpath=(//XCUIElementTypeButton[@name="@maliksaab"])[1]
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther
    sleep  3
#    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther[1]/XCUIElementTypeImage
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther[1]/XCUIElementTypeImage
    sleep  8
#    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeImage
#    long press  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeImage        duration=5000
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeImage[1]
    click element  accessibility_id=ClosePostDetail


    sleep  5
#    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther[3]/XCUIElementTypeButton
    ${expr_count}=  get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther[3]/XCUIElementTypeButton
    log to console  Like Count in Box=${expr_count}==

    wait until element is visible  accessibility_id=BackIcon
    click element  accessibility_id=BackIcon

    wait until element is visible  accessibility_id=BackIcon
    click element  accessibility_id=BackIcon
    sleep  5
    ${after_exp_count}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[3]/XCUIElementTypeButton
    log to console  this is expression count after===${after_exp_count}

change expression
    sleep  3
    ${expression}=  get element attribute  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[3]/XCUIElementTypeOther[2]/XCUIElementTypeImage[1]      name
    log to console  This is expression before===${expression}?==

    long press  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[3]     duration=5000
    log to console  change now
    sleep  10

    ${expression}=  get element attribute  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[3]/XCUIElementTypeOther[2]/XCUIElementTypeImage[1]      name
    log to console  This is expression after===${expression}?==
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeOther[3]


#################################### Fayvo Moments ################################
Discard story check
    tap on home button
    tap on friends button
    sleep  3
    Swipe right for camera post
#    click text  Add Status
#    long press  accessibility_id=Your Story
#    long press  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]
    sleep  3
    page should contain text  Create
    click text  Create
    sleep  3
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextView     This is Status.
    click element  accessibility_id=ok icn
    sleep  5
#    click text  accessibility_id=tick
#    sleep  3
    click text  accessibility_id=EmojiIcon
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeCollectionView/XCUIElementTypeCell[3]/XCUIElementTypeOther
    click element  accessibility_id=BackIconWhite
    click text  Cancel
    click element  accessibility_id=BackIconWhite
    click text  Discard
    sleep  2
    click element  accessibility_id=WhiteCrossIcon
    sleep  2
    click element  accessibility_id=WhiteCrossIcon


create text story
    sleep  3
    Swipe right for camera post
#    click text  Add Status
#    long press  accessibility_id=Your Story
#    long press  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]
    sleep  3
    page should contain text  Create
    click text  Create
    sleep  3
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextView     This is Status.
    click element  accessibility_id=ok icn
#    sleep  2
#    click text  accessibility_id=tick
    sleep  3
    click text  accessibility_id=EmojiIcon
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeCollectionView/XCUIElementTypeCell[3]/XCUIElementTypeOther
    click text  Share

create media story
    sleep  3
    Swipe right for camera post
#    click text  Add Status
#    click text  Your Story
#    long press  accessibility_id=Your Story
#    long press  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]
#    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeImage[2]
    sleep  3
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeImage[1]
#    page should contain text  Capture
#    click text  Capture
#    sleep  2
#    camra permessions for story
#    click element  accessibility_id=flash icn
#    click element  accessibility_id=swith icn
#    click element  accessibility_id=swith icn
    wait until element is visible  accessibility_id=cameraCircle
    click element  accessibility_id=cameraCircle
    sleep  5
#    edit a photo post
    click text  Share

create media video story
    sleep  3
    Swipe right for camera post
#    long press  accessibility_id=Your Story
#    long press  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]
#    click text  Your Story
#    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeImage[2]
    sleep  3
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeImage[1]
#    page should contain text  Capture
#    click text  Capture
#    sleep  2
#    camra permessions for story
    wait until element is visible  accessibility_id=cameraCircle
    long press  accessibility_id=cameraCircle       duration= 10000
    sleep  5
#    edit a photo post
    click text  Share

create media multi story
    sleep  3
    Swipe right for camera post
#    long press  accessibility_id=Your Story
#    long press  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]
#    sleep  5
#    page should contain text  Capture
#    click text  Capture
#    sleep  2
#    gallary permissions for story
    sleep  3
#    click text  Gallery
    scroll down  accessibility_id=Gallery
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeButton
#    wait until element is visible  xpath=(//XCUIElementTypeButton[@name="galleryselected"])[1]
#    background app  5
    click element  xpath=(//XCUIElementTypeButton[@name="galleryselected"])[1]
#    click element  xpath=(//XCUIElementTypeButton[@name="galleryselected"])[2]
#    click element  xpath=(//XCUIElementTypeButton[@name="galleryselected"])[3]
#    click element  xpath=//XCUIElementTypeButton[@name="Next"]
    sleep  2
#    edit a photo post
#    swipe left for category
#    edit a photo post
#    swipe left for category
#    edit a photo post
    wait until element is visible  name=Share   timeout=10 Seconds
    click text  Share

create checkin story
    sleep  3
    Swipe right for camera post
#    click text  Add Status
    sleep  3
#    page should contain text  Checkin
    click text  Checkin
    sleep  2
    ${location_access}=     run keyword and return status  page should contain text  Turn on Your Location
    Run Keyword If    "${location_access}"=="True"     click element  accessibility_id=Allow While Using App
    sleep  3
#    page should contain text  You are at
#    click text  Search here
#    sleep  2
#    input text  xpath=//android.widget.EditText[@text='Enter box Name']     Lahore
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]
    wait until element is visible  name=Share   timeout=30 Seconds
    click text  Share

number of stories
#    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeImage   timeout=10 seconds
    sleep  2
    ${total_stories}=      get matching xpath count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeImage
    log to console  number of stories====${total_stories}===
    set global variable  ${total_stories}

seen and unseen story
    sleep  5
    ${x}=   run keyword and return status  element should be enabled  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther
    log to console  Yes or not=${x}


count the viewers
#    click text  Your Story
#    click text  Views
#    sleep  3
#    ${viewer_count_outer}=    get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[1]/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeStaticText
#    log to console  count of viewer Outer====${viewer_count_outer}===
#    ${viewer_count_innner}=    get matching xpath count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell
#    log to console  count of viewer inner====${viewer_count_innner}===
#    run keyword and continue on failure  should be equal as strings  ${viewer_count_outer}      ${viewer_count_innner}
#    click element  accessibility_id=CrossDarkGray
    sleep  2
#    scroll up  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]


delete my story

    sleep  3
    click text  Your Story
#    scroll down  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeScrollView
    click element  xpath=//XCUIElementTypeButton[@name="SnapMenuIcon"]
#    sleep  2
    click text  Delete
#    sleep  2
#    page should contain text  Home
    click element  accessibility_id=WhiteCrossIcon
#    scroll up  xpath=//XCUIElementTypeStaticText[@name="Your Story"]


report story background app
    log to console  total_stories=====${total_stories}==
#    sleep  3
    Run Keyword If    "${total_stories}">"1"     click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]
    Run Keyword If    "${total_stories}">"1"     sleep  2
    Run Keyword If    "${total_stories}">"1"     click element  xpath=//XCUIElementTypeButton[@name="SnapMenuIcon"]
#    Run Keyword If    "${total_stories}">"1"     sleep  2
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeStaticText
#    sleep  2
#    Swipe up for story
#    wait until element is visible  xpath=//XCUIElementTypeButton[@name="SnapMenuIcon"]


    Run Keyword If    "${total_stories}">"1"     background app  seconds= 5
    Run Keyword If    "${total_stories}">"1"     click text  Report
    Run Keyword If    "${total_stories}">"1"     wait until element is visible  accessibility_id=WhiteCrossIcon     timeout=10 Seconds
#    sleep  1
    Run Keyword If    "${total_stories}">"1"     click element  accessibility_id=WhiteCrossIcon


profile story verification
    sleep  3
    ${profilestatusbutton}=     run keyword and return status  element should be visible  accessibility_id=AddStoryLargeIcon
    Run Keyword If    "${profilestatusbutton}"=="True"     click element  accessibility_id=AddStoryLargeIcon
    Run Keyword If    "${profilestatusbutton}"=="True"     sleep  3
    Run Keyword If    "${profilestatusbutton}"=="True"     click element  accessibility_id=WhiteCrossIcon
    Run Keyword If    "${profilestatusbutton}"=="False"     click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeImage
    Run Keyword If    "${profilestatusbutton}"=="False"     sleep  1
    Run Keyword If    "${profilestatusbutton}"=="False"     click element  accessibility_id=WhiteCrossIcon
click Arrow down button for API story
    sleep  3
    click element  accessibility_id=downArrowWhite
Music API story
    sleep  3
    Swipe right for camera post
    sleep  3
    click Arrow down button for API story
    click text  Music
    sleep  2
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField    hello
    sleep  2
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeTable/XCUIElementTypeCell[1]
    sleep  3
    click element  xpath=(//XCUIElementTypeStaticText[@name="Add"])[1]
    sleep  3
#    run keyword and continue on failure  element should be visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeImage[2]
    wait until element is visible  name=Share   timeout=30 Seconds
    click text  Share


Books API story
    sleep  3
    Swipe right for camera post
    sleep  3
    click Arrow down button for API story
    click text  Books
    sleep  2
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField    hello
    sleep  2
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeTable/XCUIElementTypeCell[1]
    sleep  3
    click element  xpath=(//XCUIElementTypeStaticText[@name="Add"])[1]
    sleep  3
    wait until element is visible  name=Share   timeout=30 Seconds
    click text  Share


videos API story
    sleep  3
    Swipe right for camera post
    sleep  3
    click Arrow down button for API story
    click text  Videos
    sleep  2
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField    hello
    sleep  2
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeTable/XCUIElementTypeCell[1]
    sleep  3
    click element  xpath=(//XCUIElementTypeStaticText[@name="Add"])[1]
    sleep  3
    wait until element is visible  name=Share   timeout=30 Seconds
    click text  Share

web API story
    sleep  3
    Swipe right for camera post
    sleep  3
    click Arrow down button for API story
    click text  Web
    sleep  2
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField    hello
    sleep  2
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeTable/XCUIElementTypeCell[1]
    sleep  3
    click element  xpath=(//XCUIElementTypeStaticText[@name="Add"])[1]
    sleep  3
    wait until element is visible  name=Share   timeout=30 Seconds
    click text  Share

Games API story
    sleep  3
    Swipe right for camera post
    sleep  3
    click Arrow down button for API story
    click text  Games
    sleep  2
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField    hello
    sleep  2
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeTable/XCUIElementTypeCell[1]
    sleep  3
    click element  xpath=(//XCUIElementTypeStaticText[@name="Add"])[1]
    sleep  3
    wait until element is visible  name=Share   timeout=30 Seconds
    click text  Share

Movie API story
    sleep  3
    Swipe right for camera post
    sleep  3
    click Arrow down button for API story
    click text  Movie / TV
    sleep  2
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField    hello
    sleep  2
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeTable/XCUIElementTypeCell[1]
    sleep  3
    click element  xpath=(//XCUIElementTypeStaticText[@name="Add"])[1]
    sleep  3
    wait until element is visible  name=Share   timeout=30 Seconds
    click text  Share

count sub stories

    sleep  3
    click text  Your Story
    sleep  3
    ${count_sub_stories}=      get matching xpath count    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther
    log to console  Sub Stories Count====${count_sub_stories}===
#    click element  accessibility_id=Close stories to return to feed
    wait until element is visible  accessibility_id=WhiteCrossIcon      timeout=10 Seconds
    click element  accessibility_id=WhiteCrossIcon

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
    run keyword and continue on failure  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeStaticText      Your Story


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
    sleep  30s
    click text  Your Story
long press for story stay
    long press  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeImage    duration=30000
tap on retry story option button
    click element  accessibility_id=reloadWhite

tap on delete story option
    click element  accessibility_id=delete
loading status on storty
    page should contain text  Uploading
Verify Uploading Failed
    page should contain text  Uploading Failed
#    log to console  that's

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
    log to console  "Manual turn off the internet"
#    sleep  10
#    click element  accessibility_id=Close stories to return to feed

open story without internet for cached story
    sleep  3
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[3]/XCUIElementTypeOther/XCUIElementTypeStaticText
#    sleep  3
#    element should be disabled  accessibility_id=refresh big
#    sleep  3
    click element  accessibility_id=WhiteCrossIcon

open story without internet
    sleep  3
#    click element  xpath=//XCUIElementTypeCollectionView[@name="main-feed"]/XCUIElementTypeCell[4]
    click text  maliksaab
    sleep  3
#    element should be visible  accessibility_id=refresh big
    log to console  "Manual turn on the internet"
    sleep  10
#    click element  accessibility_id=refresh big
    wait until element is visible  accessibility_id=WhiteCrossIcon
    click element  accessibility_id=WhiteCrossIcon
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
#    hide keyboard
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




open instagram
    sleep  2
    background app  -1
    Swipe Down for mobile home
    sleep  3
    input text  xpath=//XCUIElementTypeTextField[@name="SpotlightSearchField"]      Instagram
    sleep  2
    click element  xpath=//XCUIElementTypeIcon[@name="Instagram"]
    sleep  8






##################################### Around You #######################################

verify the arround you
    sleep  10
    text should be visible  Around you

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
#    sleep  5
    ${next_btn_status}=     run keyword and return status  page should contain text  Next
    log to console  next_btn_status====${next_btn_status}=
    Run Keyword If    "${next_btn_status}"=="True"     verify the next button
    Run Keyword If    "${next_btn_status}"=="True"     verify the I am in the zone, Lets rock button
    Run Keyword If    "${next_btn_status}"=="True"     verify the Lets Share Favs button
    diclimer popup

verify the next button
    ${next_btn_status}=     run keyword and return status  page should contain text  Next
    log to console  next_btn_status
    Run Keyword If    "${next_btn_status}"=="True"     click text  Next
    Run Keyword If    "${next_btn_status}"=="False"     tap on skip button

verify the I am in the zone, Lets rock button
    ${zone_btn_status}=     run keyword and return status  page should contain text  I am in the zone, Lets rock
    log to console  zone_btn_status
    Run Keyword If    "${zone_btn_status}"=="True"     click text  I am in the zone, Lets rock
    Run Keyword If    "${zone_btn_status}"=="False"     tap on skip button

verify the Lets Share Favs button
    ${share_btn_status}=     run keyword and return status  page should contain text  Let’s Share Favs
    log to console  share_btn_status
    Run Keyword If    "${share_btn_status}"=="True"     click text  Let’s Share Favs
    Run Keyword If    "${share_btn_status}"=="False"     tap on skip button

diclimer popup
    sleep  3
    ${share_btn_status}=     run keyword and return status  page should contain text  Join the chat
    log to console  diclimer popup====${share_btn_status}=
    run keyword and continue on failure     Run Keyword If    "${share_btn_status}"=="True"     click text  Don't show again
    run keyword and continue on failure     Run Keyword If    "${share_btn_status}"=="True"     click text  Join the chat


tap on skip button
    sleep  2
    click text  Skip
group user count external
    sleep  3
    ${external_group_user_count}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton[1]
    log to console  external_group_user_count====${external_group_user_count}=
    ${result_external_group_user_count}=  split string  ${external_group_user_count}   ${EMPTY}    -1
    log to console  result_external_group_user_count==${result_external_group_user_count}[0]==
#    ${result} =    Split String    ${WHITE SPACES}    ${EMPTY}    -1
    set global variable  ${result_external_group_user_count}

tap on group image
    sleep  2
    click element  accessibility_id=Info
tap on group option
    sleep  2
    click element  accessibility_id=MoreVertical
tap on image for group detail
    sleep  5
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeImage
verify group detail screen
    sleep  2
    run keyword and continue on failure  page should contain text  Description
    click element  accessibility_id=BackIcon

before join count
    sleep  3
    ${usercount}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeStaticText[2]
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
    ${user_count}=  get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton[2]
     log to console  external_group_user_count====${user_count}=
    ${result_external_group_user_count}=  split string  ${user_count}   ${EMPTY}    -1
    log to console  result_external_group_user_count==${result_external_group_user_count}==
    run keyword and continue on failure  should be equal as strings  ${result2}     ${result_external_group_user_count}[0]
group user count
    sleep  2
    ${user_count}=  get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton[2]
    log to console  user_count==${user_count}=
    log to console  external_group_user_count====${user_count}=
    ${result_external_group_user_count}=  split string  ${user_count}   ${EMPTY}    -1
    log to console  result_external_group_user_count==${result_external_group_user_count}[0]==
#    ${result} =    Split String    ${WHITE SPACES}    ${EMPTY}    -1
    set global variable  ${result_external_group_user_count}

tap on option button
    sleep  2
    click element  accessibility_id=MoreVertical

verify option sheet
    sleep  2
    click text  Cancel
tap on leave group
    sleep  2
    click text  Leave Group
tap on report group
    sleep  2
    click text  Report Group

report reason sheet
    sleep  2
    page should contain text  Fraud or scam
select any option
    click text  Fraud or scam
tap on ok button
    sleep  3
    click text  OK

leave group banner
    page should contain text  successfully leave groupe.
report group banner
    page should contain text  successfully reported groupe.
lon press on message
    sleep  2
#    click element  accessibility_id=ChatDownArrow
#    log to console  do it now
#    sleep  10
#    long press  name=Hi
    long press  xpath=//XCUIElementTypeTextView[@name="Hi"]
tap on delete button
    sleep  2
    click text  Delete
delete message banner
    page should contain text  successfully message delete groupe.
tap on other zone
    wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="Other Zones"]       timeout=10s
    click text  Other Zones
count other zones
    ${other_zones_count}=   get matching xpath count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell
#    log to console  other_zones_count===${other_zones_count}===
scroll the zones
    scroll down     xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable
    scroll up       xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable
    click element   accessibility_id=BackIcon

open the user profile
    sleep  5
#    ${no_message}=      get matching xpath count  xpath=//XCUIElementTypeCell/XCUIElementTypeImage
#    log to console  no_message===${no_message}=
#    ${exactno}=     evaluate  ${no_message}-2
#    log to console  exactno===${exactno}
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell/XCUIElementTypeImage
    sleep  5
    click element  accessibility_id=BackIcon
tap on turn on your location
    click text  Turn on your location

setting permissions
    sleep  5
    click text  Location
    click text  Ask Next Time
location permission allow
    sleep  3
    click text  Allow While Using App

##################################### Around You #######################################


############################################# Save box from post Test Cases #####################################
create box for save post
    create box on profile
    run keyword and continue on failure  wait until element is visible  accessibility_id=ADD A BOX   timeout=10 seconds
    click element  accessibility_id=ADD A BOX
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeTextField      timeout=10 seconds
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeTextField     SavePostBox
    wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="Private"]
    click element  xpath=//XCUIElementTypeStaticText[@name="Private"]
    wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="Create box"]
    click element  xpath=//XCUIElementTypeStaticText[@name="Create box"]
    wait until element is visible  accessibility_id=OK
    click element  accessibility_id=OK
view serached box save post from box
    sleep  5
    run keyword and continue on failure  click element  accessibility_id=SavePostBox
    sleep  3
search box for save post
    sleep   5
    run keyword and continue on failure  input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField     SavePostBox

tap on add post
    sleep  3
    ${save_button}=  Run Keyword And Return Status    element should be visible  xpath=//XCUIElementTypeButton[@name="Add Posts"]
    log to console  save_button==${save_button}=
    Run Keyword If    "${save_button}"=="True"     click element  xpath=//XCUIElementTypeButton[@name="Add Posts"]
    Run Keyword If    "${save_button}"=="False"     click element  accessibility_id=AddPost

Save music post from box
    wait until element is visible  accessibility_id=Music
    click element  accessibility_id=Music
#    search a post and post it
#    click element  xpath=//android.widget.TextView[@text='Music']
    save post from box search a post and post it
Save movies post from box
    wait until element is visible  accessibility_id=Books
    click element  accessibility_id=Books
    save post from box search a post and post it


save post from box search a post and post it

    sleep  3
#    ${present1}=  Run Keyword And Return Status    Element Should Be Visible   accessibility_id=Allow While Using App
#    log to console  ${present}

#    Run Keyword If    "${present1}"=="True"     click element  accessibility_id=Allow While Using App
#    sleep  5
    input text  xpath=//XCUIElementTypeTextField    hello
    sleep  5
#    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeTable/XCUIElementTypeCell[1]
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeTable/XCUIElementTypeCell[1]
    sleep  3
#    ${present}=  Run Keyword And Return Status    Element Should Be Visible   xpath=(//XCUIElementTypeStaticText[@name="Saved"])[1]
#    log to console  ${present}
#    Run Keyword If    "${present}"=="True"     wait until element is visible  xpath=(//XCUIElementTypeStaticText[@name="Saved"])[1]
#    Run Keyword If    "${present}"=="True"     click element  xpath=(//XCUIElementTypeStaticText[@name="Saved"])[1]
#    Run Keyword If    "${present}"=="True"     wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="Remove"]
#    Run Keyword If    "${present}"=="True"     click element  xpath=//XCUIElementTypeStaticText[@name="Remove"]
#    wait until element is visible  xpath=(//XCUIElementTypeStaticText[@name="Save"])[1]
#    click element  xpath=(//XCUIElementTypeStaticText[@name="Save"])[1]
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeTable/XCUIElementTypeCell[1]
    ${saved_status}=  Run Keyword And Return Status    text should be visible  Saved
    log to console  saved_status====${saved_status}=
    Run Keyword If    "${saved_status}"=="True"     click text  Saved
    Run Keyword If    "${saved_status}"=="True"     sleep  2
    Run Keyword If    "${saved_status}"=="True"     click text  Remove
    Run Keyword If    "${saved_status}"=="True"     sleep  15
    Run Keyword If    "${saved_status}"=="True"     click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeTable/XCUIElementTypeCell[1]
    save post from box check boxes are load or not for API

save post from box check boxes are load or not for API
    sleep  5
    wait until element is visible  xpath=//XCUIElementTypeButton[@name="Proceed"]    timeout=10 seconds

    sleep  3
    click element  xpath=//XCUIElementTypeButton[@name="Proceed"]
    sleep  5
    click element  xpath=(//XCUIElementTypeButton[@name="Save"])[2]
    sleep  3
    run keyword and continue on failure  element should be visible  accessibility_id=AddPost

############################################# Save box from post Test Cases #####################################
############################################# Profile story Test Cases #####################################

tap on profile details from setting
    sleep  3
    click element  accessibility_id=Profile details

############################################# Profile story Test Cases #####################################

networking test
    set network connection status  2


############################################# Fetch Post Test Cases #####################################
Verify the post name at feed
    sleep  4
    run keyword and continue on failure  text should be visible   ${Postname}[0]
#    run keyword and continue on failure  text should be visible  Ed Sheeran - Bad Habits [Official Video]


get the post time at feed
    sleep  5
    ${Music}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Preview
#    log to console  this is tell us Music Post===${Music}
    Run Keyword If    "${Music}"=="True"   music post time

    ${IMDB}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Trailer
#    log to console  this is tell us IMDB Post===${IMDB}
    Run Keyword If    "${IMDB}"=="True"   IMDB post time

    ${Video}=     run keyword and return status  element should contain text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeButton/XCUIElementTypeStaticText       Play Video
#    log to console  this is tell us Video Post===${Video}
    Run Keyword If    "${Video}"=="True"   video post time
    Run Keyword If    "${Video}"=="False"   check else post

#    ${ElseAPI}=     run keyword and return status  element should be enabled  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]
#    log to console  this is tell us Else Post===${ElseAPI}
#    Run Keyword If    "${ElseAPI}"=="True"   Else post time


music post time
    sleep  3
    ${musicposttime}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[4]/XCUIElementTypeStaticText
#    log to console  musicposttime==${musicposttime}=
check else post
    sleep  3
    ${elsepost}=    run keyword and return status  element should be visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeStaticText
#    log to console  elsepost==${elsepost}=
    Run Keyword If    "${elsepost}"=="True"   Else post time
    Run Keyword If    "${elsepost}"=="False"   Else API check
Else post time
    sleep  3
    ${elseposttime}=    get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeStaticText
#    log to console  elseposttime==${elseposttime}=

Else API check
    sleep  5
    ${elseAPIpost}=    run keyword and return status  element should be visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
#    log to console  elseAPIpost==${elseAPIpost}=
    Run Keyword If    "${elseAPIpost}"=="True"   Else API Time
Else API Time
    sleep  3
    ${elseAPIposttime}=    get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
#    log to console  elseAPIposttime==${elseAPIposttime}=


IMDB post time
    sleep  3
    ${IMDBposttime}=    get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
#    log to console  IMDBposttime==${IMDBposttime}=

video post time
    sleep  3
    ${videoposttime}=    get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeStaticText
#    log to console  videoposttime==${videoposttime}=
create the post from second device for post time
    sleep  3
    tap on post button
    wait until element is visible  xpath=//XCUIElementTypeStaticText[@name="Movies / Series / TV Shows "]
    click element  xpath=//XCUIElementTypeStaticText[@name="Movies / Series / TV Shows "]
    search a post and post it from second device
    log to console  Movie APi End



get total post count
    sleep  10
#    ${postcountatfeed}=     get matching xpath count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[1]/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell
#    ${postcountatfeed}=     get count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[1]/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeCollectionView
    ${postcountatfeed}=     get matching xpath count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell
    log to console  postcountatfeed===${postcountatfeed}

get all the categry list
    ${catlistatfeed}    create list
#    scrol category element
    ${matchcatxpath}=   get matching xpath count    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[1]/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell
    FOR    ${i}    IN RANGE    1    ${matchcatxpath}+1
       ${singlecatname}=   get text    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[1]/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[${i}]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeStaticText
       log to console  singlecatname==${singlecatname}=
       append to list  ${catlistatfeed}     ${singlecatname}



       ${check_category_in_list}=      run keyword and return status  list should contain value  ${catlistatfeed}   ${singlecatname}
       log to console  ${singlecatname}
       log to console  ${check_category_in_list}

       Run Keyword If    "${check_category_in_list}"=="False"     swipe down for home
       sleep  5
#    \   Run Keyword If    "${check_category_in_list}"=="False"     element should be visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.ImageView
       Run Keyword If    "${check_category_in_list}"=="False"     append to list  ${cat_name_list}   ${cat_name}





    END
    log to console  ${catlistatfeed}
    swipe left for category


#    ${singlecatname}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[1]/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeStaticText
#    log to console  ${singlecatname}

################################################### USer story and suggestion user list #################################
tap for each userstory and suggestion user

    ${userstorysuggestionuser_name_list}    create list
    ${storyuserlist}    create list
    set global variable  ${userstorysuggestionuser_name_list}
    set global variable  ${storyuserlist}
    sleep  3
    repeat keyword  15 times    loop and swipe for userstory suggestion user
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
    ${cat_count}=    get matching xpath count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell
    log to console  cat_count==${cat_count}=
    FOR    ${i}    IN RANGE    2    ${cat_count}
       ${storyusername}=   run keyword and return status  element should be visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[${i}]/XCUIElementTypeOther/XCUIElementTypeOther
#       log to console  storyusername===${storyusername}
       ${cat_name}=   get text    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[${i}]/XCUIElementTypeOther/XCUIElementTypeStaticText
       ${check_category_in_list}=      run keyword and return status  list should contain value  ${userstorysuggestionuser_name_list}   ${cat_name}
#       log to console  this is catname=${cat_name}
#       log to console  this is status of listname have=${check_category_in_list}
       Run Keyword If    "${check_category_in_list}"=="False"     append to list  ${userstorysuggestionuser_name_list}   ${cat_name}
       Run Keyword If    "${storyusername}"=="True"     append to list  ${storyuserlist}   ${cat_name}
    END
loop for last suggestion user story
    ${cat_count}=    get matching xpath count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell
    FOR    ${i}    IN RANGE    2    ${cat_count}+1
       ${storyusername}=   run keyword and return status  element should be visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[${i}]/XCUIElementTypeOther/XCUIElementTypeOther
       ${cat_name}=   get text    xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[${i}]/XCUIElementTypeOther/XCUIElementTypeStaticText
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
    sleep  5
    element should be visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeCollectionView

For You Banner verify without internet
    sleep  3
    page should not contain element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeCollectionView

get the count of suggestion users
    sleep  3
    ${suggestionusercounforyou}=    get matching xpath count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell
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
    loop2 for section name
    log to console  loop3
    log to console  foryousectionslist==${foryousectionslist}=
loop for section name
    sleep  5
    ${suggestionusercounforyou}=    get matching xpath count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell
    log to console  suggestionusercounforyou===${suggestionusercounforyou}=
    FOR    ${i}    IN RANGE    1    ${suggestionusercounforyou}+1
       sleep  1
       ${sectionname}=     get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[${i}]/XCUIElementTypeOther/XCUIElementTypeStaticText
       log to console  sectionname==${sectionname}==
       ${checksectionnameinlist}=   run keyword and return status  list should contain value  ${foryousectionslist}     ${sectionname}
       Run Keyword If    "${checksectionnameinlist}"=="False"     append to list  ${foryousectionslist}      ${sectionname}
#       Run Keyword If    "${checksectionnameinlist}"=="False"     xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[${i}]/XCUIElementTypeOther/XCUIElementTypeButton/XCUIElementTypeStaticText
#       Run Keyword If    "${checksectionnameinlist}"=="False"     sleep  2
#       Run Keyword If    "${checksectionnameinlist}"=="False"     Profile back button
       Run Keyword If    "${checksectionnameinlist}"=="False"     sleep  2
    END
#    Swipe_down_for_You_category for slow
    swipe by percent  50    80      50      40      1000
    sleep  2
    ${cancel}=  run keyword and return status  text should be visible  Cancel
    Run Keyword If    "${cancel}"=="True"       click text  Cancel

loop2 for section name
    ${suggestionusercounforyou}=    get matching xpath count  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell
    log to console  suggestionusercounforyou===${suggestionusercounforyou}=
    FOR    ${i}    IN RANGE    2    ${suggestionusercounforyou}+1
       set global variable  ${i}
       sleep  2
       ${sectionname}=     get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[${i}]/XCUIElementTypeOther/XCUIElementTypeStaticText
       log to console  sectionname==${sectionname}==
       ${checksectionnameinlist}=   run keyword and return status  list should contain value  ${foryousectionslist}     ${sectionname}
       Run Keyword If    "${checksectionnameinlist}"=="False"     append to list  ${foryousectionslist}      ${sectionname}
       Run Keyword If    "${checksectionnameinlist}"=="False"     click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[${i}]/XCUIElementTypeOther/XCUIElementTypeButton
       Run Keyword If    "${checksectionnameinlist}"=="False"     sleep  2
       Run Keyword If    "${checksectionnameinlist}"=="False"     Profile back button
       Run Keyword If    "${sectionname}" == "${moviesseries}"    Swipe left for for you section
       Run Keyword If    "${sectionname}" == "${moviesseries}"    Play trailer from movies
       Run Keyword If    "${sectionname}" == "${Music}"    Swipe left for for you section
       Run Keyword If    "${sectionname}" == "${Music}"    Play music from music section
       Run Keyword If    "${sectionname}" == "${Photosandvideos}"    Swipe left for for you section
       Run Keyword If    "${sectionname}" == "${Photosandvideos}"    video and photoes from Photos $ video section
       Run Keyword If    "${sectionname}" == "${Photosandvideos}"    Refer Now check
       Run Keyword If    "${sectionname}" == "${photoandvideo}"    exit for loop
    END

Play trailer from movies
    sleep  2
    ${playtrailerbutton}=   run keyword and return status  text should be visible  Play Trailer
    Run Keyword If    "${playtrailerbutton}" == "True"    click text  Play Trailer

    ${moviename}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeStaticText[1]
    log to console  moviename===${moviename}==
    Run Keyword If    "${playtrailerbutton}" == "True"    run keyword and continue on failure  wait until element is visible  accessibility_id=Full screen       timeout= 60 seconds
    Run Keyword If    "${playtrailerbutton}" == "True"    log to console  ${moviename} movie's Trailer is Playing
    Run Keyword If    "${playtrailerbutton}" == "True"    click element  accessibility_id=crossbtn30


Play music from music section
    swipe by percent  50    80      50      40
    sleep  5
    ${playmusicbutton}=   run keyword and return status  text should be visible  Play Preview
    log to console  playmusicbutton===${playmusicbutton}==
    Run Keyword If    "${playmusicbutton}" == "True"    click text  Play Preview

    ${musicname}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther[2]/XCUIElementTypeStaticText[1]
    log to console  musicname===${musicname}==
    Run Keyword If    "${playmusicbutton}" == "True"    run keyword and continue on failure  wait until element is visible  accessibility_id=MiniPauseVideo       timeout= 60 seconds
    Run Keyword If    "${playmusicbutton}" == "True"    log to console  ${musicname} music is Playing
    Run Keyword If    "${playmusicbutton}" == "True"    sleep  5
video and photoes from Photos $ video section
    swipe by percent  50    80      50      40
    sleep  5
#    ${videobutton}=   run keyword and return status  element should be visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeImage[@name="MediaPostPlayIcon"]
#    log to console  videobutton===${videobutton}==
    log to console  open post
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeImage
#    Run Keyword If    "${videobutton}" == "True"    sleep  5
#    ${musicname}=   get text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther[2]/XCUIElementTypeStaticText[1]
#    log to console  musicname===${musicname}==
#    Run Keyword If    "${videobutton}" == "True"    run keyword and continue on failure  wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeSlider       timeout= 60 seconds
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeImage
    click element  accessibility_id=ClosePostDetail
    log to console  close post

Refer Now check
    click text  Refer Now
    sleep  2
    profile back button

for you longpress report with guest mode
    close all applications
    open the fayvo application
    sleep  3
    swipe by percent  50    80      50      40
    long press  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]
    sleep   2
    click text  Report
    sleep  2
    wait until element is visible  accessibility_id=It's spam
    click element  accessibility_id=It's spam

for you longpress save with guest mode

    sleep  2
    long press  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]
    sleep   2
    click text  Save
    sleep  2
    text should be visible  Cancel
    click text  Cancel
#    sleep  1
#    click text  Cancel

for you longpress save with Auth mode
    tap on home button
    sleep  2
    long press  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]
    sleep   2
    click text  Save
    sleep  2
    create and select new box for for you post save



