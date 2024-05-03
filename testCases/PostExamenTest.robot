*** Settings ***
# Importamos las librerías necesarias para las pruebas

Library    RequestsLibrary
Library    OperatingSystem
Library    Collections
Library    Dialogs


*** Variables ***
# Definimos la URL del endpoint de la API
${url}        https://reqres.in/

*** Test Cases ***
Escenario: 1.Crear un nuevo empleado por medio de una API

     Create Session    session1             ${url}
     ${endpoint}       Set Variable         /api/users
     ${body}=          Create Dictionary    name : camilo    job : autor
     ${response}=      POST On Session      session1    ${endpoint}     data=${body}
     Log To Console    ${response.status_code}

     ${status_code}=    Convert To String    ${response.status_code}
     Should Be Equal    ${status_code}           201

     ${json_response}=  Convert To String    ${response.content}
