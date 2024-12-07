import 'package:flutter/material.dart';

class TelaSecundaria extends StatefulWidget {
  const TelaSecundaria({super.key});

  @override
  State<TelaSecundaria> createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade200,
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
                    "Segunda tela!!!",
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
