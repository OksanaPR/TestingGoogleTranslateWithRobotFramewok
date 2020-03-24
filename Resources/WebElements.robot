#This files contains Variables used in all Tests. It's always better to split Variables into
#different files depending on every web page. But since this is only example I am puting everything into one file

*** Variables ***
#***************Common Variables*****************
${BROWSER}  firefox
${TRANSLATOR_URL}  https://translate.google.com/
${LOGO}  xpath=//*[@class='gb_mc']
${DETECT_LANG_BUTTON}  xpath=//*[@value='auto']
${TEXT_FIELD}  xpath=//*[@id="source"]

#***************Test Case spesific Variables*****************
${TEXT1}  Test text
${TEXT2}  Тестовий текст
${SELECT_LANG}  xpath=//*[@class='language-list']
${RIGHT_LANG_BUTTON}  xpath=//*[@class='sl-sugg-button-container']
${LEFT_LANG_BUTTON}
${NOTIFICATION}  xpath=//*[@class='tlid-acknowledge-button-overlay acknowledge-button-overlay']
${NOTIFICATION_AREA}  notification-area
${LANG_LIST}  xpath=//*[@class='displaying-homepage with-sl-list with-lang-list']
${CZECH_LANG}  xpath=//*[@class='language_list_item_wrapper language_list_item_wrapper-cs']
${ENGLISH_LANG}  xpath=//*[@class='language_list_item_wrapper language_list_item_wrapper-en']
${ENGLISH}  id:'sugg-item-en'
${SELECTED_LANG}  //*[@class='goog-inline-block jfk-button jfk-button-standard jfk-button-collapse-left jfk-button-collapse-right jfk-button-checked']
${CZECH}  id:'sugg-item-cs'