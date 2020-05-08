import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquiarCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Slider Page"),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            children: <Widget>[
              _crearSlider(),
              _crearCheckbox(),
              _crearSwitch(),
              Expanded(child: _crearImagen())
            ],
          ),
        ));
  }

  Widget _crearSlider() {
    return Slider(
        activeColor: Colors.indigo,
        //s divisions: 20,
        label: "Tamaño de la imagen",
        min: 00.0,
        max: 500.0,
        value: _valorSlider,
        onChanged: (_bloquiarCheck)
            ? null
            : (valor) {
                setState(() {
                  _valorSlider = valor;
                  print(valor);
                });
              });
  }

  Widget _crearCheckbox() {
    // return Checkbox(

    //   activeColor: Colors.orange,
    //   value: _bloquiarCheck, onChanged: (valor){
    //     setState(() {
    //       _bloquiarCheck = valor;
    //     });
    //   }
    //   );

    return CheckboxListTile(
      title: Text("bloquiar Slider?"),
        activeColor: Colors.orange,
        value: _bloquiarCheck,
        onChanged: (valor) {
          setState(() {
            _bloquiarCheck = valor;
          });
        });
  }

  Widget _crearSwitch(){

    return SwitchListTile(
      title: Text("bloquiar Slider?"),
        activeColor: Colors.orange,
        value: _bloquiarCheck,
        onChanged: (valor) {
          setState(() {
            _bloquiarCheck = valor;
          });
        });
    
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          "https://imagenesnoticias.canalrcn.com/ImgNoticias/gravity_bike_1.jpg"),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}
