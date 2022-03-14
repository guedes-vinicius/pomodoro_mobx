import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? click;

  const CronometroBotao({
    Key? key,
    required this.text,
    required this.icon,
    required this.click,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          primary: Colors.black,
          textStyle: TextStyle(fontSize: 25)),
      onPressed: click,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              icon,
              size: 35,
            ),
          ),
          Text(text)
        ],
      ),
    );
  }
}
