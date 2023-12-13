*** Keywords ***
Register user 
    [Arguments]  ${email}   ${Firstname}    ${Lastname}     ${phoneNumber}  ${newPassword}  ${confirmPassword}   

    Input text  name=email    ${email}
    Input text  name=firstName   ${Firstname}
    Input text  name=lastName   ${Lastname}
    Input text  name=phoneNumber  ${phoneNumber}
    Input text  name=newPassword   ${newPassword}
    Input text  name=confirmPassword   ${confirmPassword}
    Select Checkbox		name=consent
    
CheckOtp    
    ${element_text}    Get Text    xpath=//h6[@class='text-center' and contains(text(), 'ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์') and span[text()='XX-XXXX-4389']]
    Element Should Contain    xpath=//h6[@class='text-center' and contains(text(), 'ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์') and span[text()='XX-XXXX-4389']]    ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์  