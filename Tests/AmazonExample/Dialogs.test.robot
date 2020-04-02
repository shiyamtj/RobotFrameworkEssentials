***Settings***
Documentation  Present some information about this test suite
Resource  ../../Resources/Amazon/Common.robot
Resource  ../../Resources/Amazon/Amazon.robot
Library  Dialogs

Suite Setup  Setup Suite
Test Setup  Begin Web Test
Test Teardown  End Web Test
Suite Teardown  Cleanup Suite

# robot -d results/AmazonExample tests/AmazonExample/Dialogs.test.robot
***Variables***
${BROWSER} =  chrome
${START_URL} =  http://www.amazon.com
${SEARCH_TERM} =  Ferrari 458


***Test Cases***
Logged out user can search for Products
    [Tags]  Web
    ${new_browser} =  Get Selection from User  Which Browser?  chrome  ie  firefox
    Set Global Variable  ${BROWSER}  ${new_browser}
    Amazon.Search for Products

Logged out user can add product to Cart
    [Tags]  Web    
    Amazon.Search for Products
    Execute Manual Step  Do something manually!  It failed!
    Amazon.Select Product from Search Results
    Pause Execution
    Amazon.Add Product to Cart
    Amazon.Begin Checkout
