import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Image.asset("assets/arrow-left.jpg"),
              ),
              const Text("Detail"),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Image.asset("assets/Heart.jpg"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
