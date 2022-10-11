import 'package:flutter/material.dart';
import 'package:matt_food/detail_page.dart';
import 'package:matt_food/home_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageSelected = 0;
  List<Widget> screens = [
    HomePage(),
    DetailPage(),
    Center(child: Text("Menu")),
    Center(child: Text("Favourite")),
    Center(child: Text("Profile")),
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: screens[pageSelected],
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
          child: BottomNavigationBar(
            currentIndex: pageSelected,
            onTap: (value) {
              setState(
                () {
                  pageSelected = value;
                },
              );
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.list), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_outline), label: ""),
              BottomNavigationBarItem(
                  icon: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(height * 0.009),
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/images/yash.jpg',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Positioned(
                        right: -height * 0.011,
                        top: -height * 0.009,
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: height * 0.01,
                          child: CircleAvatar(
                              backgroundColor: Colors.orange,
                              radius: height * 0.005),
                        ),
                      ),
                    ],
                  ),
                  label: ""),
            ],
          ),
        ));
  }
}
