*** Variables ***
## Locator
${bookPage}    https://demoqa.com/books
${urlPage}    https://demoqa.com/profile
${LinkBook}
${btnAdd}    //div[@class = "text-right fullButton"]//button
${profilePage}    //li[@id="item-3"]//*[contains(text(),'Profile')]
${rowTable}    //div[@class="rt-tr-group"]//a
${btnDelete}    id=delete-record-undefined
${btnOk}    id=closeSmallModal-ok
##Data
${bookName}    Git Pocket Guide
${alertMessage}    Book added to your collection.
${arlertDel}    Book deleted.