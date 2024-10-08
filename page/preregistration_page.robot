*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SERVER}          barista-uat.perkeso.gov.my:13491/
${BROWSER}         Chrome
${DELAY}           0
${VALID_USER}      uat_norazrin
${VALID_PASSWORD}  u@T_norazrin
${LOGIN_URL}       http://${SERVER}/login
${WELCOME_URL}     http://${SERVER}/home
${ERROR_URL}       http://${SERVER}/error.html
${USERNAME_FIELD}  id=username-email
${PASSWORD_FIELD}  id=password
${LOGIN_BUTTON}    css:.primaryAction.signin-button
${USERNAME_TEXT}    //label[@for='username-email']
${PASSWORD_TEXT}    //label[@for='password']
${HOMEPAGE_HEADING_LOCATOR}    xpath=//h2[@data-i18n='translation:FormSettings.Title']
${HOMEPAGE_TEXT} =  css=h2.heading
${PREREG_LINK} =  (//a[contains(@class, 'ap-MenuItem-link link-49')])[2]
${NOTICETYPE_TEXT}  "//label[@for='NoticeTypePreReg']"

        

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    NXOne - Sign In using your Domain Username Password

Input Username
    Wait Until Element Is Visible    ${USERNAME_TEXT} 
    Element Text Should Be    ${USERNAME_TEXT}    User Name
    [Arguments]    ${username}
    Input Text    ${USERNAME_FIELD}    ${username}

Input Password
    Wait Until Element Is Visible    ${PASSWORD_TEXT} 
    Element Text Should Be    ${PASSWORD_TEXT}    Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_FIELD}    ${password}

Click Login Button
    Click Button    ${LOGIN_BUTTON}


Verify Preregistration Text
    Wait Until Page Contains    Pre-Registration    timeout=30s
    Wait Until Element Is Visible    ${HOMEPAGE_TEXT}    timeout=30s
    Element Text Should Be           ${HOMEPAGE_TEXT}    Pre-Registration


Verify NoticeType Text
    Wait Until Page Contains    Notice Type    timeout=30s
    Wait Until Element Is Visible    ${NOTICETYPE_TEXT}    timeout=30s
    Element Text Should Be           ${NOTICETYPE_TEXT}    Notice Type





   
    
