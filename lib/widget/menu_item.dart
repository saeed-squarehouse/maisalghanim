import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String itemName, itemImage, itemSubTitle;
  final Function onTap;
  const MenuItem({
    Key key,
    this.itemName,
    this.itemImage,
    this.itemSubTitle,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          ListTile(
            dense: true,
            leading: Image.asset(
              'assets/images/$itemImage',
            ),
            onTap: () {
              onTap();
            },
            title: Text(itemName),
            subtitle: Text(itemSubTitle),
            visualDensity: VisualDensity.comfortable,
          ),
          Divider(),
        ],
      ),
    );
  }
}
