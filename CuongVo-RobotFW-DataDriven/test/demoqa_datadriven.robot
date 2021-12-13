*** Settings ***
Resource    ../Page/register_page_datadriven.resource
Resource    ../Page/login_page.resource
Resource    ../Page/popup_page_datadriven.resource
Library    DataDriver    ../DataDriven/data.xlsx    sheet_name=data
Test Template    Enter data into form

*** Test Cases ***
Register All Fields For Register   ${firstName}    ${lastName}    ${email}    ${gender}    ${day}    ${mobile}    ${month}    ${year}    ${subject}    ${hobbie}    ${img}    ${address}    ${state}    ${city}
*** Keywords ***
Enter data into form
    [Arguments]    ${firstName}    ${lastName}    ${email}    ${gender}    ${day}    ${mobile}    ${month}    ${year}    ${subject}    ${hobbie}    ${img}    ${address}    ${state}    ${city}
    Log in system
    Input Data In Form    ${firstName}    ${lastName}    ${email}    ${gender}    ${day}    ${mobile}    ${month}    ${year}    ${subject}    ${hobbie}    ${img}    ${address}    ${state}    ${city}
    Check data in pop-up with Data Driven    ${firstName}    ${lastName}    ${email}    ${gender}    ${day}    ${mobile}    ${month}    ${year}    ${subject}    ${hobbie}    ${img}    ${address}    ${state}    ${city}