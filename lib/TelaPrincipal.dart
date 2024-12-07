import 'package:flutter/material.dart';
import 'package:proj_navegacao/TelaSecundaria.dart';
import 'package:proj_navegacao/TelaDados.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  void _navegacaoPush() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => TelaSecundaria()
      ),
    );
  }

  void _navegacaoDados() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => TelaDados("Guilherme", 17)
      ),
    );
  }

  void _navegacaoRotas() {
    Navigator.pushNamed(
        context,
        "/rotas"
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade200,
        // start
        leading:  Icon(
          Icons.emoji_emotions_rounded,
          color: Colors.white,
          size: 28,
        ),
        // center
        title: Text(
          "Tela Principal",
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
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.pink.shade200)
                    ),
                    onPressed: _navegacaoPush,
                    child: Text(
                      "Ir para a segunda tela com push",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 17
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue.shade200)
                      ),
                      onPressed: _navegacaoDados,
                      child: Text(
                        "Passar dados para a segunda tela",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 17
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurple.shade200)
                      ),
                      onPressed: _navegacaoRotas,
                      child: Text(
                        "Ir para a segunda tela usando rotas",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 17
                        ),
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
