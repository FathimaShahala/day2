import 'package:day2/screens/homes/widgets/recent_products.dart';
import 'package:flutter/material.dart';
import 'package:day2/screens/homes/widgets/custom_app_bar.dart';
import 'package:day2/screens/homes/widgets/search_bar.dart';
import 'package:day2/screens/homes/widgets/category.dart';

class SliverHomeScreen extends StatefulWidget {
  const SliverHomeScreen({super.key});

  @override
  State<SliverHomeScreen> createState() => _SliverHomeScreenState();
}

class _SliverHomeScreenState extends State<SliverHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverCustomAppBar(),
          SliverSearchBar(),
          SliverCategory(),
          SliverRecentProduct()
        ],
      ),
    );
  }
}
