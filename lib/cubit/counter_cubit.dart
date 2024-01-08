import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterInitial());

  void increment() => emit(IncrementState(value: state.counter + 1));
  void decrement() => emit(DecrementState(value: state.counter - 1));
}
