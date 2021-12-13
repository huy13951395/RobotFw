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
Add book successfully
    Add Book To Profile
    Go To Profile Page
    Check Book Exist In Profile After Adding
    # Delete Book From Profile  