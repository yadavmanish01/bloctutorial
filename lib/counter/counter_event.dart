import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable{
  CounterEvent();

  @override
  List<Object>get props => [];
}
class DecrementEvent extends CounterEvent{}
class IncrementEvent extends CounterEvent{}