# Fundamentos de POO con Dart y Flutter

Repositorio de ejercicios prácticos desarrollados como parte de la actividad de fundamentos de Programación Orientada a Objetos (POO) en **Dart** y **Flutter**.

**Autor:** Pablo Andres Quiroz Giraldo

## Estructura del repositorio

El desarrollo se organizó mediante ramas por cada módulo/video de la serie (`Dart_00` hasta `Flutter_00`) con commits atómicos en español:

1. **`dart_00_fundamentos/`** (`feature/dart-00-fundamentos`)
   - Configuración inicial, `main()`, variables, tipos de datos, null safety, operadores, interpolación y colecciones básicas.
2. **`dart_01_de_csharp_a_dart/`** (`feature/dart-01-de-csharp-a-dart`)
   - Traducción de conceptos clave de C# a Dart: condicionales, bucles (`for`, `while`, `do-while`, `for-in`), excepciones, funciones, clases, herencia y polimorfismo.
3. **`dart_02_poo_avanzada/`** (`feature/dart-02-poo-avanzada`)
   - Encapsulamiento (`_privado`, getters/setters), clases abstractas, interfaces (`implements`), mixins, métodos funcionales sobre colecciones y ejercicio integrador.
4. **`flutter_00_app/`** (`feature/flutter-00-introduccion`)
   - Primera aplicación en Flutter aplicando `MaterialApp`, `Scaffold`, `StatelessWidget`, `StatefulWidget`, `setState` y modelos POO.

## Cómo ejecutar los ejercicios

```bash
# Ejecutar cualquier archivo de Dart
dart run dart_00_fundamentos/01_hola_mundo.dart

# Ejecutar la aplicación Flutter
cd flutter_00_app
flutter pub get
flutter run
```
