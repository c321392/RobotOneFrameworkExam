*** Settings ***
Documentation   This is the Demo WebShop page object
Library         SeleniumLibrary
Library         String
Library         Collections
Library         ../customLibrary/chromedriversync.py

*** Keywords ***
click top categories
    [Arguments]         ${selectCategory}
    Click Element       css:.top-menu
    Click Element       link:${selectCategory}