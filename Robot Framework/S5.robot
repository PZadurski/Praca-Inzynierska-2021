*** Settings ***
Suite Setup       Open App
Suite Teardown    Close Browser
Library           SeleniumLibrary
Resource          general.robot
Resource          variables.robot

*** Test Cases ***
Valid Search
    Valid Searching

No Reception
    Invalid Reception

No Return Date
    Invalid Date

*** Keywords ***
Valid Searching
    Click Element    xpath: /html/body/header/nav[2]/ul/li[3]/a/span[2]
    Sleep    2s
    Input Text    xpath: /html/body/div[1]/div/div[3]/div/div[2]/div/div/form/div[2]/div[1]/div/div[1]/label/input    ${PLACE}
    Sleep    2s
    Click Element    xpath: /html/body/div[1]/div/div[3]/div/div[2]/div/div/form/div[2]/div[1]/div/div[1]/ul[1]/li[1]/span[2]
    Sleep    1s
    Click Element    xpath: /html/body/div[1]/div/div[3]/div/div[2]/div/div/form/div[2]/div[4]/div[2]/button
    Sleep    10s
    Click Element    xpath: /html/body/div[4]/div[1]/div/a
    Sleep    3s

Invalid Reception
    Click Element    xpath: /html/body/header/nav[2]/ul/li[3]/a/span[2]
    Sleep    2s
    Input Text    xpath: /html/body/div[1]/div/div[3]/div/div[2]/div/div/form/div[2]/div[1]/div/div[1]/label/input    ${PLACE}
    Sleep    1s
    Click Element    xpath: /html/body/div[1]/div/div[3]/div/div[2]/div/div/form/div[2]/div[4]/div[2]/button
    Sleep    2s

Invalid Date
    Click Element    xpath: /html/body/header/nav[2]/ul/li[3]/a/span[2]
    Sleep    2s
    Input Text    xpath: /html/body/div[1]/div/div[3]/div/div[2]/div/div/form/div[2]/div[1]/div/div[1]/label/input    ${PLACE}
    Sleep    2s
    Click Element    xpath: /html/body/div[1]/div/div[3]/div/div[2]/div/div/form/div[2]/div[1]/div/div[1]/ul[1]/li[1]/span[2]
    Sleep    1s
    Click Element    xpath: /html/body/div[1]/div/div[3]/div/div[2]/div/div/form/div[2]/div[4]/div[2]/button
    Sleep    10s
    Page Should Not Contain Element    xpath: /html/body/div[6]/div/div[2]/div[3]/div/a[1]/div[5]
