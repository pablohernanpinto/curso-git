#!/bin/bash

# simple-interest.sh
# Calculadora de interés simple basada en la entrada del usuario.
# Fórmula: Interés Simple (SI) = (Capital * Tasa * Tiempo) / 100

echo "=== Calculadora de Interés Simple ==="

read -p "Ingrese el capital (principal): " capital
read -p "Ingrese la tasa de interés (%): " rate
read -p "Ingrese el período de tiempo (años): " time

# Validar que las entradas sean números
if ! [[ "$capital" =~ ^[0-9]+([.][0-9]+)?$ ]] || \
   ! [[ "$rate" =~ ^[0-9]+([.][0-9]+)?$ ]] || \
   ! [[ "$time" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: por favor ingrese solo valores numéricos."
    exit 1
fi

# Calcular el interés simple usando bc para soportar decimales
simple_interest=$(echo "scale=2; ($capital * $rate * $time) / 100" | bc)

echo "----------------------------------------"
echo "Capital:        $capital"
echo "Tasa de interés: $rate%"
echo "Tiempo:         $time año(s)"
echo "Interés Simple: $simple_interest"
echo "----------------------------------------"
