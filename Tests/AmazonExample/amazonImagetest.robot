*** Settings ***
Documentation  Present some information about this test suite
Library  SeleniumLibrary

# Copy/Paste the line below into the Terminal to run the script
# robot -d results tests/*/amazontest.robot

*** Variables ***
${BROWSER}  chrome

*** Test Cases ***
User must sign in to Checkout
    [Documentation]  This is basic information about the test
    [Tags]  Regression
    Open Browser  http://www.amazon.com  ${BROWSER}
    Wait Until Page Contains  Amazon.com
    Click Image  Shop in 60+ currencies
    Sleep  3s
    Close Browser

*** Keywords ***