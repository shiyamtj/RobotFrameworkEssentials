*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
User can search for products
    @{url_browser} =  Set Variable  https://www.amazon.com  firefox

#    Begin Web Test  https://www.amazon.com  firefox
    Begin Web Test  @{url_browser}

*** Keywords ***
Begin Web Test
    [Arguments]  @{url_browser}
    Open Browser  @{url_browser}[0]  @{url_browser}[1]
    Close Browser

#Begin Web Test
#    [Arguments]  ${url}  ${browser}
#    Open Browser  ${url}  ${browser}
#    Close Browser