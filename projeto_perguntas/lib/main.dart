import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resultado.dart';
import './questao.dart';
import './resposta.dart';
import './questionario.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        perguntaSelecionada++;
      });
    }

    print(perguntaSelecionada);
  }

  final List<Map<String, Object>> perguntas = const [
    {
      'texto': 'Qual sua cor favorita?',
      'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco']
    },
    {
      'texto': 'Qual seu animal favorito?',
      'respostas': ['Gato', 'Cachorro', 'Ramister', 'Papagaio']
    },
    {
      'texto': 'Qual seu carro favorito?',
      'respostas': ['Fox', 'Gol', 'Voyage', 'Palio']
    }
  ];

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas,
                perguntaSelecionada,
                responder
              )
            : Resultado(),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
