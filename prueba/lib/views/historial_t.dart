import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:prueba/views/opciones.dart';
import 'package:prueba/views/salir.dart';

class historial_t extends StatelessWidget {
  const historial_t({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Transacciones',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 20),
            child: Image.asset(
              'assets/images/transacciones.png',
              width: 200,
              height: 200,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    SizedBox(height: 100),
                    Row(
                      children: [
                        const Text(
                          '>>>    ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 223, 215, 215)),
                        ),
                        const Text(
                          'Transaccion #1',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text('\n'),
                    Row(
                      children: [
                        const Text(
                          '>>>    ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 223, 215, 215)),
                        ),
                        const Text(
                          'Transaccion #2',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text('\n'),
                    Row(
                      children: [
                        const Text(
                          '>>>    ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 223, 215, 215)),
                        ),
                        const Text(
                          'Transaccion #3',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text('\n'),
                    Row(
                      children: [
                        const Text(
                          '>>>    ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 223, 215, 215)),
                        ),
                        const Text(
                          'Transaccion #4',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    SizedBox(height: 150),
                    Text('\n'),
                    Text('\n'),
                    Text('\n'),
                    Text('\n'),
                    Row(
                      children: [
                        const Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Salir',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => opciones()),
                            );
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                          ),
                          child: const Text(''),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}