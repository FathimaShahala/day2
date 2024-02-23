import 'package:flutter/material.dart';

class SliverCategory extends StatelessWidget {
  const SliverCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      automaticallyImplyLeading: false,
      elevation: 0,
      pinned: false,
      bottom: const PreferredSize(
          preferredSize: Size.fromHeight(15),
          child: SizedBox(
            height: 2,
          )),
      flexibleSpace: const Category(),
    );
  }
}

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<String> items = [
    "Dresses",
    "Jackets",
    "Jeans",
    "Shoes",
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
                                    fontWeight: FontWeight.w600,
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
