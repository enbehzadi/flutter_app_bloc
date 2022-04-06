import 'dart:developer';
import 'package:flutter_app_bloc/events/counter_event.dart';
import 'package:flutter_app_bloc/states/counter_state.dart';
import 'package:bloc/bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  /// {@macro counter_bloc}
  CounterBloc() : super(const CounterInitial(0)) {
    on<CounterIncrementPressed>(_onIncrement);
    on<CounterDecrementPressed>(_onDecrement);
  }

  void _onIncrement(CounterIncrementPressed event, Emitter<CounterState> emit) {
    emit(CounterInitial(state.counter + 1));
  }

  void _onDecrement(CounterDecrementPressed event, Emitter<CounterState> emit) {
    emit(CounterInitial(state.counter - 1));
  }
}