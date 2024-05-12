import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/edit_product_screen.dart';
import 'package:flutter_application_1/screen/list_product_screen.dart';

class ProveedorScreen extends StatelessWidget {
  const ProveedorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Proveedores'),
      ),
      body: Container(
        color: Colors.grey[200],
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              onPressed: () {
                // Redirigir a la pantalla para listar proveedores
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListProductScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(vertical: 16.0),
              ),
              child: Text(
                'Listar Proveedor',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              onPressed: () {
                // Redirigir a la pantalla para editar proveedores
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditProductScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: EdgeInsets.symmetric(vertical: 16.0),
              ),
              child: Text(
                'Editar Proveedor',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}