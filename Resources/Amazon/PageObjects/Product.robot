*** Settings ***
Documentation  Amazon Product detail page
Library  SeleniumLibrary

*** Keywords ***
Verify Page Landed
    Wait Until Page Contains  Back to results

Add to Cart
    Click Button  id=add-to-cart-button-ubb