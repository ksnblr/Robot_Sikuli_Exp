*** Settings ***
Documentation     Sikuli Library Demo
Resource          ../Resources/common.robot
Test Setup        Add Needed Image Path
Test Template     Open Notepad and Try to Edit
Library           SikuliLibrary
#Added from Master

*** Variables ***
${CUR_DIR} =  C:\\users\\XKK\\PycharmProjects\\sikli\\img

*** Test Cases ***
Check Inputing  saravanan
Check Inputing  Hello World
Check Inputing  Hello Everyone

*** Keywords ***

Open Notepad and Try to Edit
    [Tags]  Smoke
    [Arguments]   ${text}
    Open Notepad
    Input In Notepad  ${text}
    Quit Without Save

Open Notepad
    Open Application  C:\\windows\\system32\\notepad.exe
    Double Click    notepad_title.png

Input In Notepad
    [Arguments]   ${text}
    Input Text    notepad_area.png   ${text}

Quit Without Save
    Click    notepad_close.png
    Click    dont_save.png
