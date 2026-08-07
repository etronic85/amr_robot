#!/bin/bash

echo "=========================================="
echo "🤖 Compilando espacio de trabajo AMR en Jazzy..."
echo "=========================================="

# 1. Asegurar que estamos en la raíz del espacio de trabajo
cd ~/amr_ws

# 2. Cargar las variables base de ROS 2 Jazzy
source /opt/ros/jazzy/setup.bash

# 3. Compilar todos los paquetes dentro de 'src'
colcon build --symlink-install

# 4. Cargar los ejecutables recién compilados en la terminal actual
source install/setup.bash

echo "=========================================="
echo "🚀 ¡Compilacion completada con exito!"
echo "=========================================="
