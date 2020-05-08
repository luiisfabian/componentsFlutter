import 'dart:async';

import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  ListViewPage({Key key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  ScrollController _scrollController = new ScrollController();

  List<int> _listaNumeros = new List();
  int _ultimoNumero = 0;
  bool _isLoading = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _agregarDiez();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        // _agregarDiez();
        fetchData();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("listView Builder"),
        ),
        body: Stack(
          children: <Widget>[
            _crearListView(),
            _crearLoading()
          ],
        ));
  }

  Widget _crearListView() {
    return RefreshIndicator(
      onRefresh: _obtenerPaginaUno,
          child: ListView.builder(
          controller: _scrollController,
          itemCount: _listaNumeros.length,
          itemBuilder: (BuildContext context, int index) {
            final imagen = _listaNumeros[index];
            return FadeInImage(
                placeholder: AssetImage("assets/loading.gif"),
                image:
                    NetworkImage("https://picsum.photos/500/300?ramdom=$imagen"));
          }),
    );
  }



  void _agregarDiez() {
    for (var i = 1; i < 10; i++) {
      _ultimoNumero++;
      _listaNumeros.add(_ultimoNumero);
    }
  }

  Future<Null> fetchData() async {
    _isLoading = true;
    setState(() {});
    final _duration = new Duration(seconds: 1);
    return new Timer(_duration, respuestaHttp);
  }

  void respuestaHttp() {
    _isLoading = false;
    _scrollController.animateTo(
      _scrollController.position.pixels + 100,
      curve: Curves.fastOutSlowIn,
      duration: Duration(milliseconds: 250)
    );
    _agregarDiez();
  }

  Widget _crearLoading(){
    if(_isLoading ){
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              CircularProgressIndicator()
            ],
          ),
          SizedBox(height: 15.0),
        ],
      );
    }
    return Container();
  }

  Future<Null> _obtenerPaginaUno() async{

    final duration = new Duration(seconds: 2);

    new Timer(duration, (){
      _listaNumeros.clear();
      _ultimoNumero++;
      _agregarDiez();
    });

    return Future.delayed(duration);
  }
}
