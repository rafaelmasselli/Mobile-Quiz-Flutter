import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;
  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(0, 25, 0, 25),
      child: Text(
        texto,
        style: const TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
