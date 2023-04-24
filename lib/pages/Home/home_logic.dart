import 'package:flutter_own_state_management/base/base_widget.dart';

class HomeLogic<T extends BaseWidget> extends BaseWidgetState {
  void incrementImageCounterByTwo() {
    counter.value += 2;
  }
}
