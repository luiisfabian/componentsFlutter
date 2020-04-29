import 'package:flutter/material.dart';


class AnimatedContainerPage extends StatefulWidget {
  AnimatedContainerPage({Key key}) : super(key: key);

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {

  double _height =  50.0;
  double _width = 50.0;
  Color _color = Colors.green;
  BorderRadiusGeometry borderRadiosGeometry= BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text("Contendores animados"),
         ),
         body: 
         Center(
           child: Container(

           ),
         )
       )
    );
  }
}