import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.black87, borderRadius: BorderRadius.circular(30)),
            child: Builder(
              builder: (context) => IconButton(
                onPressed: () {},
                icon: Image.asset('assets/images/ic_menu.png'),
                iconSize: 5,
              ),
            ),
          ),
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.grey.shade300,
            child: SizedBox(
              width: 45,
              height: 45,
              child: ClipOval(
                child: Image.asset("assets/images/profile.webp"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
