*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    gc
${homepage}    www.saucedemo.com/
${scheme}    http
${testUrl}    ${scheme}://${homepage}
${username}    standard_user
${password}    secret_sauce

*** Keywords ***
Open Homepage and Login
    Open Browser   ${scheme}://${homepage}    ${browser}
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[1]
    Input Text    xpath=//*[@id="user-name"]    ${username}
    Input Password    xpath=//*[@id="password"]    ${password}
    Click Element    xpath=//*[@id="login-button"]
    Wait Until Element Is Visible    xpath=//*[@id="header_container"]/div[1]/div[2]/div 
Select Backpack Option
    Click Element    xpath=//*[@id="item_4_title_link"]/div
    Wait Until Element Is Visible    xpath=//*[@id="inventory_item_container"]/div/div/div[2]/div[1]
    Click Element    xpath=//*[@id="add-to-cart-sauce-labs-backpack"]

Select Tshirt Option
    Click Element    xpath=//*[@id="item_1_title_link"]/div
    Wait Until Element Is Visible    xpath=//*[@id="inventory_item_container"]/div/div/div[2]/div[1]
    Click Element    xpath=//*[@id="add-to-cart-sauce-labs-bolt-t-shirt"]