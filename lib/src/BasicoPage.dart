import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle (fontSize:  20.0, fontWeight: FontWeight.bold);
  final subtitulo = TextStyle (fontSize:  18.0, color: Colors.grey );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new SingleChildScrollView(
       child: new Column(
         children: <Widget>[
           _crearImagen(),
           _crearTitulo(),
           _crearAcciones(),
           _crearText(),
           _crearText(),
           _crearText(),
           _crearText(),
           _crearText(),

         ],
       ),
      )
    );
  }

  Widget _crearImagen (){
   return new Image(image: NetworkImage('https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'));

  }
  Widget _crearTitulo(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: new Row(
          children: <Widget>[
            ///expanded nos sirve para utilizar todo el espacio disponible
            Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: <Widget>[
                  new Text('lago con un puente', style: estiloTitulo,),
                  SizedBox (height: 7.0,),
                  new Text('un subtitulo', style: subtitulo,)
                ],
              ),
            ),
            new Icon(Icons.star, color: Colors.redAccent, size: 30.0,),
            new Text("41", style: new TextStyle(fontSize: 20.0),)
          ],
        ),
      ),
    );
  }

  _crearAcciones() {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     children: <Widget>[
        _crearAccion(Icons.call, 'Call'),
       _crearAccion(Icons.near_me, 'ROUTE'),
       _crearAccion(Icons.share, 'Shate'),
     ],
    );
  }
  _crearAccion(IconData icon, String text){
  return  new Column(

      children: <Widget>[
        new Icon(icon, color: Colors.blue, size: 40.0,),
        SizedBox(height: 5.0,),
        new Text(text, style: estiloTitulo,)
      ],
    );
  }

  _crearText() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: SafeArea(
        child: new Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
        ,textAlign: TextAlign.justify,
        ),
      ),
    );
  }

}
