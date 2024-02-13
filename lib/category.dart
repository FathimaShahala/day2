import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<String> items = [
    "Dresses",
    "Jacket",
    "Jeans",
    "Sockes",
  ];

  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 55,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            current = index;
                          });
                        },
                        child: Container(
                          // duration: const Duration(milliseconds: 1),
                          margin: const EdgeInsets.all(10),
                          width: 75,
                          height: 35,
                          decoration: BoxDecoration(
                            color:
                                current == index ? Colors.black : Colors.white,
                            borderRadius: current == index
                                ? BorderRadius.circular(30)
                                : BorderRadius.circular(30),
                            border: current == index
                                ? Border.all(color: Colors.black, width: 1)
                                : Border.all(color: Colors.grey, width: 1),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  items[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: current == index
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
