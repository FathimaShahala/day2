import 'dart:convert';
import 'package:day2/screens/pages/notifys/notifys_details_screen.dart';
import 'package:day2/utils/model_products.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Notifys extends StatefulWidget {
  const Notifys({super.key});

  @override
  State<Notifys> createState() => _NotifysState();
}

class _NotifysState extends State<Notifys> {
  List<Products> products =[];
  //List<Rating> rating=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "PRODUCTS",
        ),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context,snapshot) {
          if(snapshot.hasData){
            return ListView.builder(
                itemCount: products.length,
                itemBuilder: (context,index){
                  return Card(   
                    margin: const  EdgeInsets.symmetric(horizontal: 10,vertical: 10), 
                     child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailsScreen(
                            image: products[index].image ,
                            title:products[index].title,
                            price:'\$${products[index].price}',
                            description:products[index].description
                            )));
                        },
                        child: Row(
                          children: [
                           FittedBox(
                             child: Material(
                              color: Colors.white,
                              elevation: 5,
                              borderRadius: BorderRadius.circular(30),
                              shadowColor: const Color.fromARGB(128, 132, 142, 150),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                 children: <Widget>[
                                  Container(
                                   width: 150,
                                   height: 200,
                                   child: ClipRRect(
                                     borderRadius: BorderRadius.circular(24.0),
                                     child: Image(
                                     fit: BoxFit.fill,
                                     alignment: Alignment.center,
                                      image:  NetworkImage(
                                          products[index].image),
                                     ),
                                  ),
                                  ),
                                ],
                                )
                           ),
                          ),
                            const SizedBox( width: 15),
                            Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      products[index].title,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                      ),
                                     const SizedBox(height: 5,),
                                    Text(
                                       '\$${products[index].price}',
                                     // 'price:${products[index].price}',
                                      style: const TextStyle(fontSize: 15),
                                    ),
                                      ],
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  );
                });
          }
          else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        }
      ),
    );
    }
    Future<List<Products>> getData() async{
    final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));
    var data = jsonDecode(response.body.toString());

    if(response.statusCode ==200){
      for(Map<String,dynamic> index in data){
        products.add(Products.fromJson(index));
      }
      return products;
    } else {
      return products;
    }
  }
}


