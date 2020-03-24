*** Settings ***
Documentation  This is an example on how to test the manual language exchange
...  for two languages (English and Ukrainian) using SleniumLibrary.

Library  SeleniumLibrary
Library  BuiltIn
Resource  ../Resources/Keywords.robot
Resource  ../Resources/WebElements.robot

Test Teardown  Close All Browsers


*** Test Cases ***
Test Case 1 - Verify Language Exchange
  Open browser on Google translate page
  Set translate from English language
  Set translate to Ukrainian language
#This keyword exchange languages by pressing button on UI and by using shortcuts
  Exchange languages