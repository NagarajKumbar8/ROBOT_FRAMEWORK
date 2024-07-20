*** Settings ***
Documentation    Suite description

Library     SeleniumLibrary
Variables     ${EXECDIR}${/}RESOURCES/VARIABLES/GLOBALS.yaml
Variables     ${EXECDIR}${/}RESOURCES/VARIABLES/TEST_DATA.yaml
Variables     ${EXECDIR}${/}RESOURCES/LOCATORS/LOCATORS.yaml
Resource     ${EXECDIR}${/}RESOURCES/UTILS/COMMON.robot


*** Keywords ***
BVT
    [Documentation]  BVT TC
    SeleniumLibrary.capture page screenshot
    wait until element is visible   ${page_locators.Page_Search}     ${GLOBAL_DATA.TIMEOUT}
    input text      ${page_locators.Page_Search}     DR bro
    SeleniumLibrary.capture page screenshot

