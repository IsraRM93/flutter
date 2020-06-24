import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CardsPage'),
      ),
      body: ListView(
        //padding: EdgeInsets.symmetric(horizontal : 50.0, vertical : 30.0), //Se ajustan las distancias tanto horizontal como vertical
        padding: EdgeInsets.all(
            15), //Es la distancia entre los bordes hacia adentro de la card sobre todos los lados.
        children: <Widget>[_cardTipoOne()],
      ),
    );
  }

  Widget _cardTipoOne() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.photo_camera,
              color: Colors.green,
            ),
            title: Text('Titulo'),
            subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end, //coloca los botones al final o parte derecha.
            children: <Widget>[
              FlatButton(onPressed: () {}, child: Text('Cancelar')),
              FlatButton(onPressed: () {}, child: Text('Ok'))
            ],
          )
        ],
      ),
    );
  }
}
