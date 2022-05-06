import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  final String texto;
  final void Function() SelectQuestion;

  Respostas(this.texto, this.SelectQuestion);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
          ),
          child: Text(
            texto,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: SelectQuestion),
    );
  }
}
