import 'package:flutter/material.dart';

main() => runApp(const PerguntaApp());

class _PerguntasAppState extends State<PerguntaApp> {
  var _pergutaSelecionada = 0;
  void _responder() {
    setState(() {
      _pergutaSelecionada++;
    });

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
            Text(perguntas[_pergutaSelecionada]),
            ElevatedButton(
                onPressed: _responder, child: const Text("Resposta 1")),
            Text(perguntas[_pergutaSelecionada]),
            ElevatedButton(
                onPressed: _responder, child: const Text("Resposta 2")),
            Text(perguntas[_pergutaSelecionada]),
            ElevatedButton(
                onPressed: _responder, child: const Text("Resposta 3")),
            Text(perguntas[_pergutaSelecionada]),
            ElevatedButton(
                onPressed: _responder, child: const Text("Resposta 4")),
            ElevatedButton(
                onPressed: _responder, child: const Text("Resposta 5")),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _PerguntasAppState createState() {
    return _PerguntasAppState();
  }
}
