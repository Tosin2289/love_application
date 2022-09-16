import 'package:flutter/material.dart';
import 'dart:math';

class Result extends StatelessWidget {
  Result({Key? key, required this.name, required this.crushname})
      : super(key: key);
  String name;
  String crushname;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
        title: Text("Love doc".toUpperCase()),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(top: 50, bottom: 100, left: 50, right: 50),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
          child: ListView(
            children: [
              Image.asset(
                "images/heart1.jpg",
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "You have  ${getNumber()}% chance together",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0,
                      color: Colors.red),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

int getNumber() {
  return Random().nextInt(100);
}
