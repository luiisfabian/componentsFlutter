import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  AnimatedContainerPage({Key key}) : super(key: key);

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _height = 50.0;
  double _width = 50.0;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadiosGeometry = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Contendores animados"),
      ),
      body: Center(
        child: AnimatedContainer(
          curve: Curves.easeInExpo,
          width: _width,
          height: _height,
          decoration:
              BoxDecoration(borderRadius: _borderRadiosGeometry, color: _color),
              duration: Duration(seconds: 1),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: _cambiarForma,
      ),
    ));
  }

  void _cambiarForma() {
    final random = Random();
    setState(() {
      _width = random.nextInt(400).toDouble();
      _height = random.nextInt(400).toDouble();
      _color =  Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1.0);
      _borderRadiosGeometry = BorderRadius.circular(random.nextInt(200).toDouble());
    });
  }
}
