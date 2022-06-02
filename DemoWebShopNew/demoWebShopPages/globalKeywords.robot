** Settings ***
Documentation   This is the Global keywords page object
Library         SeleniumLibrary
Library         ../customLibrary/chromedriversync.py
Library         String
Library         Collections

*** Variables ***
${url}         http://demowebshop.tricentis.com/

*** Keywords ***
go home
    Click Element    css:img[alt='Tricentis Demo Web Shop']


