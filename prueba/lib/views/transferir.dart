import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:prueba/views/hecho.dart';
import 'package:prueba/views/opciones.dart';

class transferir extends StatefulWidget {
  @override
  _TransferirState createState() => _TransferirState();
}

class _TransferirState extends State<transferir> {
  TextEditingController _textEditingController = TextEditingController();

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
                'assets/images/transferencia-de-dinero.png',
                width: 200,
                height: 200,
              ),
              SizedBox(width: 50),
              Column(children: [
                const Center(
                  child: Text(
                    'Transferencia',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    'Por favor ingrese los datos solicitados\n y presione listo \n para hacer efectiva la transferencia',
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
                'assets/images/transf.png',
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
                              hintText: 'Ingrese numero de cuenta',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
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
                              hintText: 'Ingrese tipo de cuenta',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
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
                              hintText: 'Ingrese cantidad a transferir',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
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
                              hintText: 'Mensaje(opcional)',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
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
