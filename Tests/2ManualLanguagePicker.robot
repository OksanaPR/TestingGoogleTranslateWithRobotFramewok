*** Settings ***
Documentation  This is an example on how to test the manual language picker
...  for two languages (from English to Ukrainian) using SleniumLibrary.

Library  SeleniumLibrary
Library  BuiltIn
Resource  ../Resources/Keywords.robot
Resource  ../Resources/WebElements.robot
Test Teardown  Close All Browsers

*** Test Cases ***
Test Case 1 - Verify User can select language manually (translate from and translate to)
  Open browser on Google translate page
  Set translate from English language
  Set translate to Ukrainian language
  Set translate to Ukrainian language