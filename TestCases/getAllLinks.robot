*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  http://demowebshop.tricentis.com/register
*** Test Cases ***

Extract Links
    allLinks

*** Keywords ***
allLinks
    open browser    ${url}

    ${allLinksCount}    get element count    xpath://a
    log to console    ${allLinksCount}

    FOR     ${i}    IN RANGE    1    ${allLinksCount}
    ${linkText}     get text    xpath:(//a)[${i}]
    log to console    ${linkText}
    END


