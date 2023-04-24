import 'package:flutter/material.dart';
import 'package:flutter_own_state_management/base/base_widget.dart';
import 'package:flutter_own_state_management/pages/Home/home_view.dart';

class ImagePage extends BaseWidget {
  const ImagePage({super.key});

  @override
  BaseWidgetState<BaseWidget> getState() {
    return _ImagePageState();
  }
}

class _ImagePageState extends BaseWidgetState<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Page"),
        actions: [
          IconButton(
              onPressed: () => toPage(w: const Home()),
              icon: const Icon(Icons.arrow_forward_ios))
        ],
      ),
      body: Center(
          child: ValueListenableBuilder(
        valueListenable: counter,
        builder: (context, value, child) {
          return Image.network('https://picsum.photos/250?image=$value');
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
