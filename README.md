## How to test Google translate functionality with Robot Framewok

This is a short tutorial which explains on how to test Google translate functionality with Python and Robot framework

Table of content:
- Introduction
- Installation
- Tests examples of the automatic language recognition for two languages
- Testing the manual language picker functionality
- Testing the Language exchange option functionality
- Testing the delete text option 
- Testing the document translation functionality

# Introduction
Robot Framework is an open source automation framework for acceptance testing, acceptance test driven development (ATDD), and robotic process automation (RPA). It has simple plain text syntax and it can be extended easily with libraries implemented using Python or Java.

Robot Framework is operating system and application independent. The core framework is implemented using Python, supports both Python 2 and Python 3, and runs also on Jython (JVM), IronPython (.NET) and PyPy. The framework has a rich ecosystem around it consisting of various generic libraries and tools that are developed as separate projects. For more information about Robot Framework and the ecosystem, see http://robotframework.org. / Robot Framework development is sponsored by Robot Framework .
        - GitHub
        - PyPI
        - Maven central
# Installation
I will split this into two levels and you choose which one you prefer
  - Basic - you have to step by step follow installation instractions to understand how this framework works.
  - Advanced - you just have to download the whole project in zip format, open it in your Editor and start running tests. Only Python should be installed, all other comes together with the project (Driver, Maven dependancies).
  
  # Basic level
  Python
In this project we will be using Python3 . Just follow the instalractions from the website and install it properly by adding a correct PATH. Starting from Python 2.7.9, the standard Windows installer by default installs and activates pip. Now you are ready to install Robot framework. The recommended installation method is using pip_: These names would be somewhat long:

                      pip install robotframework
                      #upgrade to the latest version
                      pip install --upgrade robotframework


  Editors
There are a lot of Editors you can use to build your own project, in this specific I am using PyCharm Community. After installing PyCharm, don't forget to install Intellibot plugin.




















