*** Settings ***
Documentation       This file contatins browser configuration and reusable keywords

Library             SeleniumLibrary
Library             DriverSetup.py


*** Variables ***
${BROWSER}      chrome
${URL}          https://demo.openemr.io/b/openemr


*** Keywords ***
Launch Browser And Navigate To Url
    ${driver_path}    Get Driver Path    ${BROWSER}
    Open Browser    browser=${BROWSER}    executable_path=${driver_path}
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    SeleniumLibrary.Set Screenshot Directory    path=${EXECDIR}${/}screenshot
    Go To    url=${URL}
