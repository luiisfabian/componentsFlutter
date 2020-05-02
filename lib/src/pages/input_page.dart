import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _crearNombre = '';
  String _email = '';
  String _password = '';
  String _fecha;

  TextEditingController _inputFileFechaEditingController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Input Page"),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
          children: <Widget>[
            _crearInput(),
            Divider(),
            _crearEmail(),
            Divider(),
            _crearPassword(),
            Divider(),
            _crearFecha(context),
            Divider(),
            _crearPersona(),
          ],
        ));
  }

  Widget _crearInput() {
    return TextField(
      //autofocus: false, aqui entra de una
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          counter: Text(
              "cantidad de letras es  ${_crearNombre.length}"), //abajo a la izquierda debajo del input
          hintText: "hintText", //como un placeholder
          prefixText: "prefix text", // como empezar a copiar apartir de
          helperText:
              "helper Text", //abajo a la izquierda debajo del input pequeño
          suffixIcon: Icon(Icons.accessibility), // a la derecha sobre el input
          icon: Icon(Icons.account_box) // a la quierda a un lado del input
          ),
      onChanged: (data) {
        setState(() {
          _crearNombre = data;
        });
      },
    );
  }

  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
//abajo a la izquierda debajo del input
          hintText: "Email", //como un placeholder
          labelText: "Email",
          suffixIcon: Icon(Icons.email), // a la derecha sobre el input
          icon: Icon(Icons.email) // a la quierda a un lado del input
          ),
      onChanged: (data) {
        setState(() {
          _email = data;
        });
      },
    );
  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
//abajo a la izquierda debajo del input
          hintText: "Password", //como un placeholder
          labelText: "Password",
          suffixIcon: Icon(Icons.lock), // a la derecha sobre el input
          icon: Icon(Icons.lock) // a la quierda a un lado del input
          ),
      onChanged: (data) {
        setState(() {
          _password = data;
        });
      },
    );
  }

  Widget _crearFecha(BuildContext context) {
    return TextField(
      controller: _inputFileFechaEditingController,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
//abajo a la izquierda debajo del input
          hintText: "Fecha de Nacimiento", //como un placeholder
          labelText: "Fecha de Nacimiento",
          suffixIcon: Icon(Icons.calendar_today), // a la derecha sobre el input
          icon: Icon(Icons.calendar_today) // a la quierda a un lado del input
          ),
      onTap: (){
        FocusScope.of(context).requestFocus( new FocusNode());
        _selectDay(context);
              },
            );
          }
        
          Widget _crearPersona() {
            return Column(
              children: <Widget>[
                ListTile(
                  title: Text("el nombre es  $_crearNombre"),
                  subtitle: Text("el correo es $_email y la contraseña es $_password"),
                ),
                Divider(),
                // ListTile(
                //   title: Text("el password es $_password"),
                // ),
              ],
            );
          }
        
          void _selectDay(BuildContext context) async{
            DateTime picket = await showDatePicker(
              context: context,
              lastDate: new DateTime(2025),
              initialDate: new DateTime.now(),
              firstDate: new DateTime(2020),
              

            );
            if(picket != null){
               setState(() {
                 _fecha = picket.toString();
                 _inputFileFechaEditingController.text = _fecha;
               }); 
              }
          }
}
