#This files contains Keywords used in all Tests. It's always better to split Keywords into
#different files depending on every test case. But since this is only example I am puting everything into one file

*** Keywords ***
Open browser on Google translate page
  Open browser  ${TRANSLATOR_URL}  ${BROWSER}
  Page should contain element  ${LOGO}  ${DETECT_LANG_BUTTON}  limit=2

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

Confirm Ukrainian is detected
  ${LANG_VALUE}  Get Value  ${DETECT_LANG_BUTTON}

Close Notification popup
  Click Element  ${NOTIFICATION}

Select Czech language as default
  Click Element  ${DETECT_LANG_BUTTON}
  Page should contain element  ${LANG_LIST}
  Set Focus to Element  ${CZECH_LANG}
  Click Element  ${CZECH_LANG}
  Page should contain element  ${SELECTED_LANG}  ${CZECH}  limit=2