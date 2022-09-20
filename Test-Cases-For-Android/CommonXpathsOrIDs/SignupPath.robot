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
Resource  ../ExcelPath/SmokeTestCaseExcelPath.robot
#Resource  ../ExcelPath/SignupPath.robot


*** Variables ***
${usernmaeupdate}   akash111
${usernameupdate1}  malikaakash
${appiumServer}     http://localhost:4723/wd/hub
${UiAutomation}     UiAutomator2
#${udid}       192.168.100.135:5555
#${udid}       184.254.9.10:5555
#${udid}       184.254.9.31:5555
#${udid}       184.254.9.6:5555
#${udid}       184.254.9.46:5555
#${udid}       0515343632304338
#${udid}       988a9b48463048514630
#${udid}       5SYPSWVCE6EY6PGQ
#${udid}       0515343632304338
#${udid}       1215fc8579951404
#${udid}       emulator-5554
#${udid}       184.254.9.3:5559
${udid}       R9HR80DCZCK
#${udid}       R58M83FE18Y
${deviceName}       Galaxy A03
${platformName}     Android
${platformVersion}  11
${noReset}          True
${adbExecTimeout}     900000
${uiautomator2ServerInstallTimeout}     100000
${app}              /Users/aakash/Desktop/NewFayvo/com.fayvo.staging_V874_VN-2.3.3_2021-11-25.apk
${appPackage}       com.fayvo.staging
#${appPackage}       com.fayvo
${appActivity}      com.fayvo.ui.main.MainActivity
#${file_path}        ./ExcelFiles/TestCaseForSmoke.xlsx
${file_path}        ./ExcelFiles/demo.xlsx
${Comment}          Nice
${before}           Follow
${before1}           FOLLOW
${systemPort}       8100
${newCommandTimeout}    0
${reset}        true



${appiumServer1}     http://localhost:4724/wd/hub
${UiAutomation1}     UiAutomator2
#${udid1}             172.169.87.12:5559
${udid1}             184.254.9.3:5559
#${udid1}             1215fc8579951404
#${udid1}             emulator-5554
${deviceName1}       Galaxy S9 Plus
${platformName1}     Android
${platformVersion1}  11
#${appPackage1}       com.fayvo.staging
${appPackage1}       com.fayvo
${appActivity1}      com.fayvo.ui.main.MainActivity
${app1}              E:/Fayvo/V577.apk
${adbExecTimeout1}     900000
${uiautomator2ServerInstallTimeout1}     100000
${newCommandTimeout}    0

${systemPort1}       8290
#Resource  ../ExcelFiles/demo.xlsx     sheet_name=Sheet1

#${New_email}    uex89503@eoopy.com
#${phone_number}     3209292922
#${new_username}     QasimAli
#${Password}     malik0313
${day}      02
${month}     11
${year}     1994


*** Keywords ***
Open the Fayvo application
#    open application  ${appiumserver}   AutomationName=${UiAutomation}  systemPort=${systemPort}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}   appPackage=${appPackage}    appActivity=${appActivity}  adbExecTimeout=${adbExecTimeout}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}    newCommandTimeout=${newCommandTimeout}
#    ${appium1}=     open application  ${appiumserver}   AutomationName=${UiAutomation}      udid=${udid}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}   appPackage=${appPackage}    appActivity=${appActivity}     noReset=${noReset}  adbExecTimeout=${adbExecTimeout}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}    newCommandTimeout=${newCommandTimeout}     app=${app}
    ${appium1}=     open application  ${appiumserver}   AutomationName=${UiAutomation}      udid=${udid}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}   appPackage=${appPackage}    appActivity=${appActivity}     noReset=${noReset}  adbExecTimeout=${adbExecTimeout}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}    newCommandTimeout=${newCommandTimeout}
#    ${appium1}=     open application  ${appiumserver}   AutomationName=${UiAutomation}  systemPort=${systemPort}    udid=${udid}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}   appPackage=${appPackage}    appActivity=${appActivity}     noReset=${noReset}  adbExecTimeout=${adbExecTimeout}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}
#    ${appium1}=     open application  ${appiumserver}   AutomationName=${UiAutomation}  systemPort=${systemPort}    udid=${udid}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}   app=${app}  adbExecTimeout=${adbExecTimeout}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}    newCommandTimeout=${newCommandTimeout}
#    ${appium1}=     open application  ${appiumserver}   AutomationName=${UiAutomation}  systemPort=${systemPort}    udid=${udid}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}   app=${app}  adbExecTimeout=${adbExecTimeout}    uiautomator2ServerInstallTimeout=${uiautomator2ServerInstallTimeout}
    set global variable  ${appium1}
#    open excel document  ${file_path}   sheet_name=Sheet1


go to profile
    wait until element is visible  id=ivProfile     timeout=60 seconds
    click element  id=ivProfile
go to setting
    wait until element is visible  id=iv_settings   timeout=60 seconds
    click element  id=iv_settings

ok button
    wait until element is visible  id=android:id/button1    timeout=60 seconds
    click element  id=android:id/button1

tap on register button
    click element  id=tv_register

Tap on email button
    click element  id=ivEmail
    sleep   3
#    wait until element is visible  id=com.google.android.gms:id/cancel
    ${present1}=  Run Keyword And Return Status    Element Should Be Visible   id=com.google.android.gms:id/cancel
    Run Keyword If    "${present1}"=="True"    click element  id=com.google.android.gms:id/cancel


tap on login and logout button
    log to console  run===proceed
    wait until element is visible  id=button
    click element  id=button
    log to console  rund===proceed

date of birth and gender
    wait until element is visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText    timeout=20 seconds
    input text  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.EditText   ${day}
    input text  xpath=hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText    ${month}
    input text  xpath=hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout[3]/android.view.ViewGroup/android.widget.EditText    ${year}
    click element  id=rb_male
    tap on login and logout button
    sleep  5
    click text  Skip

Category choice
    log to console  chose category
    sleep  3
    click text  Style
    click text  Books
    click text  Sports
    click text  Find People
    log to console  do the follow now
    sleep  5
    ${present}=  Run Keyword And Return Status    text should be visible  Follow
    log to console  ${present}
    run keyword and continue on failure     Run Keyword If    "${present}"=="True"    click text  Follow
    run keyword and continue on failure     Run Keyword If    "${present}"=="False"    click text  Skip
    sleep  8