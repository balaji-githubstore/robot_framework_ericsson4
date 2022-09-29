*** Settings ***
Documentation    This file handles all web elements in the login page

Resource    ../Base/CommonFunctionalities.resource

*** Keywords ***
Click On Calendar
    Click Element    xpath=//div[text()='Calendar']

Validate MainPage Title
    [Arguments]    ${expected_title}
    Title Should Be    ${expected_title}
