import 'package:flutter/material.dart';
import 'app_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('La Fleur'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: Text('Love'),
                  subtitle: Text('Flowers to express love'),
                  leading: Image.asset('assets/love.jpg'),
                ),
                ListTile(
                  title: Text('Friendship'),
                  subtitle: Text('Flowers to give for friends'),
                  leading: Image.asset('assets/friendship.jpg'),
                ),
                ListTile(
                  title: Text('Sympathy'),
                  subtitle: Text('FLowers to express deep sympathy'),
                  leading: Image.asset('assets/sympathy.jpg'),
                ),
                ListTile(
                  title: Text('Gratitude'),
                  subtitle: Text('Flowers to show gratituted'),
                  leading: Image.asset('assets/gratitude.jpg'),
                ),
                ListTile(
                  title: Text('Celebration'),
                  subtitle: Text('Flowers perfect to celebrate special ocassions'),
                  leading: Image.asset('assets/celebration.jpg'),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: AppDrawer(),
    );
  }
}
