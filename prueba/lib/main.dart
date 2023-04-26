import 'package:flutter/material.dart';
import 'package:prueba/views/Login_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ATM',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: login_view(),
    );
  }
}
