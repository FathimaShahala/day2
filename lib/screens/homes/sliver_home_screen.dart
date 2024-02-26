//import 'package:day2/screens/homes/widgets/recent_products.dart';
import 'package:flutter/material.dart';
import 'package:day2/screens/homes/widgets/custom_app_bar.dart';
import 'package:day2/screens/homes/widgets/custom_search_bar.dart';
import 'package:day2/screens/homes/widgets/category.dart';
import 'package:day2/utils/custom_silver_delegate.dart';
import 'package:day2/utils/app_images.dart';



class SliverHomeScreen extends StatefulWidget {
  const SliverHomeScreen({super.key});

  @override
  State<SliverHomeScreen> createState() => _SliverHomeScreenState();
}

class _SliverHomeScreenState extends State<SliverHomeScreen> {
  List productListImage = [
    AppImages.product1,
    AppImages.product2,
    AppImages.product3,
    AppImages.product4,
    AppImages.product1,
    AppImages.product2,
  ];
  List productListName = [
    'Roller Rabbit',
    'White Tees',
    'Theory ',
    'Roller Rabbit',
    'White Tees',
    'Theory ',
  ];
  List productListDisc = [
    'Vado Odello Dress',
    'Bubble Elastic T-shirt',
    'Irregular Rib Skirt',
    'Vado Odello Dress',
    'Bubble Elastic T-shirt',
    'Irregular Rib Skirt',
  ];
  List productListPrice = [
    '\$198.00',
    '\$50.00',
    '\$345.00',
    '\$198.00',
    '\$510.00',
    '\$150.00',
  ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            automaticallyImplyLeading: false,
            elevation: 0,
            pinned: true,
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
              minHeight: 550 * 0.187,
              maxHeight: 550 * 0.187,
              child: const CustomSearchBar(),
             )
          ),
          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: SliverAppBarDelegate(
              minHeight: 550 * 0.187,
              maxHeight: 550 * 0.187,
              child: Container(
                color: Colors.white,
                child: const Category()),
             )
          ),
          SliverGrid(
            gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                    childAspectRatio: 0.5,
                  ),
             delegate: SliverChildBuilderDelegate(
                 (BuildContext context, int index) {
                  return Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          index.isEven
                              ? Container()
                              : SizedBox(
                                  height: height * 0.1,
                                ),
                          Container(
                            height: height * 0.25,
                            child: Stack(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(productListImage[index]),
                                  ),
                                ),
                                Positioned(
                                    right: 10,
                                    top: 10,
                                    child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: const Center(
                                          child: Icon(
                                        Icons.favorite_border_outlined,
                                        color: Colors.white,
                                        size: 15,
                                      )),
                                    ))
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(height: 12),
                              Text(
                                productListName[index],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                productListDisc[index],
                                style: const TextStyle(color: Colors.grey),
                              ),
                              Text(
                                productListPrice[index],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  childCount: 6,
                   ), 
            ),
          ],
   ),
    );
  }
}

