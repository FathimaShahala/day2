import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, -1),
              blurRadius: 20,
            ),
          ]),
      child: const Padding(
        padding: EdgeInsets.all(10),
        child: GNav(
          backgroundColor: Colors.transparent,
          color: Colors.black,
          activeColor: Colors.black,
          tabBackgroundColor: Colors.grey,
          gap: 10,
          padding: EdgeInsets.all(20),
          tabs: [
            GButton(
                icon: Icons.home_filled,
                iconSize: 20,
                text: 'Home',
                textSize: 15),
            GButton(
                icon: Icons.shopping_cart_rounded,
                iconSize: 20,
                text: 'Cart',
                textSize: 15),
            GButton(
                icon: Icons.notifications_rounded,
                iconSize: 20,
                text: 'Notification',
                textSize: 15),
            GButton(
                icon: Icons.account_circle_outlined,
                iconSize: 20,
                text: 'Profile',
                textSize: 15),
          ],
        ),
      ),
    );
  }
}
