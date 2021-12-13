*** Settings ***
Resource    ../Data/popup_locator.resource
Resource    ../Resource/common_page.resource
*** Keywords ***
Check data in pop-up with Data Driven
    [Arguments]    ${firstName}    ${lastName}    ${email}    ${gender}    ${day}    ${mobile}    ${month}    ${year}    ${subject}    ${hobbie}    ${img}    ${address}    ${state}    ${city}
    Check Data In Row    ${rowName}    ${firstName} ${lastName}
    Check Data In Row    ${rowEmail}    ${email}
    Check Data In Row    ${rowGender}    ${gender}
    Check Data In Row    ${rowMobile}    ${mobile}
    Check Data In Row    ${rowDate}    ${day} ${month},${year}
    Check Data In Row    ${rowSubject}    ${subject}
    Check Data In Row    ${rowHobbies}    ${hobbie}
    Check Data In Row    ${rowPicture}    ${namePicture}
    Check Data In Row    ${rowAddress}    ${address}
    IF    "${state}"!="${EMPTY}"
    Check Data In Row    ${rowState}    ${state} ${city}
    END
    
