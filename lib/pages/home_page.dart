import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/cronometro.dart';
import 'package:pomodoro/components/entrada_tempo.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Cronometro()),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Observer(
                builder: (_) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    EntradaTempo(
                      titulo: 'Trabalhar',
                      valor: store.tempoTrabalho,
                      dec: store.validador && store.estaTrabalhando()
                          ? null
                          : store.diminuirTrabalho,
                      inc: store.validador && store.estaTrabalhando()
                          ? null
                          : store.aumentarTrabalho,
                    ),
                    EntradaTempo(
                      titulo: 'Descanso',
                      valor: store.tempoDescanso,
                      dec: store.validador && store.estaTrabalhando()
                          ? null
                          : store.diminuirDescanso,
                      inc: store.validador && store.estaDescansando()
                          ? null
                          : store.aumentarDescanso,
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
