*** Settings ***
Documentation  Present some information about this test suite
Resource  ../../Resources/Amazon/Common.robot
Resource  ../../Resources/Amazon/Amazon.robot

Suite Setup  Setup Suite
Test Setup  Begin Web Test
Test Teardown  End Web Test
Suite Teardown  Cleanup Suite

# Copy/Paste the line below into the Terminal to run the script
# robot -d results tests/*/amazontest.robot

*** Variables ***
${BROWSER} =  firefox
${START_URL} =  https://www.amazon.com
${SEARCH_TERM} =  Ferrari 458

*** Test Cases ***
Logged out user can search for products
    [Tags]  Smoke
    Amazon.Search for Products

User must sign in to checkout
    [Tags]  Smoke
    Amazon.Search for Products
    Amazon.Select Product from Search Results
    Amazon.Add Product to Cart
    Amazon.Begin Checkout
    