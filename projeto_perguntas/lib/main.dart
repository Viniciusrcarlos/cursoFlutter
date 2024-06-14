import 'package:flutter/material.dart';

main() {
  runApp(perguntaApp());
}

class perguntaApp extends StatelessWidget {

  void responder() {
    print('Pergunta respondida');
  }
  
  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual sua cor favorita?',
      'Qual seu animal favorito?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[0]),
            const ElevatedButton(
              onPressed: ,
              child: Text('Resposta 1')
            ),
            const TextButton(
                onPressed: null,
                child: Text('Resposta 2')
            ),
            const TextButton(
                onPressed: null,
                child: Text('Resposta 3')
            ),
          ],
        ),
      ),
    );
  }
}
