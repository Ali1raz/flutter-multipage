import 'package:flutter/material.dart';
import 'package:untitled/components/drawer_tile.dart';

class BaseScreen extends StatelessWidget {
  final Widget child;
  final String title;

  const BaseScreen({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    String currentRoute = ModalRoute.of(context)?.settings.name ?? '/';

    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueAccent,
      ),
      drawer: _buildDrawer(context),
      body: child,
    );
  }

  Widget _buildDrawer(BuildContext context) {
    String currentRoute = ModalRoute.of(context)?.settings.name ?? '/';

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              "Drawer Example",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          _buildDrawerItem(context, Icons.home_outlined, "Home", '/', currentRoute),
          _buildDrawerItem(context, Icons.card_giftcard_outlined, "Flashcard", '/flashcard', currentRoute),
          _buildDrawerItem(context, Icons.settings_outlined, "Settings", '/settings', currentRoute),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(BuildContext context, IconData icon, String title, String route, String currentRoute) {
    return DrawerTile(icon: icon, title: title, isSelected: currentRoute == route, onTap:() { _navigateToRoute(context, route, currentRoute);});
  }

  void _navigateToRoute (BuildContext context, String route, String currentRoute) {
    if (currentRoute != route) {
      Navigator.pushNamed(context, route);
    }
  }
}