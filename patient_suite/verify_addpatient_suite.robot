*** Settings ***
Documentation       This suite contains test case related to invalid credential
...                 connected with scenario OP_SC_02 and test case OP_TC_09

Resource            ../Resource/Base/CommonFunctionalities.resource

Test Setup          Launch Browser And Navigate To Url
Test Teardown       Close Browser

*** Test Cases ***
Verify Add Patient Test 
    Input Text    id=authUser    admin
    Input Password    css=#clearPass    pass
    Select From List By Label    xpath=//select[@name='languageChoice']    English (Indian)
    Click Element    id=login-button
    
    
*** Comments ***
1.	Navigate onto http://demo.openemr.io/b/openemr/
2.	Update username as admin
3.	Update password as pass
4.	Select language as English (Indian)
5.	Click on the login button
6.	Click on Patient  Click New Search
7.	Add the first name, last name
8.	Update DOB as today's date driver.findElement(By.id("form_DOB")).sendKeys("2021-12-06");
9.	Update the gender
10.	Click on the create new patient button above the form
11.	Click on confirm create new patient button.
12.	Print the text from alert box (if any error before handling alert add 5 sec wait)
13.	Handle alert
14.	Close the Happy Birthday popup
15.	Verify the added patient name and print in the console.

