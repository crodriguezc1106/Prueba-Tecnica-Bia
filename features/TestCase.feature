# language: es

Característica: : Crear empleado proporcionando su nombre y cargo

  Escenario: 1. Crear un nuevo empleado por medio de una API
    Dado que el actor usa un metodo POST para crear un nuevo empleado
    Cuando se envía un name y job en el body de la solicitud
    Entonces se recibe una respuesta tipo JSON
    Y  se recibe el ID del empleado,que debe ser un entero positivo
    Y  el mismo name de la solicitud
    Y  el mismo job de la solicitud
    Y  un status 201