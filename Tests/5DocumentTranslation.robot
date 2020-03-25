*** Settings ***
Documentation  This is an example on how to test Document translation functionality usuing Python Library.

Library  SeleniumLibrary
Library  BuiltIn
Library  DocumentTranslation.python

Resource  ../Resources/Keywords.robot
Resource  ../Resources/WebElements.robot
Test Teardown  Close All Browsers

*** Test Cases ***
Test case 1 - Verify Document in all supported formats can be uploaded (.doc, .docx, .odf, .pdf, .ppt, .pptx, .ps, .rtf, .txt, .xls, or .xlsx)

Test case 2 - Verify language recognition for all supported formats