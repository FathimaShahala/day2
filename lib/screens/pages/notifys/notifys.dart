import 'package:flutter/material.dart';

class Notifys extends StatefulWidget {
  const Notifys({super.key});

  @override
  State<Notifys> createState() => _NotifysState();
}

class _NotifysState extends State<Notifys> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        'Notifys',
        style: TextStyle(fontSize: 40),
      )),
    );
  }
}
