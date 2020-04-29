import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("app bar Temp"),
      ),
      body: ListView(
        // children: _crearItems()
        children: _crearItemsCorto(),
      ),
    );
  }

  List<Widget> _crearItems() {
    //crear una luega coleccion de list
    List<Widget> lista = new List<Widget>();

    for (var opc in opciones) {
      final tempWidget = ListTile(
        title: Text(opc),
      );
      lista..add(tempWidget)..add(Divider());
    }

    return lista;
  }

//otra manera de traer mis items
  List<Widget> _crearItemsCorto() {
    return opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            subtitle: Text("Esto es para los subtitulos"),
            //iconos al inicio
            leading: Icon(Icons.adjust),
            //Iconos al final
            trailing: Icon(Icons.airline_seat_legroom_reduced),
            onTap: (){},
          )
        ],
      );
    }).toList();
  }
}
