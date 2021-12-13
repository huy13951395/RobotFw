***Settings ***
Resource    register_data.resource
*** Variables ***
## Locator
${menu}    //div[@class="header-wrapper"]//div[contains(text(),'Forms')]
${form}    //div[@class="element-list collapse show"]//*[contains(text(), 'Practice Form')]
${txtFirstName}    id=firstName
${txtLastName}     id=lastName
${txtEmail}    id=userEmail
${txtMobile}    id=userNumber
${lblGender}    //*[contains(text(), '${gender}')]
${date}    id=dateOfBirthInput
${lblDay}    xpath=//div[contains(@class,"react-datepicker__day--0${day}")]
${txtMonth}    css=.react-datepicker__month-select
${txtYear}    css=.react-datepicker__year-select
${txtSubject}    id=subjectsInput
${selectSubject}    //div[@id='react-select-2-option-0']
${lblState}    //div[contains(text(),'${state}')]   
${lblCity}    //div[contains(text(),'${city}')]
${txtAddress}    id=currentAddress
${lblHobbie}    //label[contains(text(), '${hobbie}')]
${txtState}   //div[@id='state']//div
${txtCity}    //div[@id='city']//div
${txtFile}    id=uploadPicture
${btnSubmit}    id=submit
