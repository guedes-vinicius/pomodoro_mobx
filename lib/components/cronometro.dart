import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/cronometro_botao.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Observer(builder: (_) {
      return Container(
        color: store.estaTrabalhando() ? Colors.red : Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              store.estaTrabalhando()
                  ? 'Hora de Trabalhar'
                  : 'Hora de Descansar',
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '${store.minutos.toString().padLeft(2, '0')}:${store.segundos.toString().padLeft(2, '0')}',
              style: TextStyle(color: Colors.white, fontSize: 120),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (!store.validador)
                  Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: CronometroBotao(
                        text: 'iniciar',
                        icon: Icons.play_arrow,
                        click: store.iniciar,
                      )),
                if (store.validador)
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: CronometroBotao(
                      text: 'Parar',
                      icon: Icons.stop,
                      click: store.parar,
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: CronometroBotao(
                    text: 'Reiniciar',
                    icon: Icons.refresh,
                    click: store.reiniciar,
                  ),
                )
              ],
            )
          ],
        ),
      );
    });
  }
}
