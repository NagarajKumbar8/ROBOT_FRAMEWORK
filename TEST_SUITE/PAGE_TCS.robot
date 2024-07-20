*** Settings ***
Documentation    Suite description

Library     SeleniumLibrary

Resource     ${EXECDIR}${/}PAGES/APP_NAME.robot
Resource     ${EXECDIR}${/}RESOURCES/UTILS/COMMON.robot

Test Setup      Launch_Application ${ENV} ${BROWSER}
Test Teardown   close_open_session

*** Test Cases ***
TC1_Openapp
   [Tags]  BVT
    BVT
