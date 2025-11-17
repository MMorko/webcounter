*** Keywords ***
Reset Counter
    Go To  ${HOME_URL}
    Click Button  Nollaa

*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Reset Counter

*** Test Cases ***
When counter is given a value it becomes the counter's new value
    Go To  ${HOME_URL}
    Input Text  value  5
    Click Button  Aseta
    Page Should contain  nappia painettu 5 kertaa