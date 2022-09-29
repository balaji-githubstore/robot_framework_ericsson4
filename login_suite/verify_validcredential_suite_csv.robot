*** Settings ***
Documentation       This suite contains test case related to valid credential
...                 connected with scenario OP_SC_02 and test case OP_TC_02

Resource            ../Resource/Base/CommonFunctionalities.resource
Resource    ../Resource/Pages/LoginPage.resource
Library        DataDriver    file=../test_data/validcredential.csv


Test Setup          Launch Browser And Navigate To Url
Test Teardown       Close Browser

Test Template    Verify Valid Credential Template


*** Test Cases ***
Verify_Valid_Credential_${testcase}
    

*** Keywords ***
Verify Valid Credential Template
    [Arguments]    ${username}    ${password}    ${language}    ${expected_title}
    Enter Username    ${username}
    Input Password    css=#clearPass    ${password} 
    Select From List By Label    xpath=//select[@name='languageChoice']    ${language}
    Click Element    id=login-button
    Title Should Be    ${expected_title}


    