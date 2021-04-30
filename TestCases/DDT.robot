*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/loginResources.robot

Suite Setup    Open my Browser
Suite Teardown    Close all Browsers

Test Template    Invalid login
*** Variables ***

*** Test Cases ***
Right user empty password   admin@yourstore.com   ${EMPTY}    #Global variable EMPTY, no password is provided
Right user wrong password   admin@yourstore.com   xyz
Wrong user right password   admin@yourstore1.com   admin
Wrong user empty password   admin@yourstore1.com   ${EMPTY}
Wrong user wrong password   admin@yourstore1.com   xyz

*** Keywords ***
Invalid login
    [Arguments]    ${username}  ${password}

    Input username   ${username}

    Input pwd   ${password}

    Click Login Button

    Error message should be visible

