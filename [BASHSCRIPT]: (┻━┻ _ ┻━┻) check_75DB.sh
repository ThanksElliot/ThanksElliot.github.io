## Este script va a mandar un mensaje a los destinatarios cada vez que se creen nuevos usuarios
## Este script sirve para que si algún intruso crea un usuario en nuestra base de datos recibamos una alerta
## Tenemos que darle permisos al archivo de: chmod +x check_new_users.sh
#!/bin/bash

# Configuración de la base de datos
DB_USER="tu_usuario"
DB_PASSWORD="tu_contraseña"
DB_HOST="localhost"

# Configuración del correo electrónico
SMTP_TO=("destinatario1@ejemplo.com" "destinatario2@ejemplo.com" "destinatario3@ejemplo.com")  # Agrega más destinatarios aquí
SMTP_FROM="tu_email@ejemplo.com"
SUBJECT="Alerta: Nuevos usuarios en la base de datos"

# Archivos para almacenar la lista de usuarios
PREVIOUS_USERS_FILE="previous_users.txt"
NOTIFIED_USERS_FILE="notified_users.txt"

# Obtener la lista de usuarios actuales
CURRENT_USERS=$(mysql -u"$DB_USER" -p"$DB_PASSWORD" -h"$DB_HOST" -e "SELECT User FROM mysql.user;" | tail -n +2 | sort)

# Leer usuarios anteriores del archivo
if [ -f "$PREVIOUS_USERS_FILE" ]; then
    PREVIOUS_USERS=$(cat "$PREVIOUS_USERS_FILE" | sort)
else
    PREVIOUS_USERS=""
fi

# Leer usuarios notificados del archivo
if [ -f "$NOTIFIED_USERS_FILE" ]; then
    NOTIFIED_USERS=$(cat "$NOTIFIED_USERS_FILE" | sort)
else
    NOTIFIED_USERS=""
fi

# Comparar usuarios y encontrar nuevos
NEW_USERS=$(comm -13 <(echo "$PREVIOUS_USERS") <(echo "$CURRENT_USERS"))

# Filtrar nuevos usuarios que no han sido notificados
UNNOTIFIED_NEW_USERS=$(comm -13 <(echo "$NOTIFIED_USERS") <(echo "$NEW_USERS"))

if [ -n "$UNNOTIFIED_NEW_USERS" ]; then
    # Crear el mensaje
    MESSAGE="Se han creado nuevos usuarios:\n$UNNOTIFIED_NEW_USERS"
    
    # Enviar un correo electrónico a cada destinatario
    for recipient in "${SMTP_TO[@]}"; do
        echo -e "$MESSAGE" | mail -s "$SUBJECT" -r "$SMTP_FROM" "$recipient"
    done
    
    # Agregar los nuevos usuarios a la lista de notificados
    echo "$UNNOTIFIED_NEW_USERS" >> "$NOTIFIED_USERS_FILE"
fi

# Guardar la lista actual de usuarios para la próxima verificación
echo "$CURRENT_USERS" > "$PREVIOUS_USERS_FILE"
