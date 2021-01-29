*** Settings ***
Suite Setup       Open App
Suite Teardown    Close Browser
Library           SeleniumLibrary
Resource          general.robot
Resource          variables.robot

*** Test Cases ***
Valid Login
    Valid Logging In

Wrong Password
    Wrong Pass

No Pass
    Pass Empty

No E-mail
    No Mail

Wrong E-mail
    Wrong Mail

*** Keywords ***
Valid Logging In
    Click Element    xpath: /html/body/header/nav[1]/div[2]/div[6]/a/span
    Sleep    2s
    Input Text    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/div[1]/div/div/div/input    ${REGISTER MAIL3}
    Click Element    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/div[3]/button/span
    Sleep    2s
    Input Text    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/div/div/div/div/div/div/input    ${REGISTER PASS}
    Click Element    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/button/span
    Sleep    5s
    Click Element    xpath: /html/body/header/nav[1]/div[2]/div[6]/div/a/span/div/div[2]/span
    Sleep    1s
    Click Element    xpath: /html/body/header/nav[1]/div[2]/div[6]/div/div/div/ul/form/li/button/span[2]
    Sleep    3s

Wrong Pass
    Click Element    xpath: /html/body/header/nav[1]/div[2]/div[6]/a/span
    Sleep    2s
    Input Text    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/div[1]/div/div/div/input    ${REGISTER MAIL3}
    Click Element    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/div[3]/button/span
    Sleep    2s
    Input Text    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/div/div/div/div/div/div/input    ${TOO WEAK PASS}
    Click Element    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/button/span
    Sleep    2s
    Click Element    xpath: /html/body/div[1]/div/div[1]/header/nav/div[1]/div[1]

Pass Empty
    Click Element    xpath: /html/body/header/nav[1]/div[2]/div[6]/a/span
    Sleep    2s
    Input Text    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/div[1]/div/div/div/input    ${REGISTER MAIL3}
    Click Element    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/div[3]/button/span
    Sleep    2s
    Input Text    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/div/div/div/div/div/div/input    ${EMPTY}
    Click Element    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/button/span
    Sleep    2s
    Click Element    xpath: /html/body/div[1]/div/div[1]/header/nav/div[1]/div[1]

No Mail
    Click Element    xpath: /html/body/header/nav[1]/div[2]/div[6]/a/span
    Sleep    2s
    Click Element    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/div[3]/button/span
    Sleep    2s
    Click Element    xpath: /html/body/div[1]/div/div[1]/header/nav/div[1]/div[1]

Wrong Mail
    Click Element    xpath: /html/body/header/nav[1]/div[2]/div[6]/a/span
    Sleep    2s
    Input Text    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/div[1]/div/div/div/input    ${WRONG MAIL}
    Click Element    xpath: /html/body/div[1]/div/div[2]/div[1]/div/div/div/div/div/div/form/div[3]/button/span
