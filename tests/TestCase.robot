*** Settings ***
Library           RequestsLibrary
Library           Collections
Library           JSONLibrary

*** Variables ***
${URL}        https://reqres.in/api/users
&{HEADERS}    Content-Type=application/json
${DATA}       {"name": "Catherine Rodriguez", "job": "QA Automation"}

*** Test Cases ***
Crear un nuevo empleado por medio de una API
    Given el actor usa un metodo POST para crear un nuevo empleado
    When se envía un name y job en el body de la solicitud
    Then se recibe una respuesta tipo JSON
    And se recibe el ID del empleado, que debe ser un entero positivo
    And el mismo name de la solicitud
    And el mismo job de la solicitud
    And un status 201

*** Keywords ***
el actor usa un metodo POST para crear un nuevo empleado
    Create Session    session1    ${URL}   headers=&{HEADERS}

se envía un name y job en el body de la solicitud
    ${body}=          Convert String To Json   ${DATA}
    ${response}=      POST On Session     session1   ${URL}     json=${body}   headers=&{HEADERS}
    Set Global Variable    ${response}

se recibe una respuesta tipo JSON
    Should Have Value In Json     ${response.json()}  $..name

se recibe el ID del empleado, que debe ser un entero positivo
    ${json}=    Set Variable    ${response.json()}
    Set Global Variable    ${json}
    Dictionary Should Contain Key    ${json}    id
    Should Be True    ${json['id']} > 0

el mismo name de la solicitud
    Dictionary Should Contain Key    ${json}    name
    Should Be Equal      ${json['name']}        Catherine Rodriguez

el mismo job de la solicitud
    Dictionary Should Contain Key    ${json}    job
    Should Be Equal      ${json['job']}        QA Automation

un status 201
    Should Be Equal As Strings    ${response.status_code}    201