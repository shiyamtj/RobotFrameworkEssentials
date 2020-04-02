*** Settings ***
Documentation  Amazon Cart
Library  SeleniumLibrary

*** Keywords ***
Verify Product Added
    Wait Until Page Contains  Added to Cart
    Click Link  xpath=(//a[@role='button'][contains(text(), 'Cart')])[1]
    Sleep  3s

Proceed to Checkout
    Click Button  //input[@value="Proceed to checkout"]
    
