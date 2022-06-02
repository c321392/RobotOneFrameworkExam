*** Settings ***
Documentation   This is the global setup
Library         SeleniumLibrary
Library         ../customLibrary/chromedriversync.py
Library         String
Library         Collections

*** Variables ***
${url}         http://demowebshop.tricentis.com/

*** Keywords ***
test setup
    #[Arguments]                     ${url}
    ${chromedriver_path}=           Get Chromedriver Path
    Create Webdriver                Chrome      executable_path=${chromedriver_path}
    Go To                           ${url}
    Maximize Browser Window
    Set Browser Implicit Wait       10
#    Click Button                    class:cookies-banner-module_dismiss-button_24Z98
    Capture Page Screenshot         EMBED
