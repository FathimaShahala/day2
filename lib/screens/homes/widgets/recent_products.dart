import 'package:flutter/material.dart';
import 'package:day2/utils/app_images.dart';

class RecentProducts extends StatelessWidget {
  List productListImage = [
    AppImages.product1,
    AppImages.product2,
    AppImages.product3,
    AppImages.product4,
    AppImages.product1,
    AppImages.product2,
    /*
    'assets/images/product_1.jpg',
    'assets/images/product_2.jpeg',
    'assets/images/product_3.webp',
    'assets/images/product_4.jpg',
    'assets/images/product_1.jpg',
    'assets/images/product_2.jpeg',
    */
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
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        height: 1120,
        child: GridView.builder(
            shrinkWrap: true,
            itemCount: 6,
            physics:
                const BouncingScrollPhysics(parent: ClampingScrollPhysics()),
            scrollDirection: Axis.vertical,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              childAspectRatio: 0.5,
            ),
            itemBuilder: (context, index) {
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
                                    borderRadius: BorderRadius.circular(20)),
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
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          productListDisc[index],
                          style: const TextStyle(color: Colors.grey),
                        ),
                        Text(
                          productListPrice[index],
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
