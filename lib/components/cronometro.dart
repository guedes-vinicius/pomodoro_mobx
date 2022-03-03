import 'package:flutter/material.dart';
import 'package:pomodoro/components/cronometro_botao.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hora de trabalhar',
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            '25:00',
            style: TextStyle(color: Colors.white, fontSize: 120),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: CronometroBotao(
                  text: 'iniciar',
                  icon: Icons.play_arrow,
                ),
              ),
              /*Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: CronometroBotao(
                  text: 'Parar',
                  icon: Icons.stop,
                ),
              ),*/
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: CronometroBotao(
                  text: 'Reiniciar',
                  icon: Icons.refresh,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
