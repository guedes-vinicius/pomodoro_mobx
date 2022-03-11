import 'package:mobx/mobx.dart';
part 'pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

abstract class _PomodoroStore with Store {
  @observable
  bool validador = false;
  @observable
  int tempoTrabalho = 2;

  @observable
  int tempoDescanso = 1;

  @observable
  int minutos = 2;

  @observable
  int segundos = 0;

  @action
  void iniciar() {
    validador = !validador;
  }

  @action
  void aumentarTrabalho() {
    tempoTrabalho++;
  }

  @action
  void diminuirTrabalho() {
    tempoTrabalho--;
  }

  @action
  void aumentarDescanso() {
    tempoDescanso++;
  }

  @action
  void diminuirDescanso() {
    tempoDescanso--;
  }
}
