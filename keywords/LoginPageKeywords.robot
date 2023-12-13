*** Settings ***
Library     SeleniumLibrary
Resource    CommonKeywords.robot

*** Keywords ***
user login to future skill platform with ${username} and ${password}

    CommonKeywords.Wait until element is ready then click element  xpath=//button[text()="เข้าสู่ระบบ"]
    CommonKeywords.Wait until element is ready then click element  name=email
    CommonKeywords.Wait until element is ready then click element  name=password
    CommonKeywords.Wait until element is ready then click element  xpath=//button[@type="submit"]

future skill should display display validate login fail message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify text  ${expected_message} 
       
Show Otp as ${message}
    CommonKeywords.Wait until page contains element then verify text  ${message}      Get Text    xpath=//div[@class='otp-message']