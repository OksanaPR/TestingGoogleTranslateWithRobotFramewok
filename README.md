## Test Google translate functionality with Robot Framewok

This is a short exaple which examplains on how to test Google translate functionality with Python and Robot framework

### 1. Introduction
[Robot Framework](http://robotframework.org) is an open source automation framework for acceptance testing, acceptance test driven development (ATDD), and robotic process automation (RPA). It has simple plain text syntax and it can be extended easily with libraries implemented using Python or Java.

Robot Framework is operating system and application independent. The core framework is implemented using [Python](http://python.org.org), supports both Python 2 and Python 3, and runs also on Jython (JVM), IronPython (.NET) and PyPy. The framework has a rich ecosystem around it consisting of various generic libraries and tools that are developed as separate projects. For more information about Robot Framework and the ecosystem, see http://robotframework.org. Robot Framework development is sponsored by Robot Framework .
- [GitHub](http://github.com/robotframework/robotframework)
- [PyPI](http://pypi.python.org/pypi/robotframework)
- [Maven central](http://search.maven.org/#search%7Cga%7C1%7Ca%3Arobotframework)
------------------------------------------------------------
### 2. Installation
To understand how the framewoork works and the logic of my project you have to follow installation instractions step by step.

#### 2.1 Python and pip
In this project we will be using [Python3](https://www.python.org/downloads/). Just follow the instalractions from the website and install it properly by adding a correct *PATH*. Starting from Python 2.7.9, the standard Windows installer by default installs and activates pip. Now you are ready to install Robot framework. The recommended installation method is using pip: 
```sh
$ pip install robotframework

#upgrade to the latest version
$ pip install --upgrade robotframework
```
------------------------------------------------------------
#### 2.3 PyCharm Editor and Robot plagin

There are a lot of Editors you can use to build your own project but I am using [PyCharm Community](https://www.jetbrains.com/pycharm/download/#section=windows). After installing PyCharm, don't forget to install *Intellibot plugin*(patched for SeleniumLibrary). For this launch PyCharm -> Open File -> Settings dialog -> Click on Plugins -> Search for & install Intellibot and restart PyCharm.

------------------------------------------------------------
#### 2.4 Desired browsers and Selenium Library

In order to work with Selenium Library we have to install and download Selenium Web drivers. The whole list of supported drivers is listed [here](https://selenium.dev/documentation/en/webdriver/driver_requirements/#quick-reference) but in this project I am using only on *Firefox.* [Download Firofox driver](https://github.com/mozilla/geckodriver/releases) -> create special folder to place it in (e.g.C:\bin) -> add this folder to the *PATH*. When you run tests it will know where to take drivers. The same you can for any other driver you want to use. 

To install Selenium Library use pip:

```sh
$ pip install seleniumlibrary
                   
#if you use older version of Python use this command
$ pip install robotframework-seleniumlibrary
```

To use SeleniumLibrary in Robot Framework tests, the library needs to first be imported using the *Library* setting as any other library. The library accepts some import time arguments, which are documented in the keyword documentation along with [all the keywords](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html) provided by the library(e.g.*Open Browser, Input Text, Click Element, Execute Javascript*).

------------------------------------------------------------
#### 2.5 Internal Libraries

By default Robot framework goes with Standart libraries which you don't have to install: Builtin, OperatingSystem, String, Processes, Dialogs, Remote, Telnet, DateTime, Collections, Screenshot and XML.I used Built-In Library.
- ***Built-In Library*** - provides a set of often needed generic keywords. Always automatically available without imports.The provided keywords can be used, for example, for verifications (e.g. Should Be Equal, Should Contain), conversions (e.g. *Convert To Integer*) and for various other purposes (e.g. *Log, Sleep, Set Global Variable, Should be equal*).	
------------------------------------------------------------
### 3.How to execute tests

There are several ways of executing tests(from PyCharm, command line, Task Scheduler, batch file or you can congifure Jenkins). In this project we will run them in 2 ways: from PyCharm and command line. In order to execute tests from PyCharm open Termanal window -> swich to directory where your test are located (e.g. *C:\Users\GitHub\RobotFramework-tutorial\Tests*) -> and execute 

```sh
robot testName.robot
```
After every test execution it creates a report.html, by default this report is added to Tests folder. If you want the results to be in another folder specify it by executing
```sh
robot -d folderForResults testName.robot
```
*Results* folder will be created during execution uder Tests directory or you can create a folder and specify it during execution (exeting should be done from Project folder)
```sh
robot -d Results Tests\testName.robot
```
------------------------------------------------------------
### 4. Project structure
```sh
.
|-- Google Translate
|   |-- Libraries
|   |   |-- library.py
|   |-- Resources
|   |   |-- WebElements.robot
|   |   |-- Keywords.robot
|   |-- Tests
|   |   |-- TestSuite1.robot
|   |   |-- TestSuite2.robot
|   |   |-- TestSuite3.robot
|   |   |-- TestSuite4.robot
|   |-- Results
```
All variables are in *WebElements.robot* file. It always better to create web element for every page in separate files but in my case as an example I was using only one.
Keywords are also in sepate directory *Keywords.robot* and they are used in all Test Cases. It also better to create separate keywords files for every web page, in this case it's easier to maintain them, as an example I used one directory.

Tests directory contains only tests written using SeleniumLibrary mostly and BuiltIn.

You can easily download the project, unzip it and following all instactions above just run tests.

------------------------------------------------------------

### 5. Examples:
    Automatic language recognition for two languages
     
           *** Settings ***
           Documentation  This is an example on how to test the automatic language recognition
          ...  for two languages (English and Ukrainian) using SleniumLibrary.

          Library  SeleniumLibrary
          Library  BuiltIn
          Resource  ../Resources/Keywords.robot
          Resource  ../Resources/WebElements.robot
          Test Teardown  Close All Browsers

         *** Test Cases ***
         #It's always better to add Open browser keywords to Setup Suite as it impacts the performance 
         but since I don't have a lot of tests. I added it to every test
         
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

Just two simple tests which check English and Ukrainian language recognition. Other tests examples  are in Tests directory.

     Keywords.robot
    
     #This files contains Keywords used in all Tests. It's always better to split Keywords into
     #different files depending on every test case. But since this is only example I am puting everything into one file

     *** Keywords ***
     #**********************************Common Keyword**********************************************************
     Open browser on Google translate page
         Open browser  ${TRANSLATOR_URL}  ${BROWSER}
         Page should contain element  ${LOGO}  ${DETECT_LANG_BUTTON}  limit=2

     #**********************************Test Suite 1 Keywords****************************************************
     Type Text in English
         Input Text  ${TEXT_FIELD}  ${TEXT1}
         ${TEXT_FIELD_VALUE}  Get Value  ${TEXT_FIELD}
         Should be equal   ${TEXT1}  ${TEXT_FIELD_VALUE}

     Type Text in Ukrainian
         Input Text  ${TEXT_FIELD}  ${TEXT2}
         ${TEXT_FIELD_VALUE}  Get Value  ${TEXT_FIELD}
         Should be equal   ${TEXT2}  ${TEXT_FIELD_VALUE}
         
### 5.Create custom library using Python for Document translation functionality

Not finished

This should be tested by usuing manually created Python Library.The Library should create Document in all supported formats and then upload this Document to Google Translate. It's also possible to create Keywords with Python which should be reused in Test Cases.











