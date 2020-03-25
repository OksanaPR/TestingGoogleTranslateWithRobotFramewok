*** Settings ***
Documentation  This is an example on how to test delete text functionality using SleniumLibrary.

Library  SeleniumLibrary
Library  BuiltIn
Resource  ../Resources/Keywords.robot
Resource  ../Resources/WebElements.robot

Test Teardown  Close All Browsers


*** Test Cases ***
Test Case 7 - Verify delete text option
  Open browser on Google translate page
  Type Text in English
#This key word deletes text in two ways: with Backspaces on the keyboard and with Delete button on UI
  Delete Text
