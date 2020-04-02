*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Page Should Contain Element  css=h1.a-spacing-small
    Element Text Should Be  css=h1.a-spacing-small  Sign-In
