import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
      ),
      body: Center(
        child: RaisedButton(
            child: Text("Mostrar Alerta"),
            color: Colors.blue,
            textColor: Colors.white,
            shape: StadiumBorder(),
            onPressed: () {
              _mostrarAlert(context);
            }),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
      context: context,
    barrierDismissible: false,
    builder: (context){
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        title: Text("alerta del text"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("contenido de la caja de la alerta"),
            FlutterLogo(
              size: 100.0,
            )
          ],
        ),
        actions: <Widget>[
          FlatButton(onPressed: () { 
            Navigator.of(context).pop();
          }, child: Text("cancelar")),
          FlatButton(
            onPressed: ()=> Navigator.of(context).pop(), 
            child: Text("Ok")
            )
        ],
      );
    } 
    );
  }
}