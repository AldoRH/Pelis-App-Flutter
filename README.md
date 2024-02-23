
# Pelis-App

## Descripción
Esta es una aplicación simple para ver películas que utiliza la API de The Movie Database (TMDb). Puedes explorar películas, ver detalles y disfrutar de información detallada sobre tus películas favoritas.

## Requisitos previos
Antes de ejecutar la aplicación, asegúrate de tener Flutter instalado en tu sistema. Puedes encontrar instrucciones para instalar Flutter aquí.

## Configuración de API_KEY
Para obtener datos de películas de TMDb, necesitarás una clave de API. Sigue estos pasos para obtener tu clave:

Ve a https://developer.themoviedb.org/docs/getting-started.
Crea una cuenta o inicia sesión si ya tienes una.
Después de iniciar sesión, ve a tu página de configuración de la API.
Genera una nueva clave de API.
Una vez que tengas tu clave de API, crea un archivo .env en el directorio raíz de tu proyecto y agrega la siguiente línea:
API_KEY=TU_CLAVE_DE_API
Reemplaza TU_CLAVE_DE_API con la clave que obtuviste.

## Instalación de flutter_dotenv
Este proyecto utiliza flutter_dotenv para cargar variables de entorno desde el archivo .env.

Asegúrate de importar y cargar el archivo .env en tu aplicación. Puedes hacerlo en el punto de entrada de tu aplicación (por ejemplo, main.dart):
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  await dotenv.load();
  runApp(MyApp());
}

## Ejecutando la aplicación
Después de completar la configuración anterior, puedes ejecutar la aplicación con:
flutter run
