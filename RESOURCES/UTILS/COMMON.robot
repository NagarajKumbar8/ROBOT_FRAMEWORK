*** Settings ***
Documentation    Suite description

Library     SeleniumLibrary
Variables     ${EXECDIR}${/}RESOURCES/VARIABLES/GLOBALS.yaml
Variables     ${EXECDIR}${/}RESOURCES/VARIABLES/TEST_DATA.yaml
Variables     ${EXECDIR}${/}RESOURCES/LOCATORS/LOCATORS.yaml

*** Keywords ***
Launch_Application ${ENV} ${BROWSER}
    SeleniumLibrary.open browser    ${GLOBAL_DATA.${ENV}}   ${GLOBAL_DATA.${BROWSER}}
    maximize browser window

close_open_session
    close all browsers