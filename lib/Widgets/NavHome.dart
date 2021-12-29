import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../Screens/AccountPage.dart';
import '../Screens/HomePage.dart';
import '../Screens/FavPage.dart';
import '../Screens/SearchPage.dart';

class NavHome extends StatefulWidget {

  @override
  _NavHomeState createState() => _NavHomeState();
}

class _NavHomeState extends State<NavHome> {
  //Navigation bar index
  int index = 0;
  final screens = [HomePage(), SearchPage(), FavPage()];
  //Google User data
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('AirCast'),
          centerTitle: true,
          backgroundColor: Color(0xff363250),
          actions: [
            GestureDetector(
              child: CircleAvatar(
                backgroundImage: NetworkImage(user.photoURL!),
              ),
              onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context) => AccountPage()),
            )
            )
          ],
        ),
        bottomNavigationBar: NavigationBarTheme(
          data:const NavigationBarThemeData(indicatorColor: const Color(0xff6768ab),
            backgroundColor: Colors.white,
          ),
              child: NavigationBar(
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          backgroundColor: Color(0xff363250),
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              selectedIcon: Icon(Icons.home),

            ),
            NavigationDestination(
              icon: Icon(Icons.search),
              label: 'Search',
              selectedIcon: Icon(Icons.search),
            ),
            NavigationDestination(
              icon: Icon(Icons.favorite_outline),
              label: 'Favorites',
              selectedIcon: Icon(Icons.favorite),
            ),
          ],
        ),

        ),
    body: screens[index]
    );

  }
}
