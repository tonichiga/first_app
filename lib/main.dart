import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "My First App",
          ),
        ),
        body: Center(
          child: OutlinedButton.icon(
            // <-- OutlinedButton
            onPressed: () {},
            icon: const Icon(
              Icons.download,
              size: 24.0,
            ),
            label: const Text('Download'),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              debugPrint("You clicked me!");
            },
            label: const Text("Click me",
                style: TextStyle(fontFamily: "OpenSans"))),
      ),
    );
  }
}
