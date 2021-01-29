*** Settings ***
Library           SeleniumLibrary
Library           String
Library           Screenshot

*** Keywords ***
Open App
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Sleep    3s

Do S4
    Open App
    Input Text    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[1]/div[1]/div[1]/label/input    ${DESTINATION}
    Click Element    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[2]/div[1]/div[2]/div/div/div/div/span
    Click Element    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/table/tbody/tr[3]/td[1]/span/span
    Click Element    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/table/tbody/tr[3]/td[7]/span/span
    Click Element    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[3]/label/span[2]
    Click Element    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[3]/div[2]/div/div/div[1]/div/div[2]/button[2]/span
    Click Element    xpath: /html/body/div[2]/div/div/div[2]/form/div[1]/div[4]/div[2]/button
    Sleep    3s
