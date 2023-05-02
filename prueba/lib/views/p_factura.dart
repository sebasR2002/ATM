import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:prueba/views/hecho.dart';
import 'package:prueba/views/opciones.dart';

class p_factura extends StatefulWidget {
  @override
  _FacturaState createState() => _FacturaState();
}

class _FacturaState extends State<p_factura> {
  TextEditingController _textEditingController = TextEditingController();
  TextEditingController _textEditingController2 = TextEditingController();

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
          SizedBox(height: 50),
          Row(
            children: [
              SizedBox(width: 130),
              Image.asset(
                'assets/images/factura2.png',
                width: 200,
                height: 200,
              ),
              SizedBox(width: 50),
              Column(children: [
                const Center(
                  child: Text(
                    'Factura',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    'Por favor ingrese lo solicitado y\n presione listo para hacer \n efectivo el pago de su factura',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ]),
              SizedBox(height: 50),
              SizedBox(width: 50),
              Image.asset(
                'assets/images/factura3.png',
                width: 220,
                height: 220,
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 400,
                          child: Expanded(
                            child: TextField(
                              controller: _textEditingController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey,
                                hintText: 'Ingresa el id de la factura',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text('\n'),
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 400,
                          child: Expanded(
                            child: TextField(
                              controller: _textEditingController2,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey,
                                hintText: 'Ingresa cantidad de Bitcoins a pagar',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(height: 180),
                              Row(
                                children: [
                                  SizedBox(width: 400),
                                  Text(
                                    '        Listo',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => hecho()),
                                      );
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.white),
                                    ),
                                    child: const Text(''),
                                  ),
                                ],
                              ),
                              Text('\n'),
                              Row(
                                children: [
                                  SizedBox(width: 400),
                                  Text(
                                    '        Salir',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => opciones()),
                                      );
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.white),
                                    ),
                                    child: const Text(''),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
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