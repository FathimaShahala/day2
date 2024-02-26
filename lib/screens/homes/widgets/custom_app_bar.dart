import 'package:flutter/material.dart';
import 'package:day2/utils/app_images.dart';



class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.black87, borderRadius: BorderRadius.circular(30)),
            child: Builder(
              builder: (context) => Image.asset(
                AppImages.menu,
                height: 45,
                width: 45,
              ),
            ),
          ),
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.grey.shade300,
            child: SizedBox(
              width: 45,
              height: 45,
              child: ClipOval(
                child: Image.asset(
                  AppImages.profile,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
