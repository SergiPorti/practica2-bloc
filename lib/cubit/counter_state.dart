part of 'counter_cubit.dart';

sealed class CounterState extends Equatable {
  final int counter;
  const CounterState({required this.counter});

  @override
  List<Object> get props => [counter];
}

class CounterInitial extends CounterState {
  const CounterInitial() : super(counter: 0);
}

class IncrementState extends CounterState {
  final int value;
  const IncrementState({required this.value}) : super(counter: value);
}

class DecrementState extends CounterState {
  final int value;
  const DecrementState({required this.value}) : super(counter: value);
}
