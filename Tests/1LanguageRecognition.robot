*** Settings ***
Documentation  This is an example on how to test the automatic language recognition
...  for two languages (English and Ukrainian) using SleniumLibrary.

Library  SeleniumLibrary
Library  BuiltIn
Resource  ../Resources/Keywords.robot
Resource  ../Resources/WebElements.robot
Test Teardown  Close All Browsers

*** Test Cases ***
Test Case 1 - Verify English language recognition
  Open browser on Google translate page
  Type Text in English
  Confirm English is detected


Test Case 3 - Verify Ukrainian language recognition
  Open browser on Google translate page
  Type Text in Ukrainian
  Confirm Ukrainian is detected