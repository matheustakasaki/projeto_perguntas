import 'package:flutter/material.dart';

main() => runApp( PerguntaApp());

class PerguntaApp extends StatelessWidget {
   PerguntaApp({super.key});

  var pergutaSelecionada = 1;

  void responder() {
    pergutaSelecionada++;

    debugPrint('Pergunta respondida');
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual a sua cor favorita?',
      'Qual o seu animal favorito?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[pergutaSelecionada]),
            ElevatedButton(onPressed: responder, child: const Text("Resposta 1")),
            Text(perguntas[pergutaSelecionada]),
            ElevatedButton(onPressed: responder, child: const Text("Resposta 2")),
            Text(perguntas[pergutaSelecionada]),
            ElevatedButton(onPressed: responder, child: const Text("Resposta 3")),
          ],
        ),
      ),
    );
  }
}
