🎵 Plataforma de Streaming Musical – Symfony 6 + MySQL + Docker

Plataforma web completa de streaming musical, desarrollada con Symfony 6, Doctrine, EasyAdmin, MySQL y Docker, que permite a los usuarios reproducir canciones, crear playlists, buscar música en tiempo real, gestionar perfiles y administrar contenido desde un panel profesional.

Incluye un reproductor HTML5, búsqueda instantánea, subida de canciones, roles de usuario, panel de administración y un modelo de datos avanzado.

-------------

🚀 Características principales

	🔐 Autenticación y seguridad

	    Registro e inicio de sesión

	    Hashing de contraseñas con bcrypt

	    Roles: USER y ADMIN

	    Protección de rutas según rol

	    Listeners de login/logout para registrar actividad

	    Control de acceso personalizado (AccessDeniedSubscriber)


	👤 Usuarios y perfiles

	    Registro de usuarios

	    Login y logout

	    Perfil asociado (foto, país, género, ocupación, descripción)

	    Estilos musicales favoritos

	    Historial de reproducción

	    Edición de perfil preparada pero no implementada en UI

	
	🎵 Canciones

	    Subida de archivos MP3

	    Metadatos: título, autor, álbum, duración, año

	    Imagen del álbum

	    Reproducción mediante <audio> HTML5

	    Reproducción automática

	    Contador de reproducciones

	    Estilos musicales asociados

	    Likes preparados en BD (no implementados en UI)


	📂 Playlists

	    Crear playlists

	    Añadir canciones

	    Reproducción secuencial

	    Autoplay entre canciones

	    Pendiente: repetir playlist en bucle

	    Historial de playlists escuchadas

	    Playlists públicas/privadas


	🔍 Buscador avanzado

	    Búsqueda en tiempo real con JavaScript

	    Resultados instantáneos sin recargar la página

	    Búsqueda por:

	        Canciones

	        Playlists

	        Autor

	        Álbum

	        Estilo

	    Página de resultados completa


	🎧 Reproductor de música

	    Controles:

	        Play

	        Pause

	        Siguiente

	        Anterior

	    Autoplay al terminar la canción

	    Integración con playlists

	    Actualización dinámica del título

	    Implementado en JavaScript + Twig


	🛠️ Panel de administración (EasyAdmin)

	    CRUD completo de:

	        Usuarios

	        Canciones

	        Playlists

	        Estilos

	        Perfiles

	        Tablas puente

	    Filtros, ordenación y validaciones

	    Gestión avanzada de roles

-------------

🧱 Arquitectura

    Symfony 6 (monolito MVC)

    Doctrine ORM

    Twig para vistas

    Webpack Encore para assets

    Docker (contenedor Symfony + contenedor MySQL)

    Servicio propio: LoggerActividadService

    Listeners y Subscribers personalizados

    Enums para:

        País

        Género

        RolUsuario

        VisibilidadPlaylist



📦 Tecnologías utilizadas

    PHP 8.2

    Symfony 6

    Doctrine ORM

    EasyAdmin 4

    MySQL 8

    Docker

    Twig

    JavaScript

    HTML5 / CSS3

    Webpack Encore


-------------

🗂️ Diagramas

	## 📘 Diagrama ER (Mermaid)

```mermaid
erDiagram

    %% ============================
    %% ENTIDADES PRINCIPALES
    %% ============================

    Usuario {
        int id PK
        string email
        string password
        string nombre
        date fecha_nacimiento
        json roles
    }

    Perfil {
        int id PK
        string foto
        string descripcion
        string pais
        string genero
        string ocupacion
    }

    Cancion {
        int id PK
        string titulo
        string autor
        string album
        int duracion
        int anio
        string archivo
        string imagen
    }

    Estilo {
        int id PK
        string nombre
        string imagen
    }

    Playlist {
        int id PK
        string nombre
        string descripcion
        string visibilidad
    }

    %% ============================
    %% TABLAS PUENTE
    %% ============================

    PlaylistCancion {
        int id PK
    }

    UsuarioCancion {
        int id PK
    }

    UsuarioPlaylist {
        int id PK
    }

    %% ============================
    %% RELACIONES
    %% ============================

    Usuario ||--|| Perfil : "tiene"
    Usuario ||--o{ UsuarioPlaylist : "crea"
    Playlist ||--o{ UsuarioPlaylist : "pertenece"

    Playlist ||--o{ PlaylistCancion : "contiene"
    Cancion ||--o{ PlaylistCancion : "pertenece"

    Usuario ||--o{ UsuarioCancion : "interactúa"
    Cancion ||--o{ UsuarioCancion : "es escuchada por"

    Cancion }o--|| Estilo : "tiene estilo"
    Perfil }o--o{ Estilo : "prefiere"


## 🎯 Diagrama de Casos de Uso

```mermaid
erDiagram

    Usuario {
        int id PK
        string email
        string password
        string nombre
        date fecha_nacimiento
        json roles
    }

    Perfil {
        int id PK
        string foto
        string descripcion
        string pais
        string genero
        string ocupacion
    }

    Cancion {
        int id PK
        string titulo
        string autor
        string album
        int duracion
        int anio
        string archivo
        string imagen
    }

    Estilo {
        int id PK
        string nombre
        string imagen
    }

    Playlist {
        int id PK
        string nombre
        string descripcion
        string visibilidad
    }

    PlaylistCancion {
        int id PK
    }

    UsuarioCancion {
        int id PK
    }

    UsuarioPlaylist {
        int id PK
    }

    Usuario ||--|| Perfil : "tiene"
    Usuario ||--o{ UsuarioPlaylist : "crea"
    Playlist ||--o{ UsuarioPlaylist : "pertenece"

    Playlist ||--o{ PlaylistCancion : "contiene"
    Cancion ||--o{ PlaylistCancion : "pertenece"

    Usuario ||--o{ UsuarioCancion : "interactúa"
    Cancion ||--o{ UsuarioCancion : "es escuchada por"

    Cancion }o--|| Estilo : "tiene estilo"
    Perfil }o--o{ Estilo : "prefiere"
` ``



-------------

🛠️ Instalación y ejecución

1️⃣ Clonar el repositorio

git clone https://github.com/NoelYTejerina/streaming-musical.git
cd streaming-musical

2️⃣ Levantar Docker

docker-compose up -d

3️⃣ Instalar dependencias

docker exec -it symfony-linux composer install

4️⃣ Importar base de datos

docker exec -i mysql_sym mysql -u root -p1234 musicaDB < DB_backup.sql

5️⃣ Iniciar servidor Symfony

docker exec -it symfony-linux php -S 0.0.0.0:8000 -t public

6️⃣ Abrir en navegador

http://localhost:8000

-------------

🎨 Demo visual

Será añadida con la mayor brevedad 

-------------

🚀 Extensiones futuras

    Likes en canciones y playlists

    Repetición de playlist en bucle

    Edición completa del perfil

    Navegación por estilos

    Recomendaciones personalizadas

    Estadísticas avanzadas

    API REST pública

    Streaming progresivo real

    Integración con WebSockets

-------------

📄 Licencia

MIT License.

-------------

🤝 Autor

Noel Y. Tejerina  

GitHub: https://github.com/NoelYTejerina

