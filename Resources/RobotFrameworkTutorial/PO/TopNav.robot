***Settings***
Library  SeleniumLibrary


***Variables***
${TOPNAV_TEAM_LINK} =  xpath=//a[text()='Team']

***Keywords***
Select "Team" Page
    # Click Link  Team
    Click Element  ${TOPNAV_TEAM_LINK}  
    Sleep  3s
