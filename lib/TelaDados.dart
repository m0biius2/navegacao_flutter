import 'package:flutter/material.dart';

class TelaDados extends StatefulWidget {
  String nome;
  int idade;

  TelaDados(this.nome, this.idade);

  @override
  State<TelaDados> createState() => _TelaDadosState();
}

class _TelaDadosState extends State<TelaDados> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        foregroundColor: Colors.white,
        // center
        title: Text(
          "Tela Secundária",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 20
          ),
        ),
        // end
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.menu_rounded,
              color: Colors.white,
              size: 28,
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Olá ${widget.nome}, você tem ${widget.idade} anos de idade!",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20
                    ),
                  ),
                ],
              ),
            )
        ),
      ),
    );
  }
}
