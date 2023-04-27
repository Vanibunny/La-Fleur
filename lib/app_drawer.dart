import 'package:flutter/material.dart';
import 'about.dart';
import 'home.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage("assets/logo.jpg"), fit: BoxFit.cover)),
              child: Text(
                'La Fleur',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.grey, size: 30),
              title: Text('Home', style: TextStyle(color: Colors.grey, fontSize: 20)),  
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                 ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.favorite,
                color: Colors.grey,
                size: 30,
              ),
              title: Text(
                'Favorites',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.category,
                color: Colors.grey,
                size: 30,
              ),
              title: Text(
                'Category',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.contact_mail,
                color: Colors.grey,
                size: 30,
              ),
              title: Text(
                'Contact Us',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile( 
              leading: Icon(Icons.info, color: Colors.grey, size: 30),
              title: Text('About', style: TextStyle(color: Colors.grey, fontSize: 20)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutScreen()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey,
                size: 30,
              ),
              title: Text(
                'Settings',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
