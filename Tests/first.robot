*** Settings ***
Documentation     Sikuli Library Demo
Resource          ../Resources/common.robot
Test Setup        Add Needed Image Path
#Test Teardown     Quit Without Save
Library           SikuliLibrary

*** Variables ***
${CUR_DIR} =  C:\\users\\XKK\\PycharmProjects\\sikli\\img

*** Test Cases ***
Open Notepad and Do Some Operation
    [Tags]  Smoke
    Open Notepad
    Input In Notepad  Hello World
    Quit Without Save

Open Notepad and Do Second Operation
    [Tags]  Smoke
    Open Notepad
    Input In Notepad  Hello Saravanan
    Quit Without Save

*** Keywords ***

Open Notepad
    Open Application  C:\\windows\\system32\\notepad.exe
    Double Click    notepad_title.png

Input In Notepad
    [Arguments]   ${text}
    Input Text    notepad_area.png   ${text}

Quit Without Save
    Click    notepad_close.png
    Click    dont_save.png
