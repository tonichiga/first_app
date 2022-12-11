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
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                width: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [Text("Hello"), Text("World"), Text("World")],
                )),
            Column(
              children: const [Text("Hello"), Text("World")],
            )
          ],
        ),
        // body: Container(
        //   margin: const EdgeInsets.all(20),
        //   padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        //   // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        //   color: Colors.purple,
        //   child: const Text("Hello"),
        // ),

        //  const Center(
        //     child: Image(
        //   image: AssetImage(
        //       "assets/bear.jpg"),
        // )
        // OutlinedButton.icon(
        //   // <-- OutlinedButton
        //   onPressed: () {},
        //   icon: const Icon(
        //     Icons.download,
        //     size: 24.0,
        //   ),
        //   label: const Text('Download'),
        // ),
        // ),
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


// mainAxisAlignment: MainAxisAlignment.spaceBetween,  // <-- justifyContent
// SizeBox( width: 200, child: ...)  Box width;