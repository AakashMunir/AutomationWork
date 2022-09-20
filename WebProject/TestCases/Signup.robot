*** Settings ***
#Library     SeleniumLibrary
Library    SeleniumLibrary



*** Test Cases ***
SignupTest
#       open browser    http://automationpractice.com     chrome
#        create webdriver    chrome      executable_path="/Users/aakash/Desktop/chromedriver.exec"
        create webdriver    chrome  executable_path="../chromedriver"
#        open browser    http://automationpractice.com     gc    #options=executable_path="/Users/aakash/Desktop/chromedriver"
        open browser    "http://automationpractice.com"    Chrome
        set selenium speed  3
        click link  link:Sign in
        input text  id:email_create     khadija.zulfiqar@ilsainteractive.com
        click button    id:SubmitCreate
        #radio
        input text  id:customer_firstname       Khadija
#        input text  id:customer_lastname        Malik
#        input text  id:passwd       123456Kza@
#        #DOB
#        input text  id:firstname    Khadijaa
#        input text  id:lastname     Malikk
#        input text  id:company      ILSA INTERACTIVE
#        input text  id:address1     455 G3 Johar town Lahore Pakistan
#        input text  id:city         LAHORE
#        #State
#        input text  id:postcode     54000
#        #Country
#        #Additonal Info
#        input text  id:phone        03024891884
#        input text  id:phone_mobile 03100443762
#        input text  id:alias    456 G2 Modle town Lahore Pakistan
        close browser