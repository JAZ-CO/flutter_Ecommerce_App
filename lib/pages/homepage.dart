import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/components/bottom_nav_bar.dart';
import 'package:flutter_ecommerce_app/pages/shop_page.dart';

import 'cart_page.dart';

class HomePage extends StatefulWidget {
  int selectedIndex = 0;
  HomePage({super.key, required this.selectedIndex});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // index

  // navigator bar
  void navigateBottomBar(int index) {
    print(widget.selectedIndex);
    setState(() {
      widget.selectedIndex = index;
    });
  }

  // pages to display
  final List<Widget> _pages = [
    ShopPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      drawer: Drawer(
        width: 500,
        backgroundColor: Colors.grey[900],
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // logo at top

              Column(
                children: [
                  DrawerHeader(
                      child: Image.asset(
                    'lib/images/nike_logo.png',
                    color: Colors.white,
                  )),
                  // divider
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: Divider(
                      color: Colors.grey[800],
                    ),
                  ),

                  // other pages
                  const Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Home",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.info,
                        color: Colors.white,
                      ),
                      title: Text(
                        "About",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Logout",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ]),
      ),
      body: _pages[widget.selectedIndex],
    );
  }
}
