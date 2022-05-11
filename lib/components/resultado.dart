import 'package:aula1/main.dart';
import 'package:flutter/material.dart';

class Resultados extends StatelessWidget {
  final int pontuacao;
  final void Function() ReiniciarQuestionario;

  const Resultados(this.pontuacao, this.ReiniciarQuestionario);
  String get fraseReultado {
    if (pontuacao == 1) {
      return "Você acertou 1 questão";
    } else {
      return "Você acertou ${pontuacao} questoes";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            fraseReultado,
            style: const TextStyle(fontSize: 28),
          ),
        ),
        ElevatedButton(
          onPressed: ReiniciarQuestionario,
          child: const Text('Tentar novamente?'),
          style: ElevatedButton.styleFrom(primary: Colors.black),
        )
      ],
    );
  }
}
