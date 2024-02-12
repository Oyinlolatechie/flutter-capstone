// ignore_for_file: non_constant_identifier_names

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
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: const Home(title: 'Detail'),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Image.asset("assets/arrow-left.jpg"),
            ),
            Expanded(
                child: Center(
              child: Text(
                title,
                style: const TextStyle(
                    fontFamily: 'Sora-Bold.ttf', fontWeight: FontWeight.bold),
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Image.asset("assets/Heart.jpg"),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: HeroSection(),
          ),
        ]),
      ),
    );
  }
}

class HeroSection extends StatelessWidget {
  HeroSection({super.key});

  final Image HeroImage = Image.asset('assets/Rectangle.jpg');
  final String BrandName = 'Cappucino';
  final String BrandNameType = 'with Chocolate';
  final String Rating = '4.8';
  final String Sales = '(230)';
  final Image IconBean = Image.asset('assets/bean.jpg');
  final Image IconMilk = Image.asset('assets/milk.jpg');

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20.0),
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(
        color: Color.fromRGBO(155, 155, 155, 0.5),
        width: 1.0,
      ))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40.0, bottom: 10.0),
            child: HeroImage,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, bottom: 8.0),
            child: Text(
              BrandName,
              style: const TextStyle(
                  fontFamily: 'Sora-ExtraBold.ttf',
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, bottom: 6.0),
            child: Text(BrandNameType,
                style: const TextStyle(
                    fontFamily: 'Sora-Regular.ttf',
                    fontSize: 20,
                    color: Color.fromRGBO(155, 155, 155, 0.5))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.star_rounded,
                        size: 35.0, color: Colors.amber),
                    Text(
                      Rating,
                      style: const TextStyle(
                        fontFamily: 'Sora-Bold.ttf',
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                    Text(
                      Sales,
                      style: const TextStyle(
                          fontFamily: 'Sora-Regular.ttf',
                          fontSize: 20.0,
                          color: Color.fromRGBO(155, 155, 155, 0.5)),
                    ),
                  ],
                ),
                // const Spacer(),
                Row(
                  children: [
                    Container(
                      width: 40.0,
                      height: 42.0,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(126, 192, 192, 192),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: const Color.fromRGBO(155, 155, 155, 0.5),
                          width: 1.0,
                        ),
                      ),
                      child: IconBean,
                    ),
                    const SizedBox(width: 20),
                    Container(
                      margin: const EdgeInsets.only(right: 30),
                      width: 40.0,
                      height: 42.0,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(126, 192, 192, 192),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: const Color.fromRGBO(155, 155, 155, 0.5),
                          width: 1.0,
                        ),
                      ),
                      child: IconMilk,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// 