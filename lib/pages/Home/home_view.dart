import 'package:flutter/material.dart';
import 'package:flutter_own_state_management/base/base_widget.dart';
import 'package:flutter_own_state_management/pages/Home/home_logic.dart';

class Home extends BaseWidget {
  const Home({super.key});

  @override
  BaseWidgetState<BaseWidget> getState() {
    return _HomeState();
  }
}

class _HomeState extends HomeLogic<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
          child: ValueListenableBuilder(
        valueListenable: counter,
        builder: (context, value, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$value"),
              Image.network('https://picsum.photos/250?image=$value')
            ],
          );
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementImageCounterByTwo,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
