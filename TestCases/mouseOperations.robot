*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url1}     https://swisnl.github.io/jQuery-contextMenu/demo.html
${url2}     http://testautomationpractice.blogspot.com/
${url3}     http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html



*** Test Cases ***
MouseActions
    rightClickAction
    doubleClickAction
    dragDropAction
    dragDropAction2

    close all browsers

*** Keywords ***

rightClickAction
    open browser    ${url1}

    open context menu   xpath://span[@class='context-menu-one btn btn-neutral']

    sleep   3

doubleClickAction
    open browser    ${url2}

    double click element    xpath://button[contains(text(), 'Copy Text')]
dragDropAction
    open browser    ${url3}

    drag and drop   id:box2     id:box102

    sleep   3
dragDropAction2
    open browser    ${url2}

    drag and drop    id:draggable    id:droppable

