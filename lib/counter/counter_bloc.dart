import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'counter_event.dart';

part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
    on<IncrementEvent>(_increment);
    on<DecrementEvent>(_decrement);
  }
  void _increment(IncrementEvent event,Emitter<CounterState>emit){
    emit(state.copyWith(counter: state.counter+1));
  }
  void _decrement(DecrementEvent event,Emitter<CounterState>emit){
    emit(state.copyWith(counter: state.counter-1));
  }
}
