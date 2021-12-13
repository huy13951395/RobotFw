*** Settings ***
Resource    ../Resource/common_page.resource
Resource    ../Data/login_data.resource

*** Keywords ***
Redirect login page
    # Go to demoqa page
    # Maximize Browser Window
    # Click Element    ${bookStoreApp}
    # Wait Until Element Is Visible    ${btnLogin}
    # Click Button    ${btnLogin}
    Open Browser    ${url}    chrome
    Maximize Browser Window
Input username password
    Input Text    ${txtUsername}    ${username}
    Input Text    ${txtPassword}    ${password}
    Click Button    ${btnLogin}
    Wait Until Element Is Visible    ${lblUserName}
    Element Text Should Be    ${lblUserName}     ${username}

Log in system
    Redirect login page
    Input username password
 