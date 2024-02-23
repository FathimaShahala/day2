/*


import 'package:day2/screens/homes/widgets/recent_products.dart';
import 'package:flutter/material.dart';
import 'package:day2/screens/homes/widgets/custom_app_bar.dart';
import 'package:day2/screens/homes/widgets/search_bar.dart';
import 'package:day2/screens/homes/widgets/category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(1),
          child: ListView(
            children: [
              const CustomAppBar(),
              const SizedBox(
                height: 2,
              ),
              const SearchBar(),
              const SizedBox(
                height: 2,
              ),
              const Category(),
              const SizedBox(
                height: 2,
              ),
              RecentProducts(),
            ],
          ),
          // ),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
*/
