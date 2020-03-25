*** Settings ***
Documentation  This is an example on how to test the automatic language recognition
...  for two languages (English and Ukrainian) using SleniumLibrary.

Library  SeleniumLibrary
Library  BuiltIn

Resource  ../Resources/Keywords.robot
Resource  ../Resources/WebElements.robot
Test Teardown  Close All Browsers

*** Test Cases ***
#It's always better to add Open browser keywords to Setup Suite as it impacts the performance but since I don't have a lot of tests
#I added it to every test
Test Case 1 - Verify English language recognition with Detect language function
  Open browser on Google translate page
  Type Text in English
  Confirm English is detected

Test Case 2 - Verify English language recognition when another language is selected
  Open browser on Google translate page
  Close Notification popup
  Select Czech language as default
  Type Text in English
  Click on Recognised language link
  Confirm English is recognized
  Close Browser

Test Case 3 - Verify Ukrainian language recognition with Detect language function
  Open browser on Google translate page
  Type Text in Ukrainian
  Confirm Ukrainian is detected

Test Case 4 - Verify Ukrainian language recognition when another language is selected
  Open browser on Google translate page
  Close Notification popup
  Select Czech language as default
  Type Text in Ukrainian
  Click on Recognised language link
  Confirm Ukrainian is recognized
  Close Browser