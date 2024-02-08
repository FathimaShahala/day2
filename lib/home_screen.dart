import 'package:day2/bottom_navigation.dart';
import 'package:day2/recent_products.dart';
import 'package:flutter/material.dart';
import 'package:day2/custom_app_bar.dart';
import 'package:day2/search_bar.dart';
import 'package:day2/category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationScreen(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              CustomAppBar(),
              SizedBox(
                height: 5,
              ),
              SearchBar(),
              SizedBox(
                height: 5,
              ),
              Category(),
              SizedBox(
                height: 5,
              ),
              Container(height: 900, child: RecentProducts()),
            ],
          ),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
