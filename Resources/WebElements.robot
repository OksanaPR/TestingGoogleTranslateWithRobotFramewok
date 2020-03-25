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
${NOTIFICATION_AREA}  xpath=//*[@class='acknowledge-button button']

${LANG_LIST}  xpath=//*[@class='displaying-homepage with-sl-list with-lang-list']
${CZECH_LANG}  xpath=//*[@class='language_list_item_wrapper language_list_item_wrapper-cs']
${FOCUSED_BUTTON}  xpath=//*[@class='goog-inline-block jfk-button jfk-button-standard jfk-button-collapse-left jfk-button-collapse-right jfk-button-checked']
${CZECH}  cs
${UKRAINIAN}  uk
${ENGLISH_LANG}  xpath=//*[@class='language_list_item_wrapper language_list_item_wrapper-en']
${ENGLISH}  en
${CLICK_DPOPDOWN}  document.getElementsByClassName("tl-more tlid-open-target-language-list")[0].click()
${SELECT_UKR}  document.getElementsByClassName("language-list")[1].getElementsByClassName("language_list_item_wrapper-uk")[0].click()
${SPELLING_CORRECTION}  xpath=//*[@href='javascript:void(0)']
${MORE}  //*[@class='tl-more tlid-open-target-language-list']
${UKR_LANG}  //*[@class='language_list_item_wrapper language_list_item_wrapper-uk']
${SPELLING_CORRECTION}  css:#spelling-correction a
${UKR_LANG_SELECTED}  language_list_item_wrapper-uk
${CORRECT_LANG}  op=translate&sl=en&tl=uk
${EXCHANGE_LANG}  //*[@class='swap jfk-button-narrow jfk-button-standard jfk-button']
${UKR_TO_ENG}  op=translate&sl=uk&tl=en
${ENG_TO_UKR}  op=translate&sl=en&tl=uk
${DELETE_BUTTON}  //*[@class='clear-wrap']
${EMPTY_FIELD}