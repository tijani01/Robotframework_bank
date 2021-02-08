*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}  chrome
${SiteURL}  https://parabank.parasoft.com/parabank/index.htm
${Username}     john
${Password}     demo


*** Test Cases ***
LoginTest
    Open my Browser     ${SiteURL}  ${Browser}
    sleep   5   seconds
    Enter UserName         ${Username}
    Enter PW       ${Password}
    Click SubmitBtn
    sleep   3   seconds
    Verify Successful Login
    close browsers