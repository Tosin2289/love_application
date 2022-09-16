import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:love_application/screens/abt.dart';
import '/screens/result.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _name;
  var _crushname;
  final crushcontroller = TextEditingController();
  final namecontroller = TextEditingController();
  void dispose() {
    crushcontroller.dispose();
    namecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("love doc".toUpperCase()),
        centerTitle: true,
        elevation: 0.0,
      ),
      drawer: Drawer(
        backgroundColor: Colors.red,
        child: ListView(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Image(
                image: AssetImage(
                  "images/hert.jpg",
                ),
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return About();
                }));
              },
              leading: Icon(FontAwesomeIcons.meetup),
              title: Text("About us",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 20),
            ListTile(
              onTap: () {
                SystemNavigator.pop();
              },
              leading: Icon(Icons.logout),
              title:
                  Text("Logout", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 150),
            SizedBox(height: 50),
            Icon(
              FontAwesomeIcons.heartbeat,
              color: Colors.white,
              size: 200,
            )
          ],
        ),
      ),
      body: Center(
        child: Container(
          padding:
              EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0, bottom: 90.0),
          child: ListView(
            children: [
              Text(
                "Check how much your crush loves you",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
              Image.asset(
                "images/heart2.jpg",
                height: 300.0,
                width: MediaQuery.of(context).size.width,
              ),
              SizedBox(
                height: 30.0,
              ),
              TextFormField(
                controller: namecontroller,
                style:
                    TextStyle(color: Colors.red, decorationColor: Colors.red),
                decoration: InputDecoration(
                  focusColor: Colors.red,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  fillColor: Colors.red,
                  hoverColor: Colors.red,
                  iconColor: Colors.red,
                  prefixIcon: Icon(Icons.favorite),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  labelText: "Your name",
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextFormField(
                controller: crushcontroller,
                style: TextStyle(color: Colors.red),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.red,
                      )),
                  fillColor: Colors.red,
                  focusColor: Colors.red,
                  hoverColor: Colors.red,
                  prefixIconColor: Colors.red,
                  iconColor: Colors.red,
                  prefixIcon: Icon(Icons.favorite),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
                  labelText: "Your crush name",
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              OutlineButton(
                color: Colors.purple,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Result(
                      name: namecontroller.text,
                      crushname: crushcontroller.text,
                    );
                  }));
                },
                child: Text("Calculate ", style: TextStyle(color: Colors.red)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
