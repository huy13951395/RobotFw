*** Settings ***
Library    SeleniumLibrary
Resource    ../Data/register_data.resource
Resource    ../Data/add_book_data.resource
Resource    ../Data/search_data.resource
*** Keywords ***
Search Book In Table
    Go To    ${bookPage}
    Wait Until Element Is Visible    ${txtSearch}
    Input Text    ${txtSearch}    ${keyWord}
    
