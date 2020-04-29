import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/home_temp.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ComponentesAPP',
      debugShowCheckedModeBanner: false,
      //  home: HomePage()
      initialRoute: "/",
      routes: getApplicationRoute(),
      onGenerateRoute: (RouteSettings settings){
          print("Ruta llamada ${settings.name}");

          return MaterialPageRoute(
            builder: (context){
            return AlertPage();
            
          });
      },
      //  home: HomePageTemp()
    );
  }
}
