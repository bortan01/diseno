import 'dart:math';

import 'package:flutter/cupertino.dart';
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
      bottomNavigationBar: bottonNavigatorBarMio(context),
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
          _botonesRedondeados(),
        ],
      ),
    );
  }

  navegador() {
    return new BottomNavigationBar(
        selectedItemColor: Colors.pink,
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
              icon: new Icon(Icons.calendar_today), title: new Container()),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.pie_chart_outlined), title: new Container()),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.supervised_user_circle),
              title: new Container()),
        ]);
  }

  otroNavegador() {
    var controller;

    ///  new TabController(length: 3, vsync: this);
    return new Material(
      color: Colors.blueAccent,
      child: TabBar(
        controller: controller,
        tabs: <Widget>[
          new Tab(icon: new Icon(Icons.alarm)),
          new Tab(icon: new Icon(Icons.watch_later)),
          new Tab(icon: new Icon(Icons.airplanemode_active)),
        ],
      ),
    );
  }

  bottonNavigatorBarMio(BuildContext context) {
    return new Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
            primaryColor: Colors.purpleAccent,
            textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
        child: new BottomNavigationBar(items: [
          new BottomNavigationBarItem(
              icon: new Icon(
                Icons.calendar_today,
                size: 30.0,
              ),
              title: new Container()),
          new BottomNavigationBarItem(
              icon: new Icon(
                Icons.bubble_chart,
                size: 30.0,
              ),
              title: new Container()),
          new BottomNavigationBarItem(
              icon: new Icon(
                Icons.supervised_user_circle,
                size: 30.0,
              ),
              title: new Container()),
        ]));
  }

  _botonesRedondeados() {
    return new Table(
      children: [
        new TableRow(children: [
          _creaarBotonRedondeado(),
          _creaarBotonRedondeado(),
        ]),
        new TableRow(children: [
          _creaarBotonRedondeado(),
          _creaarBotonRedondeado(),
        ]),
        new TableRow(children: [
          _creaarBotonRedondeado(),
          _creaarBotonRedondeado(),
        ]),
        new TableRow(children: [
          _creaarBotonRedondeado(),
          _creaarBotonRedondeado(),
        ]),
      ],
    );
  }

  _creaarBotonRedondeado() {
    return widget(
      child: new Container(
        height: 180.0,
        margin: EdgeInsets.all(15.0),
        decoration: new BoxDecoration(
          color: Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(20.0)
        ),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new CircleAvatar(

               child: new Icon(
                 Icons.swap_calls,
                 color: Colors.white,
                  size: 30.0,
              ),
               radius: 35.0,
               backgroundColor: Colors.pinkAccent,
             ),
            new Text("data", style: new TextStyle(color: Colors.pinkAccent),),
          ],
        ),
      ),
    );
  }
}
