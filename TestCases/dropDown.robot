*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  http://www.practiceselenium.com/practice-form.html
*** Test Cases ***

Handling DropDowns and ListBoxes
    open browser    ${url}



    DropDowns
    ListBoxTestMultiChoice


    close browser

*** Keywords ***

DropDowns
    select from list by label    continents  Asia

    sleep   2
    select from list by index    continents     6
ListBoxTestMultiChoice
    select from list by label    selenium_commands   Switch Commands
    select from list by label    selenium_commands   WebElement Commands
    sleep   2
    select from list by label    selenium_commands   Switch Commands



