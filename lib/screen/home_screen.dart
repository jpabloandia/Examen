import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/categoria_page.dart';
import 'package:flutter_application_1/screen/productos_page.dart';
import 'package:flutter_application_1/screen/proveedor_page.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        backgroundColor: Colors.red, // Cambia el color del AppBar
      ),
      backgroundColor: Color.fromARGB(255, 61, 44, 24), // Cambia el color de fondo de la pantalla
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProductosScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Cambia el color del botón de Producto
                minimumSize: Size(double.infinity, 60), // Ajusta el tamaño mínimo del botón
              ),
              child: const Text('Producto'),
            ),
            const SizedBox(height: 16), // Margen entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CategoriaScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Cambia el color del botón de Categoría
                minimumSize: Size(double.infinity, 60), // Ajusta el tamaño mínimo del botón
              ),
              child: const Text('Categoría'),
            ),
            const SizedBox(height: 16), // Margen entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProveedorScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange, // Cambia el color del botón de Proveedor
                minimumSize: Size(double.infinity, 60), // Ajusta el tamaño mínimo del botón
              ),
              child: const Text('Proveedor'),
            ),
          ],
        ),
      ),
    );
  }
}