***Settings***
Library  SeleniumLibrary


***Variables***
${TEAM_HEADER_LABEL} =  css=section#team h2

***Keywords***
Verify Page Loaded
    Wait Until Page Contains Element  ${TEAM_HEADER_LABEL}

Validate Page Contents
    ${element_text} =  Get Text  ${TEAM_HEADER_LABEL} 
    Should Be Equal As Strings  ${element_text}  Our Amazing Team  ignore_case=true
    # Element Text Should Be  ${TEAM_HEADER_LABEL}  Our Amazing Team