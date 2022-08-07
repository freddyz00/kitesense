import 'package:flutter/material.dart';
import 'package:kitesense/assignments_grid.dart';
import 'package:kitesense/carousel.dart';
import './header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Header(),
              Padding(
                padding: const EdgeInsets.fromLTRB(130, 40, 130, 20),
                child: Column(
                  children: const [
                    Carousel(),
                    SizedBox(height: 30),
                    AssignmentsGrid(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
