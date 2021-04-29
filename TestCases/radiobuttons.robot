*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  http://www.practiceselenium.com/practice-form.html
*** Test Cases ***

Testing Radio buttons and check boxes
    open browser    ${url}

    set selenium speed    1seconds
    RadioButtonTest
    CheckBoxTest


    close browser

*** Keywords ***

RadioButtonTest
    select radio button    sex   Female
    select radio button    exp   5
CheckBoxTest
    select checkbox        BlackTea
    select checkbox       RedTea
    unselect checkbox     BlackTea
