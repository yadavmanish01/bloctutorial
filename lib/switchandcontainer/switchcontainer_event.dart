
import 'package:equatable/equatable.dart';

abstract class SwitchcontainerEvent extends Equatable{
  SwitchcontainerEvent();

  @override
  List<Object>get props=>[];
}

class OnorOffNotification extends SwitchcontainerEvent{}
class SliderEvent extends SwitchcontainerEvent{}