import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BotonesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Color.fromRGBO(52, 54, 101, 1.0),

    ));
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          _fondoApp(),
          titulos(),
        ],
      ),
      bottomNavigationBar: navegador(),
    );
  }

  _fondoApp() {
    final gradiente = new Container(
      width: double.infinity,
      height: double.infinity,
      decoration: new BoxDecoration(
        gradient: new LinearGradient(colors: [
          Color.fromRGBO(52, 54, 101, 1.0),
          Color.fromRGBO(35, 37, 57, 1.0)
        ], begin: FractionalOffset(0.0, 0.6), end: FractionalOffset(0.0, 1.0)),
      ),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: new Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            gradient: new LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 141, 172, 1.0)
            ])),
      ),
    );

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -100,
          child: cajaRosa,
        )
      ],
    );
  }

  titulos() {
    TextStyle stilo1 = new TextStyle(
        color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold);
    TextStyle stilo2 = new TextStyle(
        color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.normal);

    return SingleChildScrollView(
      child: new Column(
        children: <Widget>[
          SafeArea(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    "Clasify Transaction",
                    style: stilo1,
                  ),
                  new SizedBox(
                    height: 10.0,
                  ),
                  new Text(
                    "Clas ddf trantation fore dera",
                    style: stilo2,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  navegador() {
    return new BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
              icon: new Icon(Icons.calendar_today),
            title: new Text("Calendario")
          ),
        ]
    );
  }
}
