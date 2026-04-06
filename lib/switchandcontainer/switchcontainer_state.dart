import 'package:equatable/equatable.dart';

class SwitchcontainerState extends Equatable{
  bool isSwitch;
  SwitchcontainerState({this.isSwitch=false});

  SwitchcontainerState copyWith ({bool? isSwitch}){
    return SwitchcontainerState(isSwitch: isSwitch??this.isSwitch);
  }

  @override
  List<Object?> get props =>[isSwitch];
}