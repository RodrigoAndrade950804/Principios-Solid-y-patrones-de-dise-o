Pepito es un Ingeniero de Software Junior en Codificando Con Patrones Cía. Ltda. Se le ha encargado la tarea de completar los requerimientos funcionales del aplicativo de automóviles al que la empresa da soporte. 

Los requisitos son los siguientes: 

- Implementar los métodos de agregar vehículos (add Mustang y add Explorer) en el Home Page. El programador anterior implementó un patrón repositorio que contiene los métodos CRUD para el repositorio de automóviles; sin embargo, el equipo de QA ha reportado que no funciona como se espera. 
 

- El equipo de base de datos ha comentado que el esquema de la base de datos no está listo. Por lo que se necesita buscar una forma de probar la funcionalidad sin tener que guardar en la base de datos, de tal forma que después se implemente la funcionalidad de base de datos cuando esté lista. 

- El equipo de negocio ha solicitado agregar el año actual, y 20 propiedades más por defecto que se solicitarán en el siguiente sprint. Estas propiedades afectan a vehículo. Implementa un patrón de diseño para agregar propiedades por defecto, y como lo diseñarías para minimizar los cambios para el siguiente sprint. 

- Se planea agregar un nuevo modelo. El Arquitecto de Software prevee que la unidad de negocio, planeará la introducción de más modelos por lo cual sugiere la implementación de un Factory Method. 

  - Color: Red 

  - Marca: Ford 

  - Modelo: Escape 

 

 

Como primera parte del taller los alumnos tendrán: 

Que analizar el código propuesto y deberán identificar que mejores prácticas, patrón o patrones se puede implementar para mejorar la solución. 

Segundo deberán presentar en un documento explicativo de las mejores prácticas con el diseño UML del patrón o patrones a implementar y justificar el motivo de la propuesta. 

 Y finalmente los alumnos procederán a clonar el repositorio base e implementar el patrón o los patrones propuestos en la una versión online (código debe tener comentarios) 

 

FORMA DE TRABAJO: 

Establezca grupos de trabajo de máximo 2 integrantes. 

 

ESPECIFICACIONES DE ENTREGA: 

Documento técnico que contiene los siguientes puntos: 

Identifica el problema dentro de las restricciones del proyecto: 	Describir los problemas encontrados en el escenario propuesto por el docente de una manera técnica identificando de manera correcta las limitaciones y restricciones. 

Selecciona metodologías integrales para solucionar el problema: En el documento técnico explicar los patrones que seleccionan y justarlos de manera técnica  

 

Diseña una propuesta técnica para el problema considerando los recursos y restricciones del proyecto: 

Prototipo de la solución aplicado el patrón de diseño, compartido en GIT 

 

 

```
Best-Practices-Udla-Workshop-master
├─ Best Practices.sln
├─ BestPractices
│  ├─ appsettings.Development.json
│  ├─ appsettings.json
│  ├─ Best Practices.csproj
│  ├─ Controllers
│  │  └─ HomeController.cs
│  ├─ Infraestructure
│  │  ├─ DependencyInjection
│  │  │  └─ ServicesConfiguration.cs
│  │  ├─ Factories
│  │  │  ├─ Creator.cs
│  │  │  ├─ FordEscapeCreator.cs
│  │  │  ├─ FordExplorerCreator.cs
│  │  │  └─ FordMustangCreator.cs
│  │  └─ Singletons
│  ├─ ModelBuilders
│  │  └─ CarBuilder.cs
│  ├─ Models
│  │  ├─ Car.cs
│  │  ├─ ErrorViewModel.cs
│  │  ├─ HomeViewModel.cs
│  │  ├─ IVehicle.cs
│  │  ├─ Motocycle.cs
│  │  └─ Vehicle.cs
│  ├─ Program.cs
│  ├─ Properties
│  │  └─ launchSettings.json
│  ├─ Repositories
│  │  ├─ DBVehicleRepository.cs
│  │  ├─ IVehicleRepository.cs
│  │  └─ MyVehiclesRepository.cs
│  ├─ Startup.cs
│  ├─ Views
│  │  ├─ Home
│  │  │  ├─ Index.cshtml
│  │  │  └─ Privacy.cshtml
│  │  ├─ Shared
│  │  │  ├─ Error.cshtml
│  │  │  ├─ _Layout.cshtml
│  │  │  └─ _ValidationScriptsPartial.cshtml
│  │  ├─ _ViewImports.cshtml
│  │  └─ _ViewStart.cshtml
│  └─ wwwroot
│     ├─ css
│     │  └─ site.css
│     ├─ favicon.ico
│     ├─ js
│     │  └─ site.js
│     └─ lib
│        ├─ bootstrap
│        │  ├─ dist
│        │  │  ├─ css
│        │  │  │  ├─ bootstrap-grid.css
│        │  │  │  ├─ bootstrap-grid.css.map
│        │  │  │  ├─ bootstrap-grid.min.css
│        │  │  │  ├─ bootstrap-grid.min.css.map
│        │  │  │  ├─ bootstrap-reboot.css
│        │  │  │  ├─ bootstrap-reboot.css.map
│        │  │  │  ├─ bootstrap-reboot.min.css
│        │  │  │  ├─ bootstrap-reboot.min.css.map
│        │  │  │  ├─ bootstrap.css
│        │  │  │  ├─ bootstrap.css.map
│        │  │  │  ├─ bootstrap.min.css
│        │  │  │  └─ bootstrap.min.css.map
│        │  │  └─ js
│        │  │     ├─ bootstrap.bundle.js
│        │  │     ├─ bootstrap.bundle.js.map
│        │  │     ├─ bootstrap.bundle.min.js
│        │  │     ├─ bootstrap.bundle.min.js.map
│        │  │     ├─ bootstrap.js
│        │  │     ├─ bootstrap.js.map
│        │  │     ├─ bootstrap.min.js
│        │  │     └─ bootstrap.min.js.map
│        │  └─ LICENSE
│        ├─ jquery
│        │  ├─ dist
│        │  │  ├─ jquery.js
│        │  │  ├─ jquery.min.js
│        │  │  └─ jquery.min.map
│        │  └─ LICENSE.txt
│        ├─ jquery-validation
│        │  ├─ dist
│        │  │  ├─ additional-methods.js
│        │  │  ├─ additional-methods.min.js
│        │  │  ├─ jquery.validate.js
│        │  │  └─ jquery.validate.min.js
│        │  └─ LICENSE.md
│        └─ jquery-validation-unobtrusive
│           ├─ jquery.validate.unobtrusive.js
│           ├─ jquery.validate.unobtrusive.min.js
│           └─ LICENSE.txt
├─ docker-compose.dcproj
├─ docker-compose.override.yml
├─ docker-compose.yml
├─ Dockerfile
├─ Documento_Tecnico.md
└─ README.md

```