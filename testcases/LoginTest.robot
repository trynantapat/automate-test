*** Settings ***
Library     SeleniumLibrary
Library     yaml
Resource    ../keywords/RegisKeywords.robot
Resource    ../Keywords/LoginPageKeywords.robot
Resource    ../Keywords/HomePageKeywords.robot
Resource    ../Keywords/CommonKeywords.robot
Variables   ../resourse/config/config.yaml
Variables   ../resourse/testdata/testdata.yaml
Suite Setup     Open Browser    ${baseUrl}    chrome
Suite Teardown  Close Browser

*** Test Cases ***
As a user, I want to login success with valid credential  
    #click Regis
    # RegisKeywords.Register user   trynantapat777@gmail.com  NAntapat  Chompoo  Aa0983941255  Aa0983941255

    CommonKeywords.Wait until element is ready then click element  xpath=//button[text()="สมัครสมาชิก"]
    RegisKeywords.Register user     trynantapat777@gmail.com  NAntapat  Chompoo     0813774389  Aa0983941255  Aa0983941255 
    CommonKeywords.Wait until element is ready then click element  xpath=//button[text()="สมัครสมาชิก"]
    sleep   5s
    
    RegisKeywords.CheckOtp
    

    #Regis

    # Input text  name=email    trynantapat777@gmail.com
    # Input text  name=firstName   นันทพัทธ์
    # Input text  name=lastName   ชมภู
    # Input text  name=phoneNumber   0813774389
    # Input text  name=newPassword   Aa0983941255
    # Input text  name=confirmPassword   Aa0983941255
    # Select Checkbox		name=consent

    # CommonKeywords.Wait until element is ready then click element  xpath=//button[text()="สมัครสมาชิก"]

    # Sleep   5s
    #checkotp
    #  ${element_text}    Get Text    xpath=//h6[@class='text-center' and contains(text(), 'ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์') and span[text()='XX-XXXX-4389']]
    # Element Should Contain    xpath=//h6[@class='text-center' and contains(text(), 'ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์') and span[text()='XX-XXXX-4389']]    ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์   
    # Log    Actual Text: ${element_text}

    # CommonKeywords.Wait until element is ready then click element  xpath=//button[@type="submit"]
    # CommonKeywords.Wait until element is ready then click element  xpath=//button[contains(text(),"ไว้ภายหลัง")]
    # CommonKeywords.Wait until element is ready then click element  xpath=//button[@aria-haspopup="menu"]
    # CommonKeywords.Wait until element is ready then click element  xpath=//div[contains(text(),"ออกจากระบบ")]

#     When user login to future skill platform with ${email} and ${valid_password} 
#     then future skill should display home page and display message as "แนะนำคอร์สเรียนที่คุณสนใจ"
#     [Teardown]  user logout from future skill platform
    
# As a user, I fail to login with invalid credential
#     When user login to future skill platform with ${email} and ${invalid_password}
#     Then future skill should display display validate login fail message as "กรอกรหัสไม่ถูกต้อง"   