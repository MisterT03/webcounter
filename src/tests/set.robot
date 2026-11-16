*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Set Counter Value
    Go To  ${HOME_URL}
    Click  button >> text=Nollaa
    Fill Text  input[name="value"]  10
    Click  button >> text=Aseta
    Get Text  body  *=  nappia painettu 10 kertaa