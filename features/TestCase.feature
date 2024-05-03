# language: es

Característica: : Crear empleado proporcionando su nombre y cargo

  Escenario: 1. Crear un nuevo empleado por medio de una API
    Dado que el actor usa un metodo POST para crear un nuevo empleado
    Cuando se introduce un nombre y cargo dentro del body
    Entonces muestra una respuesta del ID del empleado
    Y  un status 201