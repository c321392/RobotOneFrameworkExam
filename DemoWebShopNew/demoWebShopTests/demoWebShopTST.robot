*** Settings ***
Documentation   This is our first Robot Framework Test
Library         ../customLibrary/chromedriversync.py
Library         SeleniumLibrary
Library         String
Library         Collections

# Global resources section
Resource        ../frameworkClasses/globalSetup.robot

# Project Resources
Resource        ../demoWebShopPages/demoWebShoppages.robot
Resource        ../demoWebShopPages/globalKeywords.robot
Resource        ../demoWebShopPages/demoWebShopItemPage.robot

# Suite Setup and Tear Down Section
Suite Setup     test setup      ${url}
#Suite Teardown  Close Browser

# Test Case template
Test Template       Template Test Case

*** Variables ***
${url}         http://demowebshop.tricentis.com/

*** Test Cases ***
Search for Top Menu category
    #${selectCategory}  ${textcart}
    Books               (1)

** Keywords ***
Template Test Case
   [Arguments]                      ${selectCategory}   ${textcart}
    click top categories            ${selectCategory}
    click add to cart
     verify cart not empty          ${textcart}
     go home


