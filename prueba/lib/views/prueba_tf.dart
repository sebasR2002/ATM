import 'package:flutter/material.dart';

class prueba_tf extends StatefulWidget {
  @override
  _MyTextFieldViewState createState() => _MyTextFieldViewState();
}

class _MyTextFieldViewState extends State<prueba_tf> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    // Es importante llamar al método dispose() del controlador al finalizar la vista para liberar memoria.
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        leading: Image.asset(
          'assets/images/ATM.png',
          width: 150,
          height: 150,
        ),
        title: const Text(
          'Cajero S.J',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _textEditingController,
              decoration: const InputDecoration(
                hintText: 'Ingresa un texto',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Text('oe'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Imprime el texto ingresado en el TextField
          print(_textEditingController.text);
        },
        child: Icon(Icons.check),
      ),
    );
  }
}
