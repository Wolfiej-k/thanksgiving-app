import 'package:flutter/material.dart';
import 'menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  void onNavTap(int index) {
    setState(() => selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SafeArea(
        child: MenuPage(page: Page.values[selectedIndex]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onNavTap,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.food_bank_outlined,
              color: Theme.of(context).primaryColor,
              size: 30.0,
            ),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.cake_outlined,
              color: Theme.of(context).primaryColor,
              size: 30.0,
            ),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_drink_outlined,
              color: Theme.of(context).primaryColor,
              size: 30.0,
            ),
            label: ''
          ),
        ],
      ),
    );
  }
}

enum Page {
  turkey,
  dessert,
  drink,
}