import 'dart:async';

import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}

Future<void> main(List<String> args) async {
  final cubit = CounterCubit();

  final StreamSubscription = cubit.listen(print);

  cubit.increment();
  cubit.increment();
  cubit.increment();
  cubit.increment();

  await Future.delayed(Duration.zero);

  await StreamSubscription.cancel();
  await cubit.close();
}
