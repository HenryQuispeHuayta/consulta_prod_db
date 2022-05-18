import 'package:consulta_prod_db_app/src/data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consultas DB'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Henry Quispe Huayta',
              style: TextStyle(fontSize: 35),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: id,
                decoration: InputDecoration(
                  // hintText: 'Codigo',
                  // label: Text('codigo'),
                  labelText: 'Codigo',
                  suffixIcon: IconButton(
                    onPressed: _buscar, 
                    icon: const Icon(Icons.search)
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Descripcion'),
                    Text('Precio Venta'),
                    Text('UniVen'),
                    Text('UnixEnvase'),
                    Text('Codigo Linea'),
                    Text('Existencia'),
                  ],
                ),
                Column(
                  children: [
                    Text(desc),
                    Text(precioV),
                    Text(uniV),
                    Text(uniE),
                    Text(codL),
                    Text(exis),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget mostrar(){
    return Text('data');
  }
  _buscar(){
    setState(() {
      desc = '1';
      precioV = '2';
      uniV = '3';
      uniE = '4';
      codL = '5';
      exis = '6';      
    });
  }
}