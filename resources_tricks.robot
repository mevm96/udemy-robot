*** Settings ***
Library    String
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${homepage}    http://www.winstoncastillo.com/udemy/

*** Keywords ***
Open Homepage and Wait Until it Loads
    Open Browser    ${homepage}    ${browser}
    Wait Until Element Is Visible    xpath=/html/body/div[1]/div/img
    Title Should Be    Hola Mundo!