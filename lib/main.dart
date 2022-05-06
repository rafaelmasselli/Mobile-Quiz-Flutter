import 'package:flutter/material.dart';
import 'components/questao.dart';
import 'components/repostas.dart';

void main() {
  runApp(const PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({Key? key}) : super(key: key);

  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas': ['Preto', 'Branco', 'Azul', 'Vermelho']
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas': ['Coelho', 'Cobra', 'Elefante', 'Ovelha']
      },
      {
        'texto': 'Qual e a sua banda favorita?',
        'respostas': [
          'Rex Orange county',
          'Novo amor',
          'Harry Styles',
          'Coldplay'
        ]
      }
    ];
    List<String> respostas =
        perguntas[_perguntaSelecionada].cast()['respostas'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]['texto'] as String),
            ...respostas.map((t) => Respostas(t, _responder)).toList(),
          ],
        ),
      ),
    );
  }
}
