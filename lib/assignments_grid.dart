import 'package:flutter/material.dart';

class AssignmentsGrid extends StatelessWidget {
  const AssignmentsGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 9,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return const AssignmentCard(
          title: "Whole Numbers 1",
          subject: "Mathematics",
          date: 'Jan 31, 2022',
        );
      },
    );
  }
}

class AssignmentCard extends StatelessWidget {
  const AssignmentCard(
      {Key? key,
      required this.title,
      required this.subject,
      required this.date})
      : super(key: key);

  final String title;
  final String subject;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.grey,
          width: 2,
        ),
        image: const DecorationImage(
          image: AssetImage('assets/images/assignment_card_bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const Icon(
                Icons.menu_book,
                size: 50,
              ),
              const SizedBox(height: 10),
              Text(
                title,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Subject: ',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    subject,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Due Date: ',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    date,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
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
    );
  }
}
