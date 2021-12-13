*** Settings ***
Resource    ../Resource/common_page.resource
Resource    ../Page/login_page.resource
Resource    ../Page/register_page.resource
Resource    ../Page/popup_page.resource

Test Setup    Log In System
Test Teardown    Close Browser
 
*** Test Cases ***
Register successfully with all fields
    Input Data In Form
    Check Data In Pop-up
