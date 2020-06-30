//importamos el paquete material.dart
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{
  final estiloTexto = TextStyle(fontSize: 30, color: Colors.pink[200]);
  final conteo = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //CTRL + Barra espaciadora: para ver todas las propiedades que tiene Scaffold
      appBar: AppBar(
        title: Text('Contador', style: TextStyle(fontSize: 30, color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.pink[300],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text ('Numero de Taps:', style: estiloTexto),
            Text ('$conteo',  style: estiloTexto),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
       child: Text('+', style: TextStyle(fontSize: 30)),   
       
       onPressed: () {
       
       },
        backgroundColor: Colors.pink,
      ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );  
  }

}