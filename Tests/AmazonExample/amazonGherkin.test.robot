*** Settings ***
Documentation  Present some information about this test suite
Resource  ../../Resources/Common.robot
Resource  ../../Resources/Amazon.robot

Suite Setup  Setup Suite

Test Setup  Begin Web Test
Test Teardown  End Web Test

Suite Teardown  Cleanup Suite

# Copy/Paste the line below into the Terminal to run the script
# robot -d results tests/*/amazontest.robot

*** Test Cases ***
Logged out user must sign in to checkout
    [Tags]  Smoke
    Given User is not logged in
    And user searches for products
    And search results contains relevant products
    And user select a product from search results
    And correct product page loads
    And user adds the product to their cart
    And the product is present is cart
    When user attemps to checkout
    Then the user is required to sign in
