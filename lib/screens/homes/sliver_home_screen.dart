import 'package:day2/screens/homes/widgets/recent_products.dart';
import 'package:flutter/material.dart';
import 'package:day2/screens/homes/widgets/custom_app_bar.dart';
import 'package:day2/screens/homes/widgets/custom_search_bar.dart';
import 'package:day2/screens/homes/widgets/category.dart';
import 'package:day2/utils/custom_silver_delegate.dart';


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
          SliverAppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            automaticallyImplyLeading: false,
            elevation: 0,
            pinned: false,
            bottom: const PreferredSize(
            preferredSize: Size.fromHeight(5),
            child: SizedBox(
            height: 61,
             )),
            flexibleSpace: const CustomAppBar(),
          ),
      SliverPersistentHeader(
            pinned: false,
            floating: false,
            delegate: SliverAppBarDelegate(
              minHeight: 281 * 0.187,
              maxHeight: 492 * 0.187,
              child: const CustomSearchBar(),
             )
          ),
          SliverPersistentHeader(
            pinned: false,
            floating: false,
            delegate: SliverAppBarDelegate(
              minHeight: 200 * 0.187,
              maxHeight: 509 * 0.187,
              child: const Category(),
             )
          ),
           SliverList( 
             delegate: SliverChildBuilderDelegate(
                 (BuildContext context, int index) {
                  return RecentProduct();
                 }
             )
           )
  
          

          
         // RecentProduct()
        ],
      ),
    );
  }
}
