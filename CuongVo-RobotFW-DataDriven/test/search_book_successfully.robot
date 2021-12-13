*** Settings ***
Resource    ../Resource/common_page.resource
Resource    ../Page/login_page.resource
Resource    ../Page/search_page.resource
Resource    ../Page/search_result_page.resource

Test Setup    Log In System
Test Teardown    Close Browser

*** Test Cases ***
Search book successfully
    Search Book In Table
    Check Result Search In Table