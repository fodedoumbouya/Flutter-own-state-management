import 'package:flutter/material.dart';
import 'package:flutter_own_state_management/base/base_widget.dart';
import 'package:flutter_own_state_management/pages/image_page.dart';

class SecondPage extends BaseWidget {
  const SecondPage({super.key});

  @override
  BaseWidgetState<BaseWidget> getState() {
    return _SecondPageState();
  }
}

class _SecondPageState extends BaseWidgetState<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
        actions: [
          IconButton(
              onPressed: () => toPage(w: const ImagePage()),
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
