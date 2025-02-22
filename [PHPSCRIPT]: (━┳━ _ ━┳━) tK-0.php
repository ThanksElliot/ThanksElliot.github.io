<?php
// TODO:Guardar el archivo con una extensión .php y ejecutarlo desde una terrminal:
// como se genera un .json de las tareas es recomendable crear una carpeta para guardar el script.
// =======================================[ La documentación comienza aquí ]================================================

/* aquí empieza el script */
// Archivo de tareas
define('TASK_FILE', 'tasks.json');

// Función para cargar tareas desde el archivo JSON
function loadTasks() {
    if (!file_exists(TASK_FILE)) {
        return [];
    }
    $json = file_get_contents(TASK_FILE);
    return json_decode($json, true) ?: [];
}

// Función para guardar tareas en el archivo JSON
function saveTasks($tasks) {
    file_put_contents(TASK_FILE, json_encode($tasks));
}

// Función para mostrar las tareas
function showTasks($tasks) {
    echo "Lista de tareas:\n";
    if (empty($tasks)) {
        echo "No hay tareas.\n";
    } else {
        foreach ($tasks as $index => $task) {
            $status = $task['done'] ? "[x]" : "[ ]";
            echo "$status " . ($index + 1) . ". " . $task['name'] . "\n";
        }
    }
}

// Cargar las tareas del archivo
$tasks = loadTasks();

while (true) {
    echo "\nBienvenido al gestor de tareas!\n";
    showTasks($tasks);

    // Menú de opciones
    echo "\n¿Qué quieres hacer?\n";
    echo "1. Agregar una tarea\n";
    echo "\033[31m2. Borrar todas las tareas\033[0m\n";
    echo "\033[31m3. Borrar una tarea específica\033[0m\n";
    echo "\033[31m4. Borrar tareas completadas [x]\033[0m\n";
    echo "\033[32m5. Marcar una tarea como realizada\033[0m\n";
    echo "\033[32m6. Quitar tarea como realizada\033[0m\n";
    echo "7. Ver tareas\n";
    echo "0. Salir\n";
    echo "Selecciona una opción: ";
    $option = intval(trim(fgets(STDIN)));

    switch ($option) {
        case 1:
            // Agregar nueva tarea
            do {
                echo "Escribe el nombre de la nueva tarea: ";
                $taskName = trim(fgets(STDIN));
                $tasks[] = ['name' => $taskName, 'done' => false];
                saveTasks($tasks);
                echo "Tarea agregada con éxito.\n";
                echo "¿Quieres agregar otra tarea? (s/n): ";
                $addMore = trim(fgets(STDIN));
            } while (strtolower($addMore) === 's');
            break;

        case 2:
            // Borrar todas las tareas
            $tasks = [];
            saveTasks($tasks);
            echo "Todas las tareas han sido borradas.\n";
            break;

        case 3:
            // Borrar una tarea específica
            showTasks($tasks);
            echo "Ingresa el número de la tarea que deseas borrar: ";
            $taskNumber = intval(trim(fgets(STDIN)));
            if ($taskNumber > 0 && $taskNumber <= count($tasks)) {
                array_splice($tasks, $taskNumber - 1, 1);
                saveTasks($tasks);
                echo "Tarea " . $taskNumber . " borrada.\n";
            } else {
                echo "Número de tarea no válido.\n";
            }
            break;

        case 4:
            // Borrar tareas completadas
            $tasks = array_filter($tasks, function ($task) {
                return !$task['done'];
            });
            saveTasks(array_values($tasks));  // Reindexar array después del filtro
            echo "Todas las tareas completadas han sido borradas.\n";
            break;

        case 5:
            // Marcar una tarea como realizada
            showTasks($tasks);
            echo "Ingresa el número de la tarea que deseas marcar como realizada: ";
            $taskNumber = intval(trim(fgets(STDIN)));
            if ($taskNumber > 0 && $taskNumber <= count($tasks)) {
                $tasks[$taskNumber - 1]['done'] = true;
                saveTasks($tasks);
                echo "Tarea " . $taskNumber . " marcada como realizada.\n";
            } else {
                echo "Número de tarea no válido.\n";
            }
            break;

        case 6:
            // Quitar marca de realizada
            showTasks($tasks);
            echo "Ingresa el número de la tarea que deseas marcar como no realizada: ";
            $taskNumber = intval(trim(fgets(STDIN)));
            if ($taskNumber > 0 && $taskNumber <= count($tasks)) {
                $tasks[$taskNumber - 1]['done'] = false;
                saveTasks($tasks);
                echo "Tarea " . $taskNumber . " marcada como no realizada.\n";
            } else {
                echo "Número de tarea no válido.\n";
            }
            break;

        case 7:
            // Ver tareas
            showTasks($tasks);
            break;

        case 0:
            echo "Saliendo del gestor de tareas. ¡Adiós!\n";
            exit;

        default:
            echo "Opción no válida. Inténtalo de nuevo.\n";
            break;
    }
}
?>
