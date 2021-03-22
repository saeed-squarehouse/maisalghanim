import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:maisalghanim/widget/menu.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var showMenu = [
    {"menuName": "Breakfast", "menuImage": "menu-1.jpeg"},
    {"menuName": "Lunch", "menuImage": "menu-2.jpeg"},
    {"menuName": "Soup", "menuImage": "menu-3.jpeg"},
    {"menuName": "Dinner", "menuImage": "menu-4.jpeg"},
    {"menuName": "Colddrink", "menuImage": "menu-1.jpeg"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              children: [
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Mais Alghanim",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: double.maxFinite,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: showMenu.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Menu(
                                menuName: showMenu[index]['menuName'],
                                menuImage: showMenu[index]['menuImage'],
                                press: () {
                                  print("object");
                                },
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
