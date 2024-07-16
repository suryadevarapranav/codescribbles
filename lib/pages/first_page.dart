import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/profile_page.dart';
import 'package:flutter_application_1/pages/settings_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // this keeps track of the current page...
  int _selectedIndex = 0;

  // this method updates the new selected index
  void _navigateBotomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // the pages we have in our app...
  final List _pages = [
    // homepage
    HomePage(),

    // profilepage
    ProfilePage(),

    // settingspage
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1st Page")),

      body: _pages[_selectedIndex],

      // Using a Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBotomBar,
          items: [
            // home
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),

            // profile
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),

            // settings
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settigns"),
          ]),

      /*
      // Drawer
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            // very common to place a drawer header here
            DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 48,
              ),
            ),

            // home page list tile
            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
              onTap: () {
                // pop the drawer first
                Navigator.pop(context);
                // go to the home page
                Navigator.pushNamed(context, '/homepage');
              },
            ),

            // settings page list title
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G S"),
              onTap: () {
                // pop the drawer first
                Navigator.pop(context);
                // go to the settings page
                Navigator.pushNamed(context, '/settingspage');
              },
            )
          ],
        ),
      ),

      */

      /*
      // Routes

      body: Center(
        child: ElevatedButton(
          child: Text("Go To Second Page"),
          /*
          // navigate to the second page...
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SecondPage()));
          },
          */
          onPressed: () {
            Navigator.pushNamed(context, '/secondpage');
          },
        ),
      ),
      */
    );
  }
}
