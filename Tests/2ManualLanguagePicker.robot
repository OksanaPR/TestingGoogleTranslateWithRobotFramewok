*** Settings ***
Documentation  This is an example on how to test the manual language picker
...  for two languages (English and Ukrainian) using SleniumLibrary.

Library  SeleniumLibrary
Library  BuiltIn
Resource  ../Resources/Keywords.robot
Resource  ../Resources/WebElements.robot

Test Teardown  Close All Browsers

*** Test Cases ***
Test Case 1 - Verify English language recognition
  Open browser on Google translate page
#The next step will be executed only if given condition is true. Otherwise it will skip it
  Close Notification popup
  Select Czech language as default
  Type Text in English
  Confirm English is recognized

Test Case 2 - Verify Ukrainian language recognition
  Open browser on Google translate page
  Close Notification popup
  Select Czech language as default
  Type Text in Ukrainian
  Confirm Ukrainian is recognized
