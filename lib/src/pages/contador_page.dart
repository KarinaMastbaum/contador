import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget{

@override
createState() => _ContadorPageState();

}

class _ContadorPageState extends State<ContadorPage>{

final estiloTexto = TextStyle(fontSize: 30, color: Colors.pink[200]);
  int _conteo = 0;
  
  Widget build(BuildContext context) {
    return Scaffold(
    //CTRL + Barra espaciadora: para ver todas las propiedades que tiene Scaffold
      appBar: AppBar(
        title: Text('Contador', style: TextStyle(color: Colors.white, fontSize: 25)),
        centerTitle: true,
        backgroundColor: Colors.pink[300],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text ('Numero de Taps: ', style: estiloTexto),
            Text ('$_conteo',  style: estiloTexto),
            AnimatedContainer(
               duration: Duration(minutes: 1),
               width:  260,
              child: Image.asset('assets/calculadora.png')
            )
          ],
        )
      ),
      floatingActionButton: _crearBotones()
        
       );
    }
    
    Widget _crearBotones() {  

      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox (width: 30.0,), 
          FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset, backgroundColor: Colors.pink[300], ),
          Expanded(child: SizedBox (),), // separacion de botones
          FloatingActionButton(child: Icon(Icons.remove_circle_outline), onPressed: _sustraer, backgroundColor: Colors.pink[300], ),
          SizedBox (width: 5.0,),
          FloatingActionButton(child: Icon(Icons.add_circle_outline), onPressed: _agregar, backgroundColor: Colors.pink[300], ),
        ],
      );
       
    }

void _agregar() {
setState(() {
  _conteo++;
});
}

void _sustraer() {
  setState(() {
    _conteo--;
  });
}

void _reset(){
setState(() {
  _conteo=0;
});

}


}