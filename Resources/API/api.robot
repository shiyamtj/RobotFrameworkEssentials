***Settings***
Library  RequestsLibrary
Library  SeleniumLibrary

***Variables***

***Keywords***
Check Github Username
    Create Session  my_github_session  https://api.github.com

    ${response} =  Get Request  my_github_session  users/shiyamtj

    Should Be Equal As Strings  ${response.status_code}  200

    ${json} =  Set Variable  ${response.json()}
    Should Be Equal As Strings  ${json['login']}  shiyamtj

    Log  ${json}

Display Emoji
    Create Session  my_github_session  https://api.github.com

    ${response} =  Get Request  my_github_session  emojis

    Should Be Equal As Strings  ${response.status_code}  200

    ${json} =  Set Variable  ${response.json()}
    ${emoji_url} =  Set Variable  ${json['aerial_tramway']}
    Open Browser  ${emoji_url}  chrome
    Close Browser