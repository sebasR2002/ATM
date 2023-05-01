import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:prueba/views/error.dart';
import 'package:prueba/views/hecho.dart';
import 'package:prueba/views/inicio.dart';
import 'package:prueba/views/saldo.dart';
import 'package:prueba/views/salir.dart';

class login_view extends StatefulWidget {
  @override
  _login_viewState createState() => _login_viewState();
}

class _login_viewState extends State<login_view> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => inicio()),
      );
    });
  }

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
          Center(
            child: const Text(
              'Inserte su tarjeta',
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
              'assets/images/tarjeta.png',
              width: 250,
              height: 250,
            ),
          ),

          /*ElevatedButton(
            
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => error()),
              );
            },
            child: Text(''),
          )*/
        ],
      ),
    );
  }
}
