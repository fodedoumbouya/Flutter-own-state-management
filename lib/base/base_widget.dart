import 'package:flutter/material.dart';

abstract class BaseWidget extends StatefulWidget {
  const BaseWidget({super.key});

  @override
  BaseWidgetState createState() {
    return getState();
  }

  BaseWidgetState getState();
}

final ValueNotifier<int> counter = ValueNotifier<int>(0);

abstract class BaseWidgetState<T extends BaseWidget> extends State<T>
    with WidgetsBindingObserver {
  @override
  void initState() {
    print("main init");
    super.initState();
  }

  @override
  void dispose() {
    print("main dispose");
    super.dispose();
  }

  void incrementCounter() {
    counter.value++;
  }

  toPage({required Widget w}) {
    return Navigator.of(context).push(MaterialPageRoute(builder: (_) => w));
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      // do something
    } else if (state == AppLifecycleState.paused) {}
  }

  @override
  Widget build(BuildContext context) {
    return baseBuild(context);
  }

  baseBuild(BuildContext context) {}
}
