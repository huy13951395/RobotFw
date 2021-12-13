*** Settings ***
Library    SeleniumLibrary
Resource    ../Data/search_data.resource

*** Keywords ***
Check Result Search In Table
    ${countRowResult}=    Get Element Count   ${rowTable}
    Log To Console    ${countRowResult}
    
    FOR    ${i}    IN RANGE    ${countRowResult}
        Element Should Contain   //div[@class ="rt-tbody"]/div[${i+1}]/div/div[2]//a    ${keyWord}    ignore_case= True
    END