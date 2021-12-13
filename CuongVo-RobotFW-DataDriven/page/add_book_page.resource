*** Settings ***
Library    SeleniumLibrary
Resource    ../Resource/common_page.resource
Resource    ../Data/add_book_data.resource

*** Keywords ***
Add Book To Profile
    Go To    ${bookPage}
    Wait Until Element Is Visible    link=${bookName}
    Click Link    link=${bookName}
    Execute Javascript     window.scrollTo(0,document.body.scrollHeight);
    Wait Until Element Is Visible    ${btnAdd}
    Click Button    ${btnAdd}
    Alert Should Be Present    ${alertMessage}
    