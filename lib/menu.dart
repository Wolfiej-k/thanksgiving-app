import 'package:flutter/material.dart';
import 'home.dart' as home;
import 'data.dart' as data;

class MenuPage extends StatefulWidget {
  const MenuPage({super.key, required this.page});

  final home.Page page;

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: displayMenu(context),
          ),
        ],
      ),
    );
  }

  Widget displayMenu(BuildContext context) {
    data.Menu menu;

    switch (widget.page) {
      case home.Page.turkey:
        menu = data.turkey;
        break;
      case home.Page.dessert:
        menu = data.dessert;
        break;
      case home.Page.drink:
        menu = data.drink;
        break;
    }

    return ListView.builder(
      itemCount: menu.items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => displayMenuDetails(menu.items[index]),
              ),
            );
          },
          child: displayMenuCard(menu.items[index]),
        );
      },
    );
  }

  Widget displayMenuCard(data.MenuItem item) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              item.label,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(80.0),
              child: Image(image: AssetImage(item.image)),
            ),
            const SizedBox(
              height: 14.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget displayMenuDetails(data.MenuItem item) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            displayMenuCard(item),
            Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    item.getIngredients(),
                    style: const TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Palatino',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}