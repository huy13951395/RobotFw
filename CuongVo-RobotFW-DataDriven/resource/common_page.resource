*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Go to demoqa page
    Open Browser    ${url}    chrome

Check Data In Row
    [Arguments]    ${locator}    ${value}
    Wait Until Element Is Visible    ${locator}
    Element Text Should Be    ${locator}    ${value}
Click Date
    [Arguments]    ${locator}    ${date}
    Select From List By Label    ${locator}    ${date}
