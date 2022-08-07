import 'package:flutter/material.dart';

final backgroundDecoration = BoxDecoration(
  color: const Color(0xff7c94b6),
  image: const DecorationImage(
    image: AssetImage('assets/images/carousel_bg.png'),
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
);

class Carousel extends StatelessWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 520,
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 50,
      ),
      decoration: backgroundDecoration,
      child: const Center(
        child: CarouselCard(),
      ),
    );
  }
}

class CarouselCard extends StatelessWidget {
  const CarouselCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 500,
      ),
      padding: const EdgeInsets.fromLTRB(40, 30, 40, 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: const [
          TitleSection(name: 'Monica Yang'),
          SizedBox(height: 25),
          AssignmentSection(),
        ],
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.teal,
          child: Text(
            name[0],
            style: const TextStyle(
              color: Colors.white,
              fontSize: 40,
            ),
          ),
        ),
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hello, $name!',
                style:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            const Text(
              'Let\'s complete this next!',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class AssignmentSection extends StatelessWidget {
  const AssignmentSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
                image: AssetImage('assets/images/assignment_card_bg.png'),
                fit: BoxFit.cover),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(0.0, 2.0),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Text(
                    'Measure Whole Numbers, Area ...',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('My Journey Progress: '),
                      Text(
                        '0%',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Subject: ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Mathematics',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Assigned Date: ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Jan 28, 2022',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  minimumSize: const Size(double.infinity, 50),
                  primary: const Color.fromRGBO(2, 79, 148, 1.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('View Journey'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
