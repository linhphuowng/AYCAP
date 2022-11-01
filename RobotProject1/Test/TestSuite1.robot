*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
MyFirstTest
    Log    HelloWorld    
    
FirstSeleniumTest
    Open Browser    https://www.youtube.com/     chrome
    Set Browser Implicit Wait    4
    Input Text    xpath://input[@id ='search']    Automation   
    Sleep    2    
    Close Browser 
    Log    test completed   
    
SampleLoginTest
    [Documentation]    This is a sample login test
    Open Browser     https://opensource-demo.orangehrmlive.com/web/index.php/auth/login         chrome
    Set Browser Implicit Wait    5
    Input Text    xpath://input[@name = 'username']    Admin
    Input Password    xpath://input[@name = 'password']    admin123
    Click Button    xpath://button[@type = 'submit']  
    Click Element    xpath://p[@class= 'oxd-userdropdown-name']
    Click Element    xpath://a[text() = 'Logout']    
    Log    Test completed        
            