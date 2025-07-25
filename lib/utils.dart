import 'package:flutter/material.dart';
import 'package:ride_sharing_app/carepage.dart';
import 'package:ride_sharing_app/homepage.dart';

List<Widget> widgetList = const [Homepage(), Carepage()];

int currentindexValue = 0;

List<BottomNavigationBarItem> navbarItems = const [
  BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
  BottomNavigationBarItem(
    icon: Icon(Icons.shopping_bag_outlined),
    label: 'Product',
  ),
  BottomNavigationBarItem(icon: Icon(Icons.shop_2_outlined), label: 'Shop'),
  BottomNavigationBarItem(
    icon: Icon(Icons.miscellaneous_services),
    label: 'Care',
  ),
  BottomNavigationBarItem(icon: Icon(Icons.group_outlined), label: 'Community'),
];

List namelist = ["Nishad", "Nikita", "Ravi", "Rishika", "Rakib", "Aritri"];
