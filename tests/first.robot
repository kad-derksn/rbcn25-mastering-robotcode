*** Settings ***
Library        Browser

*** Variables ***
${BROWSER}     chromium
${HEADLESS}    No
${APP_URL}     localhost:3000   

*** Test Cases ***
first
    New Browser      ${BROWSER}      ${HEADLESS}
    New Page         ${APP_URL} 
    Type Text        input[id="todo-input"]     do something
    Click            button[id="add-todo-button"]
    
    Take Screenshot