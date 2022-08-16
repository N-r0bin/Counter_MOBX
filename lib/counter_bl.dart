import 'package:mobx/mobx.dart';

part 'counter_bl.g.dart';

class CounterController = _CounterControllerBase with _$CounterController;

abstract class _CounterControllerBase with Store {

  @observable
  int counter = 0;

  @computed
  String get isEven => counter % 2 == 0 ? 'Even' : 'Odd';

  @action
  void incrementCounter() {
    counter++;
  }

  @action
  void decrementCounter() {
    counter--;
  }

  @action
  void resetCounter() => counter = 0;
}

