from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import time
from selenium.webdriver.chrome.options import Options
# import json

# chrome_options = Options()
chromeOptions = Options()
my_list = {"excludeSwitches": "enable-automation"}
# chromeOptions.add_experimental_option('pref', {'excludeSwitches': 'enable-automation'})
chromeOptions.add_experimental_option("prefs", my_list)
# chromeOptions.add_argument("--start-maximized")
# # chromeOptions.add_argument("--disable-infobars")
# # chromeOptions.add_experimental_option("prefs", {"useAutomationExtension": "False"})
# chromeOptions.add_argument("enable-automation")
# chromeOptions.add_experimental_option("prefs", {"debuggerAddress": "184.254.10.41"})
driver = webdriver.Chrome('/Users/aakash/Desktop/chromedriver')
# chrome_options.add_argument("user-data-dir=C:\Users\ILSA\AppData\Local\Google\Chrome\User Data")
# driver = webdriver.Chrome(chrome_options=chrome_options)
# driver = webdriver.Chrome(driver, chrome_options=chrome_options)
# chrome_options.setExperimentalOptions("excludeSwitches", "enable-automation");
# chrome_options.add_argument("--start-maximized")
# chrome_options.add_experimental_option("excludeSwitches", "enable-automation")
# driver = webdriver.Chrome(chrome_options=chrome_options)
# driver = webdriver.Chrome(executable_path= "C:\Program Files (x86)\Google\Chrome\Application\Browser95\chromedriver_win32\chromedriver.exe", chrome_options=chrome_options)
driver.get("http://automationpractice.com/index.php")
time.sleep(5)
driver.find_elements_by_link_text(B"Sign in").click()
time.sleep(3)
driver.find_element_by_id("email_create").send_keys("khadija.zulfiqar@ilsainteractive.com")
# driver.close()
print(driver.title);



