import 'package:flutter/material.dart';

main() => runApp(const PerguntaApp());

class PerguntaApp extends StatelessWidget {
  const PerguntaApp({super.key});

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
            Text(perguntas[0]),
            const ElevatedButton(onPressed: null, child: Text("Resposta 1")),
            Text(perguntas[1]),
            const ElevatedButton(onPressed: null, child: Text("Resposta 2")),
          ],
        ),
      ),
    );
  }
}
