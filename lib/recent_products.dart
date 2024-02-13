import 'package:flutter/material.dart';

class RecentProducts extends StatelessWidget {
  List productListImage = [
    'assets/pic6.jpg',
    'assets/pic5.webp',
    'assets/pic4.jpeg',
    'assets/pic6.jpg',
  ];
  List productListName = [
    'Roller Rabbit',
    'White Tees',
    'Theory ',
    'Roller Rabbit',
  ];
  List productListDisc = [
    'Vado Odello Dress',
    'Bubble Elastic T-shirt',
    'Irregular Rib Skirt',
    'Vado Odello Dress',
  ];
  List productListPrice = [
    '\$198.00',
    '\$50.00',
    '\$345.00',
    '\$198.00',
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        height: 2000,
        child: GridView.builder(
            shrinkWrap: true,
            itemCount: 4,
            physics:
                const BouncingScrollPhysics(parent: ClampingScrollPhysics()),
            scrollDirection: Axis.vertical,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              childAspectRatio: 0.5,
              // mainAxisExtent: MediaQuery.of(context).size.height/2
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
                        SizedBox(height: 3.0),
                        Text(
                          productListName[index],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          productListDisc[index],
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          productListPrice[index],
                          style: TextStyle(fontWeight: FontWeight.bold),
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
