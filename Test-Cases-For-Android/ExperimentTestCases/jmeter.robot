*** Settings ***

Library           JMeterLib


*** Variables ***
${IMAGE_DIR}      /Users/applepc/Desktop/Appium Clone/appium-test-cases/Test-Cases-For-Android/ExperimentTestCases/03.jmx
${Jout_DIR}      /Users/applepc/Desktop/Appium Clone/appium-test-cases/Test-Cases-For-Android/experiment/jmeter/output1.jtl
${Jmeter_DIR}      /Users/applepc/Desktop/apache-jmeter-5.4.3/bin/jmeter.sh


*** Test Cases ***
Windows Notpad Hellow World
    Open Windows Start Menu
#    Open Notepad
#    Input In Notepad
#    Quit Without Save

*** Keywords ***
Add Needed Image Path
#    Run Jmeter Analyse Jtl Convert To Html    ${IMAGE_DIR}
    runJmeterAnalyseJtlConvertToHtml  ${image_dir}      ${Jmeter_DIR}
Open Windows Start Menu
#    Click    windows_start_menu.png
    runJmeterAnalyseJtlConvertToHtml  ${image_dir}      ${Jmeter_DIR}       ${jout_dir}

Open Notepad
    Input Text    search_input.png    notepad
    Click    notepad.png
    Double Click    notepad_title.png

Input In Notepad
    Input Text    notepad_workspace.png    Hello World
    Text Should Exist    Hello World

Quit Without Save
    Click    close.png
    Click    dont_save.png