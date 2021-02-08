*** Settings ***
Resource    ../Resources/LoginKeywords.robot
Resource    ../Resources/TransferFundKeywords.robot
Library     SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
Resource    ../Resources/TransferFundKeywords.robot

*** Variables ***
${Browser}  chrome
${SiteURL}  https://parabank.parasoft.com/parabank/index.htm
${Username}     john
${Password}     demo
${amount}       1500.00

*** Test Cases ***
LoginTest
    Open my Browser     ${SiteURL}  ${Browser}
    sleep   3   seconds
    Enter UserName         ${Username}
    Enter PW       ${Password}
    Click SubmitBtn
    sleep   3   seconds
    Verify Successful Login

TransferFundTest
    Select TransferFund link
    Enter Amount    ${amount}
    sleep       3 seconds
    Select From account
    Enter To account
    Submit Transfer button
    sleep    3 seconds
    verify the message
    close browser