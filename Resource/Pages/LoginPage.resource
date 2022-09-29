*** Settings ***
Documentation       This file handles all web elements in the login page

Resource            ../Base/CommonFunctionalities.resource


*** Variables ***
${USERNAME_LOCATOR}     id=authUser
${PASSWORD_LOCATOR}     css=#clearPass
${LANGUAGE_LOCATOR}     xpath=//select[@name='languageChoice']
${LOGIN_LOCATOR}        id=login-button
${ERROR_LOCATOR}        xpath=//*[contains(text(),'Invalid')]


*** Keywords ***
Enter Username
    [Documentation]    Types the given text in the username field \n\n
    ...    Examples \n\n
    ...    | Enter Username | Balaji |
    ...    | Enter Username | admin |
    [Arguments]    ${username}
    Input Text    ${USERNAME_LOCATOR}    ${username}

Enter Password
    [Documentation]    Types the given text in the password field \n\n
    ...    Examples \n\n
    ...    | Enter Password | Balaji123 |
    ...    | Enter Password | admin123 |
    [Arguments]    ${password}
    Input Text    ${PASSWORD_LOCATOR}    ${password}

Select Language By Label
    [Documentation]    Select the given langauge from the dropdown \n\n
    ...    Examples \n
    ...    | Select Language By Label | Dutch |
    [Arguments]    ${language}
    Select From List By Label    ${LANGUAGE_LOCATOR}    ${language}

Click Login
    [Documentation]    Click On login button \n\n
    ...    Examples \n
    ...    | Click Login |
    Click Element    ${LOGIN_LOCATOR}

Validate Invalid Error Message
    [Documentation]    Validate the error message displayed \n\n
    ...    Examples \n
    ...    | Validate Invalid Error Message | Invalid username or password |
    [Arguments]    ${error_message}
    Element Should Contain    ${ERROR_LOCATOR}    ${error_message}
