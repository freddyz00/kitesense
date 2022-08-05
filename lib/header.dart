import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      padding: const EdgeInsets.symmetric(
        horizontal: 100,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5,
            spreadRadius: 3,
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          SvgPicture.asset(
            'assets/images/logo.svg',
          ),
          const SizedBox(width: 50),
          Expanded(
            child: Row(
              children: const [
                HeaderItem(
                  title: "School Bag",
                  icon: Icon(
                    Icons.backpack_rounded,
                    color: Color.fromRGBO(33, 33, 33, 100),
                  ),
                ),
                SizedBox(width: 50),
                HeaderItem(
                  title: "Content Vault",
                  icon: Icon(
                    Icons.home_work,
                    color: Color.fromRGBO(33, 33, 33, 100),
                  ),
                ),
                SizedBox(width: 50),
                HeaderItem(
                  title: "Class Enrolment",
                  icon: Icon(
                    Icons.library_books,
                    color: Color.fromRGBO(33, 33, 33, 100),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: const [
              Icon(Icons.chat_bubble_outline_rounded),
              SizedBox(width: 30),
              Icon(Icons.notifications_none_outlined),
              SizedBox(width: 30),
              CircleAvatar(
                backgroundColor: Colors.teal,
                child: Text(
                  "M",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class HeaderItem extends StatelessWidget {
  const HeaderItem({Key? key, required this.title, required this.icon})
      : super(key: key);

  final String title;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        icon,
        const SizedBox(
          width: 10,
        ),
        Text(title,
            style: const TextStyle(
              fontSize: 18,
            )),
      ],
    );
  }
}
