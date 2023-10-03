***Settings***
Resource    resources_swaglabs.robot
Library    String

*** Test Cases ***
TC002 - Verify All Items Availability
    Open Homepage and Login
    Set Global Variable    @{containerNames}    //*[@id="item_4_title_link"]/div    //*[@id="item_0_title_link"]/div    //*[@id="item_1_title_link"]/div    //*[@id="item_5_title_link"]/div    //*[@id="item_2_title_link"]/div    //*[@id="item_3_title_link"]/div
    FOR    ${itemNames}    IN    @{containerNames}
        # Run Keyword If    '${itemNames}'=='//*[@id="item_3_title_link"]/div'    Exit For Loop
        Click Element    xpath=${itemNames}
        Wait Until Element Is Visible    xpath=//*[@id="inventory_item_container"]/div/div/div[1]/img
        Click Element    xpath=//*[@id="back-to-products"]
    END
    Close Browser

TC003 - New Test Case
    Open Homepage and Login