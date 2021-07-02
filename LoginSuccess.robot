*** Settings ***
Library  SeleniumLibrary

# Suite Teardown     Close Browser

*** Variables ***
${url}  http://the-internet.herokuapp.com/login
${Browser}  chrome

*** Keywords ***

*** Test Cases ***
1. Open the website
   Open Browser  ${url}  ${Browser}

2. Input Username
   Input Text  name=username  tomsmith

3. Input Password
   Input Text  name=password  SuperSecretPassword!

4. Click Login button
   Click Element  //button[@class="radius"]
