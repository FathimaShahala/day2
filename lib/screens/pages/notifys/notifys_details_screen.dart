import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class DetailsScreen extends StatefulWidget {
  final String  image,title,price,description;
  //final double price;
    const DetailsScreen({super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.description
    });

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  

//List<Products> products =[];
  @override
  Widget build(BuildContext context) {
return  Scaffold(
       appBar: AppBar(
        title: const Text(
            "PRODUCTS",
        ),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              width: 150,
              height: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24.0),
                child: Image(
                  fit: BoxFit.fill,
                  alignment: Alignment.center,
                  image:  NetworkImage(
                    widget.image
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Center(
              child: Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal
                ),
              ),
            ),
            SizedBox(height: 15,),
            Column(
                children: [
                  Container(
                    child: Text(
                                    widget.price,
                                    style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic
                                    ),
                                  ),
                  ),
                  SizedBox(height: 15,),
                  Text(
                                    widget.description,
                                    style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic
                                    ),
                                  ),
                ],
            )
          ],
        ),
      ),
    );
  }
}
 