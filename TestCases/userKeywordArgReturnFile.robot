
*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/resources.robot


*** Variables ***

*** Test Cases ***
TestKeywords
    ${pageTitle}    keywordsArguments   ${userName}     ${password}
    log to console    ${pageTitle}
    log    ${pageTitle}

    close browser

*** Keywords ***

