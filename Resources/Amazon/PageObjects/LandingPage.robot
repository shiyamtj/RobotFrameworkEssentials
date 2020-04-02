*** Settings ***
Documentation  Amazon top navigation
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  chrome

*** Keywords ***
Load
    Go to  ${START_URL}