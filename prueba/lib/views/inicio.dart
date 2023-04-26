import 'package:flutter/material.dart';
import 'package:prueba/views/error.dart';
import 'package:prueba/views/opciones.dart';

class inicio extends StatelessWidget {
  const inicio({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => opciones()),
                );
              },
              child: Text('Ir a la vista de opciones'),
            ),
          ),
        ],
      ),
    );
  }
}
