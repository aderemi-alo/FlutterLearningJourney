import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Static Profile'),
        ),
        body: Center(
            child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
          ),
          height: 100,
          width: 300,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Flutter Developer: Aderemi Alo"),
                SizedBox(
                  height: 10,
                ),
                Text("Skills: Flutter, Dart"),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
