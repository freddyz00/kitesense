import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
        body: ListView(
          children: <Widget>[
            // Header
            Header(),

            // Main Image
            Padding(
              padding: const EdgeInsets.fromLTRB(100, 40, 100, 40),
              child: Container(
                height: 520,
                padding: const EdgeInsets.only(
                  top: 20,
                  bottom: 50,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xff7c94b6),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/carousel_bg.f7edf0fc.png'),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                      offset: Offset(0.0, 2.0),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(40, 30, 40, 30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 24),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.teal,
                                child: Text(
                                  'M',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('Hello, Monica Yang!',
                                      style: TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(
                                    'Let\'s complete this next!',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        ConstrainedBox(
                          constraints: const BoxConstraints(
                            maxWidth: 200,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // Assignments
          ],
        ),
      ),
    );
  }
}
