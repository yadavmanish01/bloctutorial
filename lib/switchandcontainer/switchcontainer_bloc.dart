import 'package:bloc/bloc.dart';
import 'package:bloc_practice/switchandcontainer/switchcontainer_event.dart';
import 'package:bloc_practice/switchandcontainer/switchcontainer_state.dart';


class SwitchcontainerBloc extends Bloc<SwitchcontainerEvent,SwitchcontainerState> {
  SwitchcontainerBloc() : super(SwitchcontainerState()) {
    on<SwitchcontainerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
