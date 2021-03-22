import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:maisalghanim/widget/menu.dart';
import 'package:maisalghanim/widget/menu_item.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  List<Map> showMenu = [
    {"menuId": 1, "menuName": "Breakfast", "menuImage": "menu-1.jpeg"},
    {"menuId": 2, "menuName": "Lunch", "menuImage": "menu-2.jpeg"},
    {"menuId": 3, "menuName": "Soup", "menuImage": "menu-3.jpeg"},
    {"menuId": 4, "menuName": "Dinner", "menuImage": "menu-4.jpeg"},
    {"menuId": 5, "menuName": "Colddrink", "menuImage": "menu-1.jpeg"},
  ];

  List<Map> menuItem = [
    {
      "menuId": 0,
      "itemName": "Card Title 1",
      "itemSubTitle": "Show More...",
      "itemImage": "menu-item-3.jpeg",
      "menuDetails": [
        {"itemName": "Hummus Fatteh", "price": "2.500"},
        {"itemName": "Lemon Mint Juice", "price": "1.450"},
        {"itemName": "Imported Water 0.750 Ltr", "price": "1.450"},
        {"itemName": "Chickpeas, Tahina & Lemon Juice", "price": "1.200"},
        {"itemName": "Beetroot, Olive Oil & Lemon", "price": "1.250"},
        {"itemName": "Hummus Fatteh", "price": "2.500"},
        {"itemName": "Lemon Mint Juice", "price": "1.450"},
        {"itemName": "Imported Water 0.750 Ltr", "price": "1.450"},
        {"itemName": "Chickpeas, Tahina & Lemon Juice", "price": "1.200"},
        {"itemName": "Beetroot, Olive Oil & Lemon", "price": "1.250"},
      ],
    },
    {
      "menuId": 0,
      "itemName": "Card Title 1",
      "itemSubTitle": "Show More...",
      "itemImage": "menu-item-6.jpeg",
      "menuDetails": [
        {"itemName": "Hummus Fatteh", "price": "2.500"},
        {"itemName": "Lemon Mint Juice", "price": "1.450"},
        {"itemName": "Imported Water 0.750 Ltr", "price": "1.450"},
        {"itemName": "Chickpeas, Tahina & Lemon Juice", "price": "1.200"},
        {"itemName": "Beetroot, Olive Oil & Lemon", "price": "1.250"},
      ],
    },
    {
      "menuId": 1,
      "itemName": "Card Title 2",
      "itemSubTitle": "Show More...",
      "itemImage": "menu-item-5.jpeg",
      "menuDetails": [
        {"itemName": "Hummus Fatteh", "price": "2.500"},
        {"itemName": "Lemon Mint Juice", "price": "1.450"},
        {"itemName": "Imported Water 0.750 Ltr", "price": "1.450"},
        {"itemName": "Chickpeas, Tahina & Lemon Juice", "price": "1.200"},
        {"itemName": "Beetroot, Olive Oil & Lemon", "price": "1.250"},
      ],
    },
    {
      "menuId": 1,
      "itemName": "Card Title 4",
      "itemSubTitle": "Show More...",
      "itemImage": "menu-item-3.jpeg",
      "menuDetails": [
        {"itemName": "Hummus Fatteh", "price": "2.500"},
        {"itemName": "Lemon Mint Juice", "price": "1.450"},
        {"itemName": "Imported Water 0.750 Ltr", "price": "1.450"},
        {"itemName": "Chickpeas, Tahina & Lemon Juice", "price": "1.200"},
        {"itemName": "Beetroot, Olive Oil & Lemon", "price": "1.250"},
      ],
    },
    {
      "menuId": 2,
      "itemName": "Card Title 3",
      "itemSubTitle": "Show More...",
      "itemImage": "menu-item-2.jpeg",
      "menuDetails": [
        {"itemName": "Hummus Fatteh", "price": "2.500"},
        {"itemName": "Lemon Mint Juice", "price": "1.450"},
        {"itemName": "Imported Water 0.750 Ltr", "price": "1.450"},
        {"itemName": "Chickpeas, Tahina & Lemon Juice", "price": "1.200"},
        {"itemName": "Beetroot, Olive Oil & Lemon", "price": "1.250"},
      ],
    },
    {
      "menuId": 2,
      "itemName": "Card Title 3",
      "itemSubTitle": "Show More...",
      "itemImage": "menu-item-1.jpeg",
      "menuDetails": [
        {"itemName": "Hummus Fatteh", "price": "2.500"},
        {"itemName": "Lemon Mint Juice", "price": "1.450"},
        {"itemName": "Imported Water 0.750 Ltr", "price": "1.450"},
        {"itemName": "Chickpeas, Tahina & Lemon Juice", "price": "1.200"},
        {"itemName": "Beetroot, Olive Oil & Lemon", "price": "1.250"},
      ],
    },
    {
      "menuId": 3,
      "itemName": "Card Title 4",
      "itemSubTitle": "Show More...",
      "itemImage": "menu-item-6.jpeg",
      "menuDetails": [
        {"itemName": "Hummus Fatteh", "price": "2.500"},
        {"itemName": "Lemon Mint Juice", "price": "1.450"},
        {"itemName": "Imported Water 0.750 Ltr", "price": "1.450"},
        {"itemName": "Chickpeas, Tahina & Lemon Juice", "price": "1.200"},
        {"itemName": "Beetroot, Olive Oil & Lemon", "price": "1.250"},
      ],
    },
    {
      "menuId": 3,
      "itemName": "Card Title 4",
      "itemSubTitle": "Show More...",
      "itemImage": "menu-item-5.jpeg",
      "menuDetails": [
        {"itemName": "Hummus Fatteh", "price": "2.500"},
        {"itemName": "Lemon Mint Juice", "price": "1.450"},
        {"itemName": "Imported Water 0.750 Ltr", "price": "1.450"},
        {"itemName": "Chickpeas, Tahina & Lemon Juice", "price": "1.200"},
        {"itemName": "Beetroot, Olive Oil & Lemon", "price": "1.250"},
      ],
    },
    {
      "menuId": 4,
      "itemName": "Card Title 5",
      "itemSubTitle": "Show More...",
      "itemImage": "menu-item-4.jpeg",
      "menuDetails": [
        {"itemName": "Hummus Fatteh", "price": "2.500"},
        {"itemName": "Lemon Mint Juice", "price": "1.450"},
        {"itemName": "Imported Water 0.750 Ltr", "price": "1.450"},
        {"itemName": "Chickpeas, Tahina & Lemon Juice", "price": "1.200"},
        {"itemName": "Beetroot, Olive Oil & Lemon", "price": "1.250"},
      ],
    },
    {
      "menuId": 4,
      "itemName": "Card Title 5",
      "itemSubTitle": "Show More...",
      "itemImage": "menu-item-3.jpeg",
      "menuDetails": [
        {"itemName": "Hummus Fatteh", "price": "2.500"},
        {"itemName": "Lemon Mint Juice", "price": "1.450"},
        {"itemName": "Imported Water 0.750 Ltr", "price": "1.450"},
        {"itemName": "Chickpeas, Tahina & Lemon Juice", "price": "1.200"},
        {"itemName": "Beetroot, Olive Oil & Lemon", "price": "1.250"},
      ],
    },
    {
      "menuId": 5,
      "itemName": "Card Title 6",
      "itemSubTitle": "Show More...",
      "itemImage": "menu-item-2.jpeg",
      "menuDetails": [
        {"itemName": "Hummus Fatteh", "price": "2.500"},
        {"itemName": "Lemon Mint Juice", "price": "1.450"},
        {"itemName": "Imported Water 0.750 Ltr", "price": "1.450"},
        {"itemName": "Chickpeas, Tahina & Lemon Juice", "price": "1.200"},
        {"itemName": "Beetroot, Olive Oil & Lemon", "price": "1.250"},
      ],
    },
    {
      "menuId": 5,
      "itemName": "Card Title 6",
      "itemSubTitle": "Show More...",
      "itemImage": "menu-item-1.jpeg",
      "menuDetails": [
        {"itemName": "Hummus Fatteh", "price": "2.500"},
        {"itemName": "Lemon Mint Juice", "price": "1.450"},
        {"itemName": "Imported Water 0.750 Ltr", "price": "1.450"},
        {"itemName": "Chickpeas, Tahina & Lemon Juice", "price": "1.200"},
        {"itemName": "Beetroot, Olive Oil & Lemon", "price": "1.250"},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Center(
                  child: Column(
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
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 200,
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
                                lineColor: selectedIndex == index
                                    ? Colors.black
                                    : Colors.transparent,
                                press: () {
                                  setState(() {
                                    selectedIndex = index;
                                  });
                                },
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemCount: menuItem.length,
                        itemBuilder: (BuildContext context, int index) {
                          if (selectedIndex == menuItem[index]['menuId']) {
                            return MenuItem(
                              itemName: menuItem[index]['itemName'],
                              itemSubTitle: menuItem[index]['itemSubTitle'],
                              itemImage: menuItem[index]['itemImage'],
                              onTap: () {
                                showDialogFunc(context, menuItem[index]);
                              },
                            );
                          }
                          return SizedBox();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

showDialogFunc(context, menuItem) {
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    color: Colors.white,
                  ),
                  width: 300,
                  height: 700,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/${menuItem['itemImage']}",
                          width: 300,
                          height: 200,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          menuItem['itemName'],
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SingleChildScrollView(
                          child: ListView.separated(
                            physics: ClampingScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: menuItem['menuDetails'].length,
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(
                                dense: true,
                                title: Text(
                                    menuItem['menuDetails'][index]['itemName']),
                                trailing: Text(
                                  menuItem['menuDetails'][index]['price'],
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              );
                              // Text(menuItem['menuDetails'][index]['itemName']);
                            },
                            separatorBuilder: (context, index) {
                              return Divider();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    color: Colors.black45,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_sharp,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      });
}
