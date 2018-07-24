*** Settings ***
Library     SeleniumLibrary
Resource   recursos.robot

*** Test Cases ***
001 Ir al blog de Winston Castillo
    Open Homepage
    Title Should Be     Hola Mundo!
    Set Focus To Element    xpath=/html/body/div[1]/div/div[2]/a[1]
    Click Link       xpath=/html/body/div[1]/div/div[2]/a[1]
    Wait Until Element is Visible   xpath=/html/body/header/div/div/div/div
    Title Should Be     Winston Castillo – Un sitio para comunicarse
    Close Browser

002 Abrir Ventana Modal
    [Tags]      TestError   TestFuncional   XpathNuevo
    Open Homepage
    Title Should Be     Hola Mundo!
    Click Element   xpath=//*[@id="Menu "]/li[1]/a
    Set Focus To Element    xpath=/html/body/div[1]/div/div[2]/a[2]
    Click Link      xpath=/html/body/div[1]/div/div[2]/a[2]
    Title Should Be     Hola Mundo!
    Wait Until Element is Visible   xpath=//*[@id="exampleModal"]/div/div/div[1]
    Close Browser