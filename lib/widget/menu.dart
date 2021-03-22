import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final String menuName, menuImage;
  final Color lineColor;
  final Function press;
  const Menu({
    Key key,
    this.menuName,
    this.menuImage,
    this.press,
    this.lineColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: GestureDetector(
        onTap: press,
        child: Column(
          children: [
            Image.asset(
              'assets/images/$menuImage',
              width: 150,
              height: 150,
            ),
            Text(
              menuName,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 3),
              height: 2,
              width: 30,
              color: lineColor,
            ),
          ],
        ),
      ),
    );
  }
}
