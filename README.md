# Civitatis & Airbnb - Estrategia comercial enfocada en datos turísticos de ocupación

![Imagen](https://github.com/JoseMi-Sanchez/sql-database_team-7/blob/main/readme-image.png)

---

## Miembros del Proyecto

| Nombre             | Background                                  | Contacto                                           |
|--------------------|---------------------------------------------|---------------------------------------------------|
| **Josemi Sánchez** | ADE y RRHH, futuro Data Analyst              | ✉️ josemiguel.sanchez4@gmail.com                  |
| **Adrián Benítez** | Diseño gráfico, futuro Data Analyst          | [LinkedIn](https://www.linkedin.com/in/adrián-benítez-rueda-10102565/) |
| **Carlos Vergara** | Data Analytics, AI, Python, SQL y Java       | [LinkedIn](https://www.linkedin.com/in/carlosvergaragamez/) |

---

## Descripción del Proyecto

MINIQUEST 4: Proyecto del Bootcamp Data Analytics de Ironhack  
 Somos el equipo de IT, ciencia de datos y análisis de Civitatis.

Necesitamos crear una nueva estrategia para proyectar una nueva oferta comercial en la ciudad de Málaga. Crearemos ésta basándonos en datos turísticos de Airbnb, mayor exponente turístico de la ciudad malagueña.

### Misión
Desarrollar una oferta de servicios turísticos personalizada y alineada con las necesidades del mercado en Málaga, mediante el uso de datos detallados de ocupación y comportamiento de los turistas.

### Visión
Convertir a Civitatis en un referente líder en la toma de decisiones comerciales basadas en datos turísticos, con el objetivo de mejorar la experiencia de los visitantes y dinamizar la oferta turística en Málaga.

---

## Diagrama ERD

![Diagrama ERD](/img/diagram_ERD.png)

Relaciones entre las tablas:

**Tabla listing** es la tabla principal del modelo de datos, con las siguientes claves:
  - **PK (Primary Key):** `listing_id`
  - **FK (Foreign Key):** `host_id`
     
**Tabla host** contiene todos los anfitriones respecto a los alojamientos
  - Relación **1:N** con la **tabla listing** a través de la clave `host_id`.

**Tabla reviews** es la tabla que tiene los grupos de reseñas por alojamiento
  - **FK (Foreign Key):** `listing_id`
  - Relación **1:1** con la **tabla listing** a través de la clave `listing_id`.



___


## Gráficos

Aquí puedes ver los gráficos generados durante el proyecto:

<table>
  <tr>
    <td><img src="/img/mapa_capacidad_alojamientos.png" alt="Mapa capacidad alojamientos" width="200"/></td>
    <td><img src="/img/mapa_tipo_alojamiento.png" alt="Mapa tipo de alojamiento" width="200"/></td>
    <td><img src="/img/porcentaje_segun_capacidad_alojamiento.png" alt="Porcentaje Airbnbs según capacidad" width="200"/></td>
  </tr>
  <tr>
    <td><img src="/img/porcentaje_habitaciones_apartamentos.png" alt="Porcentaje de Habitaciones vs. Apartamentos" width="200"/></td>
    <td><img src="/img/porcentaje_host_listings_count.png" alt="Porcentaje de Hosts por Número de Anuncios" width="200"/></td>
    <td><img src="/img/top_10_hosts.png" alt="Top hosts" width="200"/></td>
  </tr>
</table>

---

## Instrucciones para ejecutar el proyecto

### Requisitos previos:
1. **Instalar Python**: Descarga e instala [Python](https://www.python.org/) en tu sistema.
2. **Instalar dependencias**: Ejecuta el siguiente comando para instalar los paquetes requeridos desde el archivo `requirements.txt`:
   ```bash
   pip install -r requirements.txt
   ```
3. **Descargar e instalar MySQL Workbench 8**: Puedes hacerlo desde [aquí](https://dev.mysql.com/downloads/workbench/).

### Preparación de archivos:
Asegúrate de tener los siguientes archivos descargados y ubicados en la misma carpeta del proyecto:
- `main_cleanup.ipynb`
- `main_report.ipynb`
- `cleaning_functions.py`
- `report_functions.py`
- `civitatis_airbnb_database.sql`
- `civitatis_airbnb_schema.sql`
- `civitatis_airbnb_host.csv`
- `civitatis_airbnb_listing.csv`
- `civitatis_airbnb_reviews.csv`
- Archivos extraídos de `calendar_and_listings_csv.rar`

### Pasos para ejecutar:
1. **Limpiar los datos**: Abre y ejecuta el archivo `main_cleanup.ipynb`. Este script procesará los CSV y generará versiones limpias de los archivos.
   
2. **Configurar la base de datos en MySQL**:
   - Carga los archivos SQL en **MySQL Workbench** en este orden:
     1. `civitatis_airbnb_schema.sql`
     2. `civitatis_airbnb_database.sql`
   - Crea el esquema ejecutando las instrucciones en **MySQL Workbench**. Copia el código generado y pégalo en la pestaña de consultas (queries). Usa este esquema para realizar las consultas SQL que desees.

3. **Generar gráficos y mapas**: Ejecuta los scripts `cleaning_functions.py` y `report_functions.py`. Estos scripts crearán las visualizaciones gráficas y los mapas basados en los datos procesados.


---

## Enlaces

- [Presentación](https://docs.google.com/presentation/d/1Rmw7gFGfm0NeJP-J4J3syfQo1bDtD7sYEFq99djtgCA/edit?usp=sharing)
- [Main Notebook](https://github.com/JoseMi-Sanchez/sql-database_team-7/blob/main/main_report.ipynb)
- [Functions.py](https://github.com/JoseMi-Sanchez/sql-database_team-7/blob/main/report_functions.py)
- [Organización en Trello](https://trello.com/invite/b/66e836a767d07db8679faac1/ATTIb21b1d765a6897ad691c6700ef09d40b18F4ABE4/miniquest-3-civitatis-airbnb)

---

¡Ayúdanos a impulsar el turismo en Málaga y a desarrollar estrategias comerciales basadas en datos reales!
