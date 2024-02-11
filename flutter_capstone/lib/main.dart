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
                padding: const EdgeInsets.only(left: 30.0),
                child: Image.asset("assets/arrow-left.jpg"),
              ),
              const Text("Detail"),
              Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: Image.asset("assets/Heart.jpg"),
              ),
            ],
          ),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Image.asset("assets/Rectangle.jpg"),
              ),
              const SizedBox(
                width: double.infinity,
                child: Text("Cappucino"),
              ),
              const SizedBox(
                width: double.infinity,
                child: Text("With Chocolate"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.star_rounded),
                      Text("4.8"),
                      Text("(230)"),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset("assets/bean.jpg"),
                      Image.asset("assets/milk.jpg")
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
