import 'package:flutter/material.dart';
import 'package:flutter_own_state_management/base/base_widget.dart';
import 'package:flutter_own_state_management/pages/second_part.dart';

class FirstPage extends BaseWidget {
  const FirstPage({super.key});

  @override
  BaseWidgetState<BaseWidget> getState() {
    return _FirstPageState();
  }
}

class _FirstPageState extends BaseWidgetState<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
        actions: [
          IconButton(
              onPressed: () => toPage(w: const SecondPage()),
              icon: const Icon(Icons.arrow_forward_ios))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            ValueListenableBuilder(
              valueListenable: counter,
              builder: (context, value, child) {
                return Text(
                  '$value',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
