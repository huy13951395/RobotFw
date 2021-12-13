*** Settings ***
Library    SeleniumLibrary
Resource    ../Resource/common_page.resource
Resource    ../Data/add_book_data.resource
Resource    ../Data/search_data.resource    
Resource    ../Page/add_book_page.resource

*** Keywords ***
Go To Profile Page
    Wait Until Element Is Visible    ${profilePage}
    Click Element   ${profilePage}
Go To Profile Page With URL
    Go To    ${urlPage}
Check Book Exist In Profile After Adding
    Wait Until Element Is Visible    ${rowTable}
    Element Text Should Be    ${rowTable}     ${bookName}

Delete Book From Profile
    Wait Until Element Is Visible    ${txtSearch}
    Input Text    ${txtSearch}    ${bookName}
    Element Text Should Be    ${rowTable}     ${bookName}
    Wait Until Element Is Visible    ${btnDelete}
    Click Element   ${btnDelete}
    Wait Until Element Is Visible    ${btnOk}
    Click Button    ${btnOk}
    Alert Should Be Present    ${arlertDel}
    Element Should Not Be Visible    ${rowTable}
