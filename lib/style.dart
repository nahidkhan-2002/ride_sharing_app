import 'utils.dart';
import 'package:flutter/material.dart';

AppBar barstyle(value) => AppBar(
  title: Text(value, style: TextStyle(color: Colors.white)),
  backgroundColor: Color(0xFF584CF4),
  iconTheme: IconThemeData(color: Colors.white),
  actions: [
    IconButton(onPressed: () {}, icon: Icon(Icons.search)),
    IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined)),
    IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border_rounded)),
  ],
);

Drawer drawerstyle(context) => Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(
        decoration: BoxDecoration(color: Color(0xFF584CF4)),
        child: Text(
          "Navigation Menu",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
      ListTile(
        leading: Icon(Icons.home_outlined, color: Color(0xFF584CF4)),
        onTap: () {
          Navigator.pushReplacementNamed(context, "homepage");
          currentindexValue = 0;
        },
        title: Text("Home"),
      ),
      ListTile(
        leading: Icon(Icons.shopping_bag_outlined, color: Color(0xFF584CF4)),
        onTap: () {},
        title: Text("Products"),
      ),
      ListTile(
        leading: Icon(Icons.shop_2_outlined, color: Color(0xFF584CF4)),
        title: Text("Shop"),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(
          Icons.settings_applications_outlined,
          color: Color(0xFF584CF4),
        ),
        title: Text("Care"),
        onTap: () {
          Navigator.pushReplacementNamed(context, 'carepage');
          currentindexValue = 3;
        },
      ),
      ListTile(
        leading: Icon(Icons.group_outlined, color: Color(0xFF584CF4)),
        title: Text("Community"),
        onTap: () {},
      ),
    ],
  ),
);

GridView gridstyle = GridView.count(
  crossAxisCount: 2, // static: 2 items per row
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  children: List.generate(4, (index) {
    return Container(
      color: Colors.teal[100 * (index % 9)],
      child: Center(child: Text("Item $index")),
    );
  }),
);

List imageLink = [
  "assets/images_pro/person1.png",
  "assets/images_pro/person3.png",
  "assets/images_pro/person2.png",
  "assets/images_pro/person4.png",
  "assets/images_pro/person5.png",
  "assets/images_pro/person3.png",
];
