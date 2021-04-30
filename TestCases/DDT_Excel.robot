*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/loginResources.robot
Library    DataDriver   ../TestData/

Suite Setup    Open my Browser
Suite Teardown    Close all Browsers

Test Template    Invalid login
*** Variables ***

*** Test Cases ***
LoginTestWithExcel using ${username} and ${password}

*** Keywords ***
Invalid login
    [Arguments]    ${username}  ${password}

    Input username   ${username}

    Input pwd   ${password}

    Click Login Button

    Error message should be visible

