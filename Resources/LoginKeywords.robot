*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/locators.py

*** Keywords ***
Open my Browser
    [Arguments]     ${SiteURL}      ${Browser}
    open browser   ${SiteURL}      ${Browser}
    Maximize Browser Window

Enter UserName
    [Arguments]       ${Username}
    Input Text      ${Input_UserID}    ${Username}

Enter PW
    [Arguments]      ${Password}
    Input Text    ${Input_PW}     ${Password}

Click SubmitBtn
    [Arguments]
    click button    ${SubmitBtn}

Verify Successful Login
     title should be    ParaBank | Accounts Overview

close browsers
    close all browsers
