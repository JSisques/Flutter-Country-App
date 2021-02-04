import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  //Cogemos los datos de la anterior pantalla
  static Route<dynamic> route() {
    return MaterialPageRoute(
      builder: (context) => HomeScreen(),
    );
  }

  //Indicamos que el mensaje es obligatorio al entrar en esta ventana
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
    );
  }
}