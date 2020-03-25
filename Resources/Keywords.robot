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

Confirm English is detected
  ${LANG_VALUE}  Get Value  ${DETECT_LANG_BUTTON}
#google translate doesn't allow to get from the structure which text was written as autput

Confirm Ukrainian is detected
  ${LANG_VALUE}  Get Value  ${DETECT_LANG_BUTTON}
#google translate doesn't allow to get from the structure which text was written as autput

Close Notification popup
  Click Element  ${NOTIFICATION}

Select Czech language as default
  Click Element  ${DETECT_LANG_BUTTON}
  Page should contain element  ${LANG_LIST}
  Set Focus to Element  ${CZECH_LANG}
  Click Element  ${CZECH_LANG}
  ${LANG_VALUE}  Get Value  ${FOCUSED_BUTTON}
  Should be equal  ${CZECH}  ${LANG_VALUE}

#**********************************Test Suite 2 Keywords****************************************************
Set translate from English language
  Close Notification popup
  Click Element  ${DETECT_LANG_BUTTON}
  Page should contain element  ${LANG_LIST}
  Set Focus to Element  ${ENGLISH_LANG}
  Click Element  ${ENGLISH_LANG}
  ${RECOGNIZED_LANG}  Get Value  ${FOCUSED_BUTTON}
  Should be equal  ${ENGLISH}  ${RECOGNIZED_LANG}

Set translate to Ukrainian language
  Execute JavaScript  ${CLICK_DPOPDOWN}
  Execute JavaScript  ${SELECT_UKR}
  Log Location
  Location Should Contain  ${CORRECT_LANG}

Confirm English is recognized
  ${RECOGNIZED_LANG}  Get Value  ${FOCUSED_BUTTON}
  Should be equal  ${ENGLISH}  ${RECOGNIZED_LANG}

Confirm Ukrainian is recognized
  ${RECOGNIZED_LANG}  Get Value  ${FOCUSED_BUTTON}
  Should be equal  ${UKRAINIAN}  ${RECOGNIZED_LANG}

Click on Recognised language link
  Wait Until Element Is Visible  ${SPELLING_CORRECTION}
  Execute JavaScript  document.querySelector("#spelling-correction a").click()


#**********************************Test Suite 3 Keywords****************************************************

Exchange languages
#This Keyword verifies language exchange button by pressing the button on UI and by using shortcut
  Click Element  ${EXCHANGE_LANG}
  Log Location
  Location Should Contain  ${UKR_TO_ENG}
  Press Keys  None  CONTROL+SHIFT+S
  Log Location
  Location Should Contain  ${ENG_TO_UKR}

#**********************************Test Suite 4 Keywords****************************************************
Read Text with JavaScript
  ${GET_TEXT}  Execute Javascript  return document.getElementById('source').value
  Should be equal  ${TEXT1}  ${GET_TEXT}

Confirm empty Textfield with JavaScript
  ${GET_TEXT}  Execute Javascript  return document.getElementById('source').value
  Should be equal  ${EMPTY_FIELD}  ${GET_TEXT}

Delete Text
#Make sure text is in the textfield
  Read Text with JavaScript
  Press keys  None  CTRL+A
  Press keys  None  BACKSPACE
#Make sure textfield is empty
  Confirm empty Textfield with JavaScript
  Type Text in English
#Make sure text is in the textfield
  Read Text with JavaScript
  Press keys  None  CTRL+A
  Click Element  ${DELETE_BUTTON}
#Make sure textfield is empty
  Confirm empty Textfield with JavaScript
