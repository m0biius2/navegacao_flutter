import 'package:flutter/material.dart';

class TelaRotas extends StatefulWidget {

  @override
  State<TelaRotas> createState() => _TelaRotasState();
}

class _TelaRotasState extends State<TelaRotas> {
   void _retornarTelaPrincipal(){
     Navigator.pop(
         context, "/"
     );
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade200,
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
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.teal.shade200)
                    ),
                    onPressed: _retornarTelaPrincipal,
                    child: Text(
                      "Retornar a tela principal usando pop",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 17
                      ),
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
