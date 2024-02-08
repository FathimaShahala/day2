import 'package:day2/login_screen.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.black87, borderRadius: BorderRadius.circular(30)),
          child: Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              icon: Image.asset('assets/icon.png'),
              iconSize: 35,
            ),
            //const Icon(color: Colors.white, Icons.menu_rounded)),
          ),
        ),
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.grey.shade300,
          child: SizedBox(
            width: 45,
            height: 45,
            child: ClipOval(
              child: Image.asset("assets/prof.webp"),
            ),
          ),
        ),
      ],
    );
  }
}
