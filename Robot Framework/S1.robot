*** Settings ***
Suite Setup       Open App
Suite Teardown    Close Browser
Library           SeleniumLibrary
Resource          general.robot
Resource          variables.robot

*** Test Cases ***
Valid Register
    Valid Registration

Register No Pass
    No Password

Too Weak Pass
    Weak Password

No Confirmation
    No Confirm

No E-mail
    No Mail

*** Keywords ***
Valid Registration
    Click Element    xpath: /html/body/header/nav[1]/div[2]/div[5]/a/span
    Sleep    2s
    Input Text    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/div[1]/div/div/div/input    ${REGISTER MAIL3}
    Click Element    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/div[3]/button/span
    Sleep    1s
    Input Text    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/div[1]/div/div/div/div/div/input    ${REGISTER PASS}
    Input Text    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/div[2]/div/div/div/div/div/input    ${REGISTER PASS}
    Click Element    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/button/span
    Sleep    3s
    Page Should Contain Element    xpath: /html/body/header/nav[1]/div[2]/div[6]/div/a/span/div/div[2]/span
    Click Element    xpath: /html/body/header/nav[1]/div[2]/div[6]/div/a/span/div/div[2]/span
    Sleep    1s
    Click Element    xpath: /html/body/header/nav[1]/div[2]/div[6]/div/div/div/ul/form/li/button/span[2]

No Password
    Click Element    xpath: /html/body/header/nav[1]/div[2]/div[5]/a/span
    Sleep    2s
    Input Text    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/div[1]/div/div/div/input    ${REGISTER MAIL2}
    Click Element    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/div[3]/button/span
    Sleep    1s
    Click Element    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/button/span
    Sleep    1s
    Page Should Contain Element    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/div[1]/div/div/div/div[1]/div/input
    Click Element    xpath: /html/body/div[1]/div/div[1]/header/nav/div[1]/div[1]
    Sleep    2s

Weak Password
    Click Element    xpath: /html/body/header/nav[1]/div[2]/div[5]/a/span
    Sleep    2s
    Input Text    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/div[1]/div/div/div/input    ${REGISTER MAIL2}
    Click Element    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/div[3]/button/span
    Sleep    1s
    Input Text    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/div[1]/div/div/div/div/div/input    ${TOO WEAK PASS}
    Input Text    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/div[2]/div/div/div/div/div/input    ${TOO WEAK PASS}
    Click Element    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/button/span
    Sleep    1s
    Page Should Contain Element    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/div[1]/div/div/div/div[1]/div/input
    Click Element    xpath: /html/body/div[1]/div/div[1]/header/nav/div[1]/div[1]
    Sleep    2s

No Confirm
    Click Element    xpath: /html/body/header/nav[1]/div[2]/div[5]/a/span
    Sleep    2s
    Input Text    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/div[1]/div/div/div/input    ${REGISTER MAIL2}
    Click Element    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/div[3]/button/span
    Sleep    1s
    Input Text    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/div[1]/div/div/div/div/div/input    ${REGISTER PASS}
    Click Element    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/button/span
    Sleep    1s
    Page Should Contain Element    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/div[1]/div/div/div/div[1]/div/input
    Click Element    xpath: /html/body/div[1]/div/div[1]/header/nav/div[1]/div[1]
    Sleep    2s

No Mail
    Click Element    xpath: /html/body/header/nav[1]/div[2]/div[5]/a/span
    Sleep    2s
    Click Element    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/div[3]/button/span
    Sleep    1s
    Page Should Contain Element    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/div[1]/div/div[1]/div/input
