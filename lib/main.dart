import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(home: UserPanel()));
}

class UserPanel extends StatelessWidget {
  const UserPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: const Text("User Panel"),
      ),
      body: SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.only(top: 50)),
                  const Text(
                    "Toni Chiga",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 10)),
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/bear.jpg"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: const [
                          Padding(padding: EdgeInsets.only(top: 50)),
                          Icon(Icons.mail),
                          Padding(padding: EdgeInsets.only(left: 5)),
                          Text(
                            "Email :",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.only(left: 10)),
                      const Text(
                        "tonichiga@gmail.com",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ],
              )),
        ],
      )),
    );
  }
}

// mainAxisAlignment: MainAxisAlignment.spaceBetween,  // <-- justifyContent
// SizeBox( width: 200, child: ...)  Box width;
