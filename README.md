## Test Google translate functionality with Robot Framewok

This is a short exaple which examplains on how to test Google translate functionality with Python and Robot framework

Table of content:
### 1. Introduction
### 2. Installation
 - Python and pip
 - Robot framework
 - PyCharm Editor and Robot plagin
 - Desired browsers and Selenium Library
 - Internal Libraries
### 3.How to execute tests
### 4. Project structure
### 5. Tests examples:
* Automatic language recognition for two languages
* Manual language picker functionality
* Language exchange option functionality
* Delete text option 
* Document translation functionality
### 5.Create custom library using Python for Document translation functionality


### 1. Introduction
------------------------------------------------------------
[Robot Framework](http://robotframework.org) is an open source automation framework for acceptance testing, acceptance test driven development (ATDD), and robotic process automation (RPA). It has simple plain text syntax and it can be extended easily with libraries implemented using Python or Java.

Robot Framework is operating system and application independent. The core framework is implemented using [Python](http://python.org.org), supports both Python 2 and Python 3, and runs also on Jython (JVM), IronPython (.NET) and PyPy. The framework has a rich ecosystem around it consisting of various generic libraries and tools that are developed as separate projects. For more information about Robot Framework and the ecosystem, see http://robotframework.org. Robot Framework development is sponsored by Robot Framework .
- [GitHub](http://github.com/robotframework/robotframework)
- [PyPI](http://pypi.python.org/pypi/robotframework)
- [Maven central](http://search.maven.org/#search%7Cga%7C1%7Ca%3Arobotframework)

### 2. Installation
------------------------------------------------------------
To understand how the framewoork works and the logic of my project you have to follow installation instractions step by step.

#### 2.1 Python and pip
------------------------------------------------------------
In this project we will be using [Python3](https://www.python.org/downloads/). Just follow the instalractions from the website and install it properly by adding a correct *PATH*. Starting from Python 2.7.9, the standard Windows installer by default installs and activates pip. Now you are ready to install Robot framework. The recommended installation method is using pip: 

                      pip install robotframework
                      
                      #upgrade to the latest version
                      pip install --upgrade robotframework

#### 2.3 PyCharm Editor and Robot plagin
------------------------------------------------------------

There are a lot of Editors you can use to build your own project but I am using [PyCharm Community](https://www.jetbrains.com/pycharm/download/#section=windows). After installing PyCharm, don't forget to install *Intellibot plugin*(patched for SeleniumLibrary). For this launch PyCharm -> Open File -> Settings dialog -> Click on Plugins -> Search for & install Intellibot and restart PyCharm.

#### 2.4 Desired browsers and Selenium Library
------------------------------------------------------------

In order to work with Selenium Library we have to install and download Selenium Web drivers. The whole list of supported drivers is listed [here](https://selenium.dev/documentation/en/webdriver/driver_requirements/#quick-reference) but in this project I am using only on *Firefox.* [Download Firofox driver](https://github.com/mozilla/geckodriver/releases) -> create special folder to place it in (e.g.C:\bin) -> add this folder to the *PATH*. When you run tests it will know where to take drivers. The same you can for any other driver you want to use. To install Selenium Library use pip:

                        pip install seleniumlibrary

To use SeleniumLibrary in Robot Framework tests, the library needs to first be imported using the *Library* setting as any other library. The library accepts some import time arguments, which are documented in the keyword documentation along with [all the keywords](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html) provided by the library(e.g.*Open Browser, Input Text, Click Element, Execute Javascript*).

#### 2.5 Internal Libraries
------------------------------------------------------------

By default Robot framework goes with Standart libraries which you don't have to install: Builtin, OperatingSystem, String, Processes, Dialogs, Remote, Telnet, DateTime, Collections, Screenshot and XML.
- ***Built-In Library*** - provides a set of often needed generic keywords. Always automatically available without imports.The provided keywords can be used, for example, for verifications (e.g. Should Be Equal, Should Contain), conversions (e.g. *Convert To Integer*) and for various other purposes (e.g. *Log, Sleep, Run Keyword If, Set Global Variable, Should be equal*).	

### 3.How to execute tests
------------------------------------------------------------

There are several ways of executing tests(from PyCharm, command line, Task Scheduler, batch file or you can congifure Jenkins). In this project we will run them in 2 ways: from PyCharm and command line. In order to execute tests from PyCharm open Termanal window -> swich to directory where your test are located (e.g. *C:\Users\GitHub\RobotFramework-tutorial\Tests*) -> and execute 

                         robot testName.robot

After every test execution it creates a report.html, by default this report is added to Tests folder. If you want the results to be in another folder specify it by executing
                         
                         robot -d folderForResults testName.robot

*Results* folder will be created during execution.

### 4. Project structure
------------------------------------------------------------
Assume the project name is "GoogleTranslate"

        .
        |-- Google Translate
        |   |-- Libraries
        |   |   |-- library1.py
        |   |   |-- library2.py
        |   |-- Resources
        |   |   |-- home_page.robot
        |   |   |-- search_page.robot
        |   |-- Tests
        |   |   |-- test1.robot
        |   |   |-- test2.robot
        |   |-- Results
As we know, in web system automation developing, for reducing the amount of duplicated code and means that if the UI changes, the fix need only be applied in one place, we commonly use [Page Objects][Page Objects] with [UI Mapping][UI Mapping].  

But Robot Framework is a not an Object Oriented Framework.  So in the spirit of Page Objects we should call it Page Resources.  


# Testing of the automatic language recognition for two languages
For this use case we will create several test cases using SleniumLibrary. We will use two languages - English and Ukrainian.
        Test Case 1 
        Test Case 2
        Test Case 3
        Test Case 4
        Test Case 5


















