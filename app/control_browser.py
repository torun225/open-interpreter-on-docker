# Import modules
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options

# Option
options = Options()
options.add_argument('--no-sandbox')
options.add_argument('--disable-dev-shm-usage')

# Start Browser
driver = webdriver.Chrome(service=Service('/usr/bin/chromedriver'), options=options)

# Control Browser
# ex) access to https://www.google.com/ and search 'OpenAI'
driver.get('https://www.google.com/')
search_box = driver.find_element(By.NAME, 'q')
search_box.send_keys('OpenAI')
search_box.submit()

