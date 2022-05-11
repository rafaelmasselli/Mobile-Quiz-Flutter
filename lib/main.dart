import 'package:flutter/material.dart';
import './components/questionario.dart';
import "components/resultado.dart";

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
  var _PontuacaoTotal = 0;
  final _perguntas = const [
    {
      'texto': 'De onde é a invenção do chuveiro elétrico?',
      'respostas': [
        {'texto': 'França', 'res': 0},
        {'texto': 'Ingraterra', 'res': 0},
        {'texto': 'Brasil', 'res': 1},
        {'texto': 'Italia', 'res': 0}
      ]
    },
    {
      'texto': 'Quais o menor e o maior país do mundo?',
      'respostas': [
        {'texto': 'Vaticano e russia', 'res': 0},
        {'texto': 'Nauru e china', 'res': 1},
        {'texto': 'malta e Estados Unidos', 'res': 0},
        {'texto': ' Malta e Estados Unidos', 'res': 0}
      ]
    },
    {
      'texto':
          'Qual o nome do presidente do Brasil que ficou conhecido como Jango?',
      'respostas': [
        {'texto': 'Jânio Quadros', 'res': 0},
        {'texto': 'Jacinto Anjos', 'res': 0},
        {'texto': 'Getúlio Vargas', 'res': 0},
        {'texto': 'João Goulart', 'res': 1}
      ]
    },
    {
      'texto':
          'Normalmente, quantos litros de sangue uma pessoa tem? Em média, quantos são retirados numa doação de sangue',
      'respostas': [
        {
          'texto': 'Tem entre 2 a 4 litros. São retirados 450 mililitros',
          'res': 0
        },
        {
          "texto": 'Tem entre 4 a 6 litros. São retirados 450 mililitros',
          'res': 1
        },
        {'texto': 'Tem 10 litros. São retirados 2 litros', 'res': 0},
        {'texto': 'Tem 7 litros. São retirados 1,5 litros', 'res': 0}
      ]
    },
    {
      'texto': 'De quem é a famosa frase “Penso, logo existo”?',
      'respostas': [
        {'texto': ' Platão', 'res': 0},
        {'texto': 'Galileu Galilei', 'res': 0},
        {'texto': 'Descartes', 'res': 1},
        {'texto': 'Sócrates', 'res': 0}
      ]
    }
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _PontuacaoTotal += pontuacao;
      });
    }
  }

  void _ReiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _PontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
          backgroundColor: Colors.black,
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : Resultados(_PontuacaoTotal, _ReiniciarQuestionario),
      ),
    );
  }
}
