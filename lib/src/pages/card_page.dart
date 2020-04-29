import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("App Bar"),
        ),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            _cardTipo1(),
            SizedBox(),
             Divider(),
            _cardTipo2(),
             SizedBox(),
             Divider(),
          ],
        ));
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 20.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text("Soy el titulo de esta tarjeta"),
            subtitle: Text(
                "esta es la primera tarjeta, de las cuales apenas estamos empezando con el texto y se va a ver muy genial en mi app"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: () {}, child: Text("Cancelar")),
              FlatButton(onPressed: () {}, child: Text("Ok"))
            ],
          ),
                    // Defaults to a flex of one.

        ],
      ),

    );
  }

  Widget _cardTipo2() {
    final card =  Container(
     // clipBehavior: Clip.antiAlias,
      // elevation: 20.0,
    
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://lh3.googleusercontent.com/-H6PacdskbPehw_P3NQvLvIix3PK3gNC82AZXhpFhYm5PVY26CqyHieUp_jifhmYY-FrcezAVQ=w640-h400-e365'),
            placeholder: AssetImage('assets/loading.gif'),
            fadeInDuration: Duration(milliseconds: 100),
            height: 200.0,
            fit: BoxFit.fill,
          ),
          // Image(
          //   image: NetworkImage("https://lh3.googleusercontent.com/-H6PacdskbPehw_P3NQvLvIix3PK3gNC82AZXhpFhYm5PVY26CqyHieUp_jifhmYY-FrcezAVQ=w640-h400-e365"),

          //  ),
          Container(
            child: Text("esta imagen es hermosa"),
            padding: EdgeInsets.all(10.0),
          )
        ],
      ),
    );
    return Container(
     
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, -10.0)
          )
        ]
      ),
       child: ClipRRect(
                 borderRadius: BorderRadius.circular(30.0),

        child: card,
      ), 
    ); 
  }
}
