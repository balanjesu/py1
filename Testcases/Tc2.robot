*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://www.myntra.com/
${tit1}

*** Test Cases ***
Testcase2
    OPEN BROWSER  ${url}    ${browser}
    maximize browser window
    ${tit1}    get title
    ${result}   wait until element is enabled  xpath://*[@id="desktop-header-cnt"]/div[2]/div[1]/a
    wait until element is visible  xpath://*[@id="desktop-header-cnt"]/div[2]/div[1]/a
    title should be     ${tit1}
    log  ${tit1}
    ${"searchbox"}  set variable  xpath://*[@id="desktop-header-cnt"]/div[2]/div[3]/input
    element should be visible   ${"searchbox"}
    element should be enabled   ${"searchbox"}
    input text  ${"searchbox"}  jesu
    sleep  2
    double click element  ${"searchbox"}
    input text  ${"searchbox"}  ${SPACE}

    clear element text  ${"searchbox"}
    



    sleep  5
    click element  xpath://*[@id="desktop-header-cnt"]/div[2]/div[2]/div/div[1]
    click element  xpath://*[@id="desktop-header-cnt"]/div[2]/div[2]/div/div[2]/div[2]/div[2]/div[1]
    close browser

*** Keywords ***


