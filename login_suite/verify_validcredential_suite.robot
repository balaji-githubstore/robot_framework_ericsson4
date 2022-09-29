*** Settings ***
Documentation       This suite contains test case related to valid credential
...                 connected with scenario OP_SC_02 and test case OP_TC_02

Resource            ../Resource/Base/CommonFunctionalities.resource

Resource    ../Resource/Pages/MainPage.resource
Resource    ../Resource/Pages/LoginPage.resource
Library        DataDriver    file=../test_data/openemr_data.xlsx    sheet_name=VerifyValidCredential


Test Setup          Launch Browser And Navigate To Url
Test Teardown       Close Browser

Test Template    Verify Valid Credential Template


*** Test Cases ***
Verify_Valid_Credential_${testcase}
    

*** Keywords ***
Verify Valid Credential Template
    [Arguments]    ${username}    ${password}    ${language}    ${expected_title}
    Enter Username    ${username}
    Enter Password    ${password}
    Select Language By Label    ${language}
    Click Login
    Validate MainPage Title    ${expected_title}


    