import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  // Increment
  void increment() => emit(state + 1);

  // decrement
  void decrement() => emit(state - 1);
}
