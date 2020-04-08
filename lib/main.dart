import 'package:diseno/src/BasicoPage.dart';
import 'package:diseno/src/pages/botones_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'botones',
      routes: {
        'basico'  : (BuildContext context ) => BasicoPage(),
        'botones'  : (BuildContext context ) => BotonesPage(),
      },
    );
  }
}
