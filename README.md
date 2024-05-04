# Prueba-Técnica-Bia-1

Proyecto creado para realizar el primer punto de la prueba tecnica para Bia

## Descripción

Proyecto desarrollado con Robot Framework para el primer punto de la prueba técnica de Bia

### Dependencias

* Python version 3.0 o superior
* Windows 10 en adelante

### Instalación

1. Clone el repositorio desde GitHub
2. En la consola, en la carpeta raiz del proyecto escriba: `python -m venv .venv` para crear un nuevo **virtual environment**.
3. Vaya a la carpeta scripts en el **virtual environment:** `cd .venv/Scripts`.
4. Active el **virtual environment** escribiendo `.\activate.ps1`. Virtual environment al ser activado, agrega el nombre en parentesis antes de la linea del cursor en la consola asi: 
`(.venv) PS ...`.
5. Instale las dependencias escribiendo `pip3 install -r requirements.txt`.
6. Para desactivar el **virtual environment,** vaya de nuevo a la carpeta de scripts (`cd .venv/Scripts`) y luego escriba `.\deactivate.ps1`.

### Ejecución del programa

* Asegurese que el **virtual environment** este activado.
* Escriba en la consola  `robot tests/TestCase.robot` y pulse enter

### Autor

Catherine Rodriguez Cubillos [@crodriguezc1106](https://github.com/crodriguezc1106)