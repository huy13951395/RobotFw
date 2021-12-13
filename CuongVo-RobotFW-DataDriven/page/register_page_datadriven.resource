*** Settings ***
Library    SeleniumLibrary
Resource    ../Resource/common_page.resource
Resource    ../Data/register_data.resource
Resource    ../Data/register_locator.resource
Resource    ../Page/login_page.resource

*** Keywords ***
Input Data In Form
    [Arguments]    ${firstName}    ${lastName}    ${email}    ${gender}    ${day}    ${mobile}    ${month}    ${year}    ${subject}    ${hobbie}    ${img}    ${address}    ${state}    ${city}
    Click Element    ${menu}
    Wait Until Element Is Visible    ${form}
    Click Element    ${form}
    ##Input First Name
    Input Text   ${txtFirstName}    ${firstName}
    #Input First Name
    Input Text    ${txtLastName}    ${lastName}
    #Input Email
    Input Text    ${txtEmail}    ${email}
    Click Element    ${lblGender}
    #Input Mobile Phone
    Input Text    ${txtMobile}    ${mobile}

    #Focus Date picker
    Click Element    ${date}
    Click Date    ${txtMonth}    ${month}
    Click Date    ${txtYear}    ${year}
    Click Element    ${lblDay}
    #Input Subjects
    IF    "${subject}"!="${EMPTY}"
    Input Text   ${txtSubject}    ${subject}
    Click Element    ${selectSubject}
    Click Element    ${lblHobbie}
    END
    Execute Javascript     window.scrollTo(0,document.body.scrollHeight);
    Choose File    ${txtFile}   ${img}
    #Input address
    Input Text    ${txtAddress}    ${address}
    #Select State
    Click Element    ${txtState}
    Click Element    ${lblState}  
    #Select City
    Click Element    ${txtCity}
    Click Element    ${lblCity}
    
    Click Button    ${btnSubmit}