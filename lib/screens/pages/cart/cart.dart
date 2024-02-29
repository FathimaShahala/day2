// add http plugin

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:day2/models/model_album.dart';


class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<Album> album =[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "CART",
        ),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context,snapshot) {
          if(snapshot.hasData){
            return ListView.builder(
                itemCount: album.length,
                itemBuilder: (context,index){
                  return Card(   
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10), 
                     child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Image.network(album[index].thumbnailUrl),
                          SizedBox( width: 15),
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'albumId:${album[index].albumId}',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Text(
                                    'id:${album[index].id}',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Text(
                                    album[index].title,
                                    style: TextStyle(fontSize: 14,
                                    fontWeight: FontWeight.bold
                                    ),
                                  ),
                                   ],
                              ),
                            ),
                        ],
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
    Future<List<Album>> getData() async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    var data = jsonDecode(response.body.toString());

    if(response.statusCode ==200){
      for(Map<String,dynamic> index in data){
        album.add(Album.fromJson(index));
      }
      return album;
    } else {
      return album;
    }
  }
}


/*
import 'dart:async';
import 'dart:convert';
import 'package:day2/utils/apis.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

 

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  
  
  List<dynamic> Root = [];
   bool _loading = false;



  @override
  void initState(){
   loadUserList();
  super.initState();
  }

Future<Root>loadUserList() async {
     serState (){
      _loading=true;
    }
    var res = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
    if (res.statusCode == 200) {
      return Root.fromJson(jsonDecode(res.body)as Map<String,dynamic>);
    }
    else
    {
      throw Exception('Failed to load Root');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const FittedBox(
          child: Text(
            "CART",
          ),
        ),
      ),
      body: Root.isNotEmpty
          ? ListView.builder(
              itemCount: Root.length,
              itemBuilder: ((context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 10.0,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    
                    child:Row(
                      children: [
                        Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(Root[index].albumId.toString()),
                                Text(Root[index].id.toString()),
                                Text(Root[index].title.toString()),
                              ],
                        ),
                       ],
                    ),
                  ),
                );
              }),
            )
          : Container(
            child: Center(
                child: _loading
                    ? CircularProgressIndicator()
                    : ElevatedButton(
                        child: const Text("fetch users"),
                        onPressed:
                            loadUserList,
                        
                           
                      ),
              ),
          ),
    );
  }
 
   
}

 */