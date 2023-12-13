*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Wait until element is ready then click element
    [Arguments]     ${locator}
    BuiltIn.Wait Until Keyword Succeeds   5x  2s  Click Element   ${locator}
    

Wait until Element is ready then input text
    [Arguments]     ${locator}      ${text}
    BuiltIn.Wait Until Keyword Succeeds   5x  2s  Input text      ${locator}      ${text}


Wait until page contains element then verify text
    [Arguments]     ${expected_text}
    BuiltIn.Wait Until Keyword Succeeds   5x  2s  SeleniumLibrary.Page Should Contain      ${expected_text}          