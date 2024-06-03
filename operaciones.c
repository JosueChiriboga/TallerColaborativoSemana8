#include <stdio.h>
#include <math.h>
#include "operaciones.h"
#include "lecturas.h"

// Funcion para agregar un producto al inventario
int agregarProducto(char nombres[][MAX_NOMBRE], int cantidades[], float precios[], int numProductos) {
    if (numProductos < MAX_PRODUCTOS) { // Verificar si hay espacio disponible en el inventario
        
        printf("Ingrese el nombre del producto: ");
        scanf("%s", nombres[numProductos]); // Lee el nombre del producto
        
        cantidades[numProductos]=leerEnteroPositivo("Ingrese la cantidad del producto: ");// Lee la cantidad del producto
        //printf("Ingrese la cantidad del producto: ");
        //scanf("%d", &cantidades[numProductos]); 
        
        precios[numProductos]=leerFlotantePositivo("Ingrese el precio del producto: ");// Lee el precio del producto
        //printf("Ingrese el precio del producto: ");
        //scanf("%f", &precios[numProductos]); 
        printf("Producto registrado exitosamente\n");
        
        return numProductos + 1; // Devuelve el numero actualizado de productos
    } else {
        printf("No se pueden agregar más productos. Se ha alcanzado el límite.\n");
        return numProductos; // Devuelve el mismo numero de productos si no se pudo agregar mas
    }
}

// Funcion para imprimir todos los productos en el inventario
void imprimirProductos(char nombres[][MAX_NOMBRE], int cantidades[], float precios[], int numProductos) {
    printf("\nProductos registrados:\n");
    for (int i = 0; i < numProductos; i++) {
        printf("Nombre: %s\n", nombres[i]); // Imprime el nombre del producto
        printf("Cantidad: %d\n", cantidades[i]); // Imprime la cantidad del producto
        printf("Precio: %.2f\n", precios[i]); // Imprime el precio del producto
        printf("\n");
    }
}

// Funcion para buscar un producto por su nombre
void buscarProducto(char nombres[][MAX_NOMBRE], int cantidades[], float precios[], int numProductos) {
    printf("\nIngrese el nombre del producto a buscar: ");
    char nombreBuscar[MAX_NOMBRE];
    scanf("%s", nombreBuscar); // Lee el nombre del producto a buscar
    int encontrado = 0;
    for (int i = 0; i < numProductos; i++) {
        int j;
        for (j = 0; nombres[i][j] != '\0' && nombreBuscar[j] != '\0'; j++) {
            if (nombres[i][j] != nombreBuscar[j]) { // Compara los nombres caracter por caracter
                break;
            }
        }
        if (nombres[i][j] == '\0' && nombreBuscar[j] == '\0') { // Si los nombres coinciden completamente
            printf("Producto encontrado:\n\n");
            printf("Nombre: %s\n", nombres[i]); // Imprime el nombre del producto encontrado
            printf("Cantidad: %d\n", cantidades[i]); // Imprime la cantidad del producto encontrado
            printf("Precio: %.2f\n", precios[i]); // Imprime el precio del producto encontrado
            encontrado = 1;
            break;
        }
    }
    if (!encontrado) {
        printf("Producto no encontrado.\n"); // Mensaje si el producto no fue encontrado
    }
}