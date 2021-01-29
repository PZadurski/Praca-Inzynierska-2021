*** Settings ***
Suite Setup       Do S4
Suite Teardown    Close Browser
Library           SeleniumLibrary
Resource          general.robot
Resource          variables.robot

*** Test Cases ***
Same Filters
    The Same Filters

One Filter
    Choose One Filter

Many Filters
    Choose Many Filters

*** Keywords ***
The Same Filters
    Click Element    xpath: /html/body/div[3]/div/div[3]/div[1]/div[2]/div[1]/div[1]/form/div[5]/div[2]/button

Choose One Filter
    Sleep    2s
    Click Element    xpath: /html/body/div[3]/div/div[3]/div[1]/div[2]/div[1]/div[5]/form/fieldset/div[1]/div/div[3]/div[3]/a[1]/label/div
    Sleep    3s

Choose Many FIlters
    Click Element    xpath: /html/body/div[3]/div/div[3]/div[1]/div[2]/div[1]/div[5]/form/fieldset/div[1]/div/div[5]/div[2]/a[1]/label/div
    Click Element    xpath: /html/body/div[3]/div/div[3]/div[1]/div[2]/div[1]/div[5]/form/fieldset/div[1]/div/div[13]/div[2]/a[1]/label/div
    Sleep    3s
