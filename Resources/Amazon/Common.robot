*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}
#    ${new_variable} =  Set Variable  My New Variable
#    @{new_list_variable} =  Set Variable  Item1  Item2  Item3
#    @{new_list_variable_createlist} =  Create List  Item1  Item2  Item3
#
#    Log  ${new_variable}
#    Log  @{new_list_variable}[0]
#    Log  @{new_list_variable}[1]
#    Log  @{new_list_variable}[2]
#
#    Log  @{new_list_variable_createlist}[0]
#    Log  @{new_list_variable_createlist}[1]
#    Log  @{new_list_variable_createlist}[2]

End Web Test
    Close Browser

Setup Suite
    Log  Running Suite Setup

Cleanup Suite
    Log  Running Suite Cleanup
