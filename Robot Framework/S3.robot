*** Settings ***
Suite Setup       Open App
Library           SeleniumLibrary
Resource          general.robot
Resource          variables.robot

*** Test Cases ***
Valid Search
    Valid Searching

No Destination
    Invalid Destination

No Date
    Invalid Date

No People
    Invalid People

*** Keywords ***
Valid Searching
    Input Text    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[1]/div[1]/div[1]/label/input    ${DESTINATION}
    Click Element    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[2]/div[1]/div[2]/div/div/div/div/span
    Click Element    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/table/tbody/tr[3]/td[1]/span/span
    Click Element    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/table/tbody/tr[3]/td[7]/span/span
    Click Element    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[3]/label/span[2]
    Click Element    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[3]/div[2]/div/div/div[1]/div/div[2]/button[2]/span
    Click Element    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[4]/div[2]/button
    Sleep    3s

Invalid Destination
    Input Text    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[1]/div[1]/div[1]/label/input    ${EMPTY}
    Click Element    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[2]/div[1]/div[2]/div/div/div/div/span
    Click Element    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/table/tbody/tr[3]/td[1]/span/span
    Click Element    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/table/tbody/tr[3]/td[7]/span/span
    Click Element    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[3]/label/span[2]
    Click Element    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[3]/div[2]/div/div/div[1]/div/div[2]/button[2]/span
    Click Element    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[4]/div[2]/button
    Sleep    2s
    Page Should Contain Element    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[4]/div[2]/button/span[1]

Invalid Date
    Click Element    xpath: /html/body/header/nav[1]/div[1]/div
    Sleep    2s
    Input Text    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[1]/div[1]/div[1]/label/input    ${DESTINATION}
    Click Element    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[3]/label/span[2]
    Click Element    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[3]/div[2]/div/div/div[1]/div/div[2]/button[2]/span
    Click Element    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[3]/div[2]/div/div/div[1]/div/div[2]/button[2]/span
    Click Element    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[4]/div[2]/button
    Sleep    2s
    Page Should Contain Element    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[1]/div[1]/div[1]/label/input

Invalid People
    Click Element    xpath: /html/body/header/nav[1]/div[1]/div
    Sleep    2s
    Input Text    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[1]/div[1]/div[1]/label/input    ${DESTINATION}
    Click Element    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[2]/div[1]/div[2]/div/div/div/div/span
    Click Element    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/table/tbody/tr[3]/td[1]/span/span
    Click Element    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/table/tbody/tr[3]/td[7]/span/span
    Click Element    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[4]/div[2]/button
    Page Should Contain Element    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[1]/div[1]/div[1]/label/input
