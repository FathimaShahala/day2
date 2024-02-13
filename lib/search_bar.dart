import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade50, blurRadius: 4)
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 14),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Search...',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/search.png',
                        width: 10,
                        height: 10,
                        // fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              )),
              const SizedBox(width: 20),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(30)),
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/filter.png'),
                  iconSize: 30,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
