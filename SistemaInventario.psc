Algoritmo SistemaInventario
    Definir nombre Como Caracter
    Definir id, cantidad, opcion1, contador, i, j, k Como Entero
    Definir preciounitario, preciototal Como Real
    Definir inventario Como Caracter
    Definir idBuscar, indBuscar Como Entero
	
    Dimension id[20]
    Dimension nombre[20]
    Dimension cantidad[20]
    Dimension preciounitario[20]
    Dimension preciototal[20]
    Dimension inventario[21, 5]
    
    // Inicializar los arreglos con valores nulos o vacíos
    Para i = 1 Hasta 20 Con Paso 1 Hacer
        id[i] = 0
        nombre[i] = ""
        cantidad[i] = 0
        preciounitario[i] = 0
        preciototal[i] = 0
    Fin Para
    
    // Inicializar la matriz
    inventario[1, 1] = " ID "
    inventario[1, 2] = " NOMBRE "
    inventario[1, 3] = " CANTIDAD "
    inventario[1, 4] = " PRECIO U "
    inventario[1, 5] = " PRECIO T "
    
    Para j = 2 Hasta 21 Con Paso 1 Hacer
        Para k = 1 Hasta 5 Con Paso 1 Hacer
            inventario[j, k] = ""
        Fin Para
    Fin Para
    
    contador = 0
    Repetir
        // Menú de inventario
        Escribir "----------------SISTEMA DE INVENTARIO----------------"
        Escribir "1. Agregar producto"
        Escribir "2. Buscar producto"
        Escribir "3. Mostrar productos"
        Escribir "4. Salir"
		Escribir "Escoge la opción que desea realizar: "
        Escribir "------------------------------------------------------"
        
        Leer opcion1
        
        Segun opcion1 Hacer
            Caso 1:
                // Agregar producto
                contador = contador + 1
                Escribir "--------------------------------"
                Escribir "Agregar productos"
                Escribir "--------------------------------"
                Escribir "Ingresa el ID del producto: "
                Leer id[contador]
                Escribir "Ingresa el nombre del producto: "
                Leer nombre[contador]
                Escribir "Ingresa la cantidad del producto: "
                Leer cantidad[contador]
                Escribir "Ingresa el precio por unidad del producto: "
                Leer preciounitario[contador]
                
                preciototal[contador] = preciounitario[contador] * cantidad[contador]
                
            Caso 2:
                // Buscar producto
                Escribir "--------------------------------"
                Escribir "Buscar productos"
                Escribir "--------------------------------"
                Escribir "Ingrese el ID del producto a buscar: "
                Leer idBuscar
                
                // Buscar el producto por su ID
                Para i = 1 Hasta 20 Con Paso 1 Hacer
                    Si id[i] = idBuscar Entonces
                        indBuscar = i
                        Escribir "ID: ", id[indBuscar]
                        Escribir "NOMBRE: ", nombre[indBuscar]
                        Escribir "CANTIDAD: ", cantidad[indBuscar]
                        Escribir "PRECIO POR UNIDAD: ", preciounitario[indBuscar]
                        Escribir "PRECIO TOTAL: ", preciototal[indBuscar]
					// Salir del bucle una vez encontrado
                    Fin Si
                Fin Para
                Si i > 20 Entonces
                    Escribir "Producto no encontrado."
                Fin Si
                
            Caso 3:
				// Mostrar inventario
				Escribir "--------------------------------"
				Escribir "Productos Registrados"
				Escribir "--------------------------------"
				Para i = 1 Hasta 20 Con Paso 1 Hacer
					Si id[i] <> 0 Entonces // Verificar si el ID del producto está asignado
						Escribir "ID: ", id[i]
						Escribir "NOMBRE: ", nombre[i]
						Escribir "CANTIDAD: ", cantidad[i]
						Escribir "PRECIO POR UNIDAD: ", preciounitario[i]
						Escribir "PRECIO TOTAL: ", preciototal[i]
						Escribir ""
					Fin Si
				Fin Para
                
            Caso 4:
                // Salir del programa
                Escribir "Saliendo del programa..."
            De Otro Modo:
                Escribir "-----------------------------------"
                Escribir "Opción inválida"
                Escribir "Vuelva a escoger la opción correcta"
                Escribir "-----------------------------------"
        Fin Segun
    Hasta Que op = 4
FinAlgoritmo
