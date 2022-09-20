*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${Login URL}  https://staging.reserval.com/en
${browser}      gc


*** Test Cases ***
login test case
#    create webdriver  firefox     executable_path="C:\Users\ASAD\AppData\Local\Programs\Python\Python39\Scripts\geckodriver.exe"
    open browser        ${Login URL}      ${browser}
    maximize browser window
    sleep  2
    click element  xpath://header/div[1]/div[1]/div[1]/div[1]/div[3]/a[1]
    wait until element is visible  xpath://header/div[@id='LoginModel']/div[1]
    element should be enabled  xpath://header/div[@id='LoginModel']/div[1]
    click element  xpath:/html/body/div[1]/div/div[1]/div[2]/header/div[2]/div/div/div[2]/div[1]/div[1]/div/div/div/form/div[1]/div/div/div/div/div[2]
    click element  xpath:/html/body/div[1]/div/div[1]/div[2]/header/div[2]/div/div/div[2]/div[1]/div[1]/div/div/div/form/div[1]/div/div/div/ul/li[165]/span[1]

    sleep   2


    wait until element is visible  xpath://header/div[@id='LoginModel']/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/form[1]/div[1]/div[1]/div[1]/input[1]
    input text  xpath://header/div[@id='LoginModel']/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/form[1]/div[1]/div[1]/div[1]/input[1]      3346441929
    wait until element is visible  xpath:/html[1]/body[1]/div[1]/div[1]/div[1]/div[2]/header[1]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/form[1]/div[2]/div[1]/input[1]
    input text  xpath:/html[1]/body[1]/div[1]/div[1]/div[1]/div[2]/header[1]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/form[1]/div[2]/div[1]/input[1]     Asad123@

    click element  id:submitLoginForm