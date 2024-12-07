import 'package:flutter/material.dart';
import 'package:proj_navegacao/TelaPrincipal.dart';
import 'package:proj_navegacao/TelaRotas.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/rotas" : (context) => TelaRotas()
    },
    home: TelaPrincipal(),
    debugShowCheckedModeBanner: false,
  ));
}
