*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TAB_PRE_REGISTRATION_LOCATOR}    //a[contains(@class, 'ap-MenuItem-link') and text()='Pre-Registration']
${TAB_PRE_REGISTRATION_TEXT}       Pre-Registration
${TAB_MYCASES_LOCATOR}    //a[contains(@class, 'ap-MenuItem-link') and text()='MyCases']
${TAB_MYCASES_TEXT}       MyCases

*** Keywords ***
Click Tab Pre-Registration
    Wait Until Element Is Visible    ${TAB_PRE_REGISTRATION_LOCATOR}    timeout=30s
    Element Text Should Be    ${TAB_PRE_REGISTRATION_LOCATOR}    ${TAB_PRE_REGISTRATION_TEXT}
    Click Element    ${TAB_PRE_REGISTRATION_LOCATOR}


Click Tab MyCases
    Wait Until Element Is Visible    ${TAB_MYCASES_LOCATOR}    timeout=30s
    Element Text Should Be    ${TAB_MYCASES_LOCATOR}    ${TAB_PRE_REGISTRATION_TEXT}
    Click Element    ${TAB_MYCASES_LOCATOR}