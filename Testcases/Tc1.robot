*** Settings ***
Library  Selenium2Library
Library  SeleniumLibrary
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.facebook.com/

*** Test Cases ***
LoginTest
    Openingbrowser
    EditLogin


*** Keywords ***
Openingbrowser
    Open browser   ${url}   ${browser}


EditLogin
    click element  xpath://*[@id="email"]
    input text  xpath://*[@id="email"]  balan_jesu@yahoo.com
    SET SELENIUM IMPLICIT WAIT  50000 seconds
    input text  xpath://*[@id="pass"]   asasas
    click element  xpath://*[@id="loginbutton"]
    close browser
