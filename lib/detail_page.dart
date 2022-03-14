import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'model/zara.dart';

class DetailPage extends StatelessWidget {
  // final;
  final String name;
  final String image;
  final String desc;
  final int price;
  final String category;
  final double ratings;
  final int reviewer;
  final int sold;


  const DetailPage({
    Key? key,
    required this.name,
    required this.image,
    required this.desc,
    required this.category,
    required this.ratings,
    required this.reviewer,
    required this.sold,
    this.price = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 30.0),
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Image.network(image),
              SizedBox(height: 16,),
              Text(name, style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 16,),
              Text("Desc :  ", style: TextStyle(fontWeight: FontWeight.bold)),
              Text(desc, style: TextStyle(fontWeight: FontWeight.bold),),
              Text("Ratings : ${ratings}",style: TextStyle(fontWeight: FontWeight.bold)),
              Text(" "),
              Text("Reviewer : ${reviewer}",style: TextStyle(fontWeight: FontWeight.bold)),
              Text(" "),
              Text("Sold : ${sold}",style: TextStyle(fontWeight: FontWeight.bold)),
              Text("${price}"),
            ],
          ),
        ),
      ),
    );
  }
}
