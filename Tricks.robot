*** Settings ***
Library    SeleniumLibrary
Resource    resources_tricks.robot

*** Test Cases ***
TCWC01 - Verify Accesability of "blog.winstoncastillo.com"
    [Tags]    blog
    Open Homepage and Wait Until it Loads
    Click Element    xpath=/html/body/div[1]/div/div[2]/a[1]
    Wait Until Element Is Visible    xpath=//*[@id="page-header"]/div[1]/div/div/div/a
    Title Should Be    Winston Castillo – Un sitio para comunicarse
    Close Browser

TCWC02 - Verify functionality of Modal Pop-up.
    [Tags]    Modal
    Open Homepage and Wait Until it Loads
    Set Focus To Element    xpath=/html/body/div[1]/div/div[2]/a[2]
    Click Link   xpath=/html/body/div[1]/div/div[2]/a[2]
    Title Should Be    Hola Mundo!
    Wait Until Element Is Visible   xpath=//*[@id="exampleModal"]/div/div/div[1]
    Click Button    xpath=//*[@id="exampleModal"]/div/div/div[3]/button[1]
    Close Browser