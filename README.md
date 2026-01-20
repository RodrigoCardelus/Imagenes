# 🖼️ ImagenesEnCapas – Arquitectura en Capas en C#

Ejercicio de programación desarrollado en **C# (.NET Framework)** cuyo objetivo es aplicar el concepto de **arquitectura en capas**, utilizando como caso de estudio el **manejo de imágenes** dentro de una aplicación.

El proyecto busca reforzar la correcta separación de responsabilidades entre las distintas capas del sistema, mejorando la organización, el mantenimiento y la escalabilidad del código.

---

## 🎯 Objetivo del Ejercicio

- Aplicar una **arquitectura en capas**
- Separar presentación, lógica y acceso a datos
- Trabajar con **imágenes** dentro de una aplicación
- Reforzar buenas prácticas de diseño de software
- Comprender la importancia de la modularidad

---

## 🧱 Arquitectura en Capas

El sistema se encuentra dividido en capas bien definidas:

- **Presentación**  
  Encargada de la interacción con el usuario y la visualización de imágenes.

- **Lógica**  
  Contiene las reglas de negocio y el procesamiento relacionado con las imágenes.

- **Persistencia / Datos**  
  Gestiona el acceso y almacenamiento de la información (rutas, metadatos, etc.).

---

## 🧩 Conceptos Aplicados

- Arquitectura en capas
- Programación Orientada a Objetos
- Separación de responsabilidades
- Manejo de imágenes
- Reutilización de código

---
## 📂 Estructura del Proyecto

```
ImagenesEnCapas
├── Presentacion/
│   └── Presentacion.csproj
│
├── Logica/
│   └── Logica.csproj
│
├── Persistencia/
│   └── Persistencia.csproj
│
├── Entidades/
│   └── Entidades.csproj
│
└── ImagenesEnCapas.sln
```


---

## ⚙️ Funcionamiento General

- La **capa de presentación** solicita las imágenes a la lógica
- La **lógica** procesa y valida la información
- La **persistencia** maneja el acceso a los datos relacionados
- Cada capa interactúa únicamente con la capa correspondiente

---

## 🧰 Tecnologías Utilizadas

- C#
- .NET Framework
- Arquitectura en capas
- Programación Orientada a Objetos
- Visual Studio

---

## ▶️ Cómo Ejecutar el Proyecto

1. Abrir la solución `ImagenesEnCapas.sln` en **Visual Studio**
2. Establecer el proyecto de **Presentación** como inicio
3. Compilar la solución
4. Ejecutar la aplicación (**F5**)
5. Probar la visualización y manejo de imágenes

---

## 📚 Contexto Académico

Este ejercicio forma parte de prácticas de **Diseño de Software y Arquitectura en Capas**, orientadas a aplicar patrones de organización y separación de responsabilidades en aplicaciones reales.

---

## 👨‍💻 Autor

**Rodrigo Cardelus**  
📍 Uruguay  
🎓 Analista en Programación – Próximo Analista en Sistemas  
🧠 Estudiante de Ciberseguridad  
💬 Apasionado por el desarrollo de software, la arquitectura de sistemas y las buenas prácticas

---

## 📌 Notas

Este proyecto es un **ejercicio académico**, enfocado en el aprendizaje de la arquitectura en capas.  
Puede ampliarse incorporando persistencia real de imágenes, validaciones adicionales o mejoras en la interfaz.

