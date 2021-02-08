*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/locators.py

*** Keywords ***
Select TransferFund link
    click element   ${Link_TransferFund}

Enter Amount
    [Arguments]  ${amount}
    input text  ${Input_Amount}     ${amount}

Select From account
    select from list by label  fromAccountId    12567

Enter To account
    select from list by label  toAccountId      12789

Submit Transfer button
    click button    ${Submit_btn}

Verify the message
    element text should be      ${Complete_message}     Transfer Complete!
