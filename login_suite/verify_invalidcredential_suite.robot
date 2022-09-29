*** Settings ***
Documentation       This suite contains test case related to invalid credential
...                 connected with scenario OP_SC_02 and test case OP_TC_09

Resource            ../Resource/Base/CommonFunctionalities.resource
Resource    ../Resource/Pages/LoginPage.resource

Test Setup          Launch Browser And Navigate To Url
Test Teardown       Close Browser

Test Template    Verify Invalid Credential Template

*** Test Cases ***
TC1    john     john123     English (Indian)    Invalid username or password    
# TC2    saul     saul123     English (Indian)    Invalid username or password

*** Keywords ***
Verify Invalid Credential Template
    [Arguments]    ${username}    ${password}    ${language}    ${expected_error}
    Enter Username    ${username}
    Enter Password    ${password}
    Select Language By Label    ${language}
    Click Login
    Validate Invalid Error Message    ${expected_error}
    