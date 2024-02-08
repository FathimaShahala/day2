import 'package:flutter/material.dart';

class RecentProducts extends StatelessWidget {
  final productList = [
    {
      'image': 'assets/pic1.webp',
      'name': 'Roller Rabbit',
      'disc': 'Vado Odello Dress',
      'price': '198.00',
    },
    {
      'image': 'assets/pic2.webp',
      'name': 'White Tees',
      'disc': 'Bubble Elastic T-shirt',
      'price': '50.00',
    },
    {
      'image': 'assets/pic3.webp',
      'name': 'Theory ',
      'disc': 'Irregular Rib Skirt',
      'price': '345.00',
    },
    {
      'image': 'assets/pic4.webp',
      'name': 'Black Tees',
      'disc': 'Bubble Elastic T-shirt',
      'price': '50.00',
    },
    {
      'image': 'assets/pic1.webp',
      'name': 'Roller Rabbit',
      'disc': 'Vado Odello Dress',
      'price': '198.00',
    },
    {
      'image': 'assets/pic2.webp',
      'name': 'White Tees',
      'disc': 'Bubble Elastic T-shirt',
      'price': '50.00',
    },
    {
      'image': 'assets/pic3.webp',
      'name': 'Theory ',
      'disc': 'Irregular Rib Skirt',
      'price': '345.00',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.60),
        itemBuilder: (BuildContext context, int index) {
          return RecentSingleProduct(
            recent_single_product_image: productList[index]['image'],
            recent_single_product_name: productList[index]['name'],
            recent_single_product_disc: productList[index]['disc'],
            recent_single_product_price: productList[index]['price'],
          );
        });
  }
}

class RecentSingleProduct extends StatefulWidget {
  final recent_single_product_image;
  final recent_single_product_name;
  final recent_single_product_disc;
  final recent_single_product_price;

  RecentSingleProduct({
    this.recent_single_product_image,
    this.recent_single_product_name,
    this.recent_single_product_disc,
    this.recent_single_product_price,
  });

  @override
  State<RecentSingleProduct> createState() => _RecentSingleProductState();
}

class _RecentSingleProductState extends State<RecentSingleProduct> {
  bool isLike = false;
  final Color inactiveColor = Colors.black87;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey.shade300,
            ),
            child: Image.asset(widget.recent_single_product_image),
          ),
        ),
        ListTile(
          title: Center(
            child: Text(
              widget.recent_single_product_name,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),

          subtitle: Center(
              child: Text(
            widget.recent_single_product_disc,
          )),

          //  '\$${widget.recent_single_product_price}')),
          // trailing: Center(child: Text('\$${widget.recent_single_product_price}'))
        ),
      ],
    );
  }
}
