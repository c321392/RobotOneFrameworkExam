*** Settings ***
Documentation   This is the Demo WebShop Item Page object
Library         SeleniumLibrary
Library         String
Library         Collections
Library         ../customLibrary/chromedriversync.py

*** Keywords ***
click add to cart
    Click Button    css:div:nth-of-type(1) > .product-item input[value='Add to cart']

 verify cart not empty
    [Arguments]               ${textcart}
    Wait Until Element Contains    css:.cart-qty    ${textcart}