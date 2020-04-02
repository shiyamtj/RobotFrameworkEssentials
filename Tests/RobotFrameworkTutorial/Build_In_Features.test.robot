***Settings***
Library  SeleniumLibrary
#robot -d results/RobotFrameworkTutorial tests/RobotFrameworkTutorial/Build_In_Features.test.robot
#robot -d results/RobotFrameworkTutorial -i BuiltIn tests/RobotFrameworkTutorial

***Variables***
${GLOBAL1} =  I am global variable 1
${SOME_GLOBAL_DATA}
${some_suite_data}


****Test Cases***   
Declare and Set Variables
    ${some_test_data} =  Set Variable  This is only available within this test
    Set Test Variable  ${more_test_data}  This is also only available within this test

    Set Suite Variable  ${some_sute_data}  This is available within all tests in this Suite

    Set Global Variable  ${SOME_GLOBAL_DATA}  This is available everywhere

Logging Stuff
    [Tags]  BuiltIn
    Comment  ${unset_variable}
    Comment  Just a random Comment
    Comment  ${GLOBAL1}
    Log  I have something to say
    Log Many  Something to say 1  Something to say 2  Something to say 3
    Log to Console  This can only seen in the console, not the log!

Ignore failures in this test
    Open Browser  http://www.amazon.com  chrome

    Run keyword And Continue on Failure  Wait Until Page Contains  This Text does not exists
    Run Keyword And Continue on Failure  Wait Until Page Contains  More text that does not exists

    Log  ${some_suite_data}
    Log  ${GLOBAL1}
    Log  ${SOME_GLOBAL_DATA}

    Close Browser

Repeat things
    Repeat Keyword  3 times  Say something Funny
    Log  ${some_suite_data}
    Log  ${GLOBAL1}
    Log  ${SOME_GLOBAL_DATA}
    Log Variables



***Keywords***
Say something Funny
    Log  Something Funny Hahahaha....

This Text does not exists
