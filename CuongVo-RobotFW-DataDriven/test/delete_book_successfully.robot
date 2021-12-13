*** Settings ***
Resource    ../Resource/common_page.resource
Resource    ../Page/login_page.resource
Resource    ../Page/add_book_page.resource
Resource    ../Page/profile_page.resource
Resource    ../Page/register_page.resource
Resource    ../Page/popup_page.resource
Resource    ../Page/search_page.resource
Resource    ../Page/search_result_page.resource


Test Setup    Log In System
Test Teardown    Close Browser

*** Test Cases ***
Delete book successfully
    Go To Profile Page With URL
    Delete Book From Profile