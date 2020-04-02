*** Settings ***
Documentation  Present some information about this test suite

Resource  Resources/UI/Common.robot
Resource  Resources/UI/Amazon.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Test Cases ***
User must sign in to Checkout
    [Documentation]  This is basic information about the test
    [Tags]  DialogSmoke
    Open Browser  https://lipis.github.io/bootstrap-sweetalert/  ${BROWSER}
    Wait Until Page Contains  SweetAlert for Bootstrap
    Click Button  Try It
    Click Button  OK
    Sleep  3s
    Close Browser

*** Keywords ***