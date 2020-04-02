***Settings***
Documentation  Tests practicing on RobotframeworkTutorial.Org/Front-Office
Resource  ../../Resources/RobotFrameworkTutorial/FrontOfficeApp.robot
Resource  ../../Resources/RobotFrameworkTutorial/Common.Web.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results/RobotFrameworkTutorial tests/RobotFrameworkTutorial/Front_Office.test.robot


*** Variables***
${BROWSER} =  chrome
${URL} =  http://www.robotframeworktutorial.com/front-office/

*** Test Cases***
Should be able to access "Team" page 
    [Documentation]  This is test 1 for "Team" page 
    [Tags]  test1
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page

"Team" page should match requirements 
    [Documentation]  This is test 2 for "Team" page 
    [Tags]  test2
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page
    FrontOfficeApp.Validate "Team" Page