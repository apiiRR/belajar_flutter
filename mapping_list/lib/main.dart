import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> myList = [
      {
        "Name" : "Sandhika",
        "Age" : 23,
        "favColor" : ["Black", "Red", "Amber", "Black", "Red", "Amber"],
      },
      {
        "Name" : "Yusuf",
        "Age" : 25,
        "favColor" : ["Green", "Red", "Amber"],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ID Apps"),
        ),
        body: ListView(
          children: myList.map((data) {
            List myFavColor = data["favColor"];
            return Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(),
                      Column(
                        children: [
                          Text("Name : ${data['Name']}"),
                          Text("Age : ${data['Age']}")
                        ],
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: myFavColor.map((color) {
                        return Container(
                          color: Colors.amber,
                          margin: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 8,
                          ),
                          padding: EdgeInsets.all(10),
                          child: Text("Color : ${color}"),
                        );
                      }).toList(),
                    ),
                  )
                ],
              ),
            );
          }).toList(),
        ),
      )
    );
  }
}