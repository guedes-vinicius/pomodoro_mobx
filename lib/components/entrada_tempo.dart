import 'package:flutter/material.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;
  final void Function()? inc;
  final void Function()? dec;

  const EntradaTempo(
      {Key? key,
      required this.titulo,
      required this.valor,
      required this.inc,
      required this.dec})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          this.titulo,
          style: TextStyle(fontSize: 25),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: this.dec,
              child: const Icon(Icons.arrow_downward),
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15),
                  primary: Colors.red),
            ),
            Text(
              '${this.valor} min',
              style: TextStyle(fontSize: 18),
            ),
            ElevatedButton(
              onPressed: this.inc,
              child: const Icon(Icons.arrow_upward),
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15),
                  primary: Colors.red),
            ),
          ],
        ),
      ],
    );
  }
}