import 'package:consulta_prod_db_app/src/HomePage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Consultas DB',
      home: HomePage(),
    );
  }
}