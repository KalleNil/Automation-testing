*** Settings ***
Library    SeleniumLibrary

*** Variables ***
@{ROBOTS}  Bender C3P0 RTD2 Terminator
*** Test Cases ***

ForLoop
    Loop
    LoopWithList


*** Keywords ***
Loop
    FOR     ${i}    IN RANGE    1   11
    log to console    ${i}
    END
LoopWithList
    FOR     ${robot}    IN  @{ROBOTS}

    log to console    ${robot}
    END
