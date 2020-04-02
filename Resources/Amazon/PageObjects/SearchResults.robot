*** Settings ***
Documentation  Amazon search results page
Library  SeleniumLibrary

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains  results for "${SEARCH_TERM}"

Click Product Link
    [Documentation]  Clicks on first product in search list
    Click Link  xpath=(//div[contains(@class,'s-result-list')]/div//h2/a)[1]