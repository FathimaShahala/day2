import 'package:day2/dress_screen.dart';
import 'package:day2/jackets_screen.dart';
import 'package:day2/jeans_screen.dart';
import 'package:day2/shoes_screen.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryProducts(
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DressScreen()));
            },
            text: 'Dresses',
          ),
          SizedBox(
            width: 20,
          ),
          CategoryProducts(
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => JacketScreen()));
            },
            text: 'Jackets',
          ),
          SizedBox(
            width: 20,
          ),
          CategoryProducts(
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => JeansScreen()));
            },
            text: 'Jeans',
          ),
          SizedBox(
            width: 20,
          ),
          CategoryProducts(
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ShoesScreen()));
            },
            text: 'Shoes',
          ),
        ],
      ),
    );
  }
}

class CategoryProducts extends StatelessWidget {
  const CategoryProducts({
    key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: press,
        child: Container(
          child: Chip(
              backgroundColor: Colors.white54,
              label: Row(
                children: [
                  Text(
                    text,
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  //SizedBox(width: 20,),
                ],
              )),
        ),
      ),
    );
  }
}
