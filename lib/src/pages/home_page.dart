import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/proveders/menu_providers.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    //print(menuProvider.opciones);

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapchot) {

        print(snapchot.data);
        return ListView(children: _crearListaItems(snapchot.data, context));
      },
    );
    // return ListView(children: _crearListaItems());
  }

  List<Widget> _crearListaItems( List<dynamic> data, BuildContext context) {
    
    final List<Widget> opciones = [];


    if (data == null) {
      return [];
    }
    data.forEach((opt){
      print(opt['icon']);
      final widgetOpt = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.red,),
        onTap: (){


          Navigator.pushNamed(context, opt['ruta']);

          // final route = MaterialPageRoute(
          //   builder: (context)=> AlertPage()
          //   );
          //   Navigator.push(context, route);
        },
      );

      opciones.add(widgetOpt);
      opciones.add(Divider());


    });

    return opciones;
  }
}
