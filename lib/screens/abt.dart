import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text("love doc".toUpperCase()),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Text(
          "Created by PHENOMES".toUpperCase(),
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 50, color: Colors.red),
        ),
      ),
    );
  }
}
