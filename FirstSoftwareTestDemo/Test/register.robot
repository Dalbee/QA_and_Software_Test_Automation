*** Settings ***
Documentation    To test login page
Library  SeleniumLibrary

*** Variables ***
${MainUrl}  https://demowebshop.tricentis.com/
${Email}  tony190uk@yahoo.com
${PASSWORD}   automation123
${Browser}  Chrome
${MainUrl4}  https://letcode.in/
${MainUrl5}  https://www.tutorialspoint.com/index.htm

*** Test Cases ***
Test demo web shop tricents registration functionality
    [Tags]     Regression
    Open Browser    ${MainURL}   ${Browser}
    Set Selenium speed  1 seconds
    Maximize Browser Window

    # Click Element
    Click Element  xpath://a[@class='ico-register']
    Click Element  xpath://input[@id='gender-male']
    Click Element  xpath://input[@id='gender-female']

    # Input Text
    Input Text  xpath://input[@id='FirstName']   Daniel
    Input Text  xpath://input[@id='LastName']  testing
    Input Text  xpath://input[@id='Email']  testing@gmail.com
    Input Text  xpath://input[@id='Password']  testing
    Input Text  xpath://input[@id='ConfirmPassword']  testing
    close browser
*** Keywords ***

