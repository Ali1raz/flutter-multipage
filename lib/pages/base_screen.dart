import 'package:flutter/material.dart';
import 'package:untitled/components/drawer_tile.dart';

class BaseScreen extends StatelessWidget {
  final Widget child;
  final String title;

  const BaseScreen({
    super.key,
    required this.child,
    required this.title
});

  @override
  Widget build(BuildContext context) {
    String currentRoute = ModalRoute.of(context)?.settings.name ?? '/';

    return Scaffold(
      appBar: AppBar(title: Text(title, style: TextStyle(color: Colors.white),),backgroundColor: Colors.blueAccent,),
      drawer: Drawer(
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
            DrawerTile(
              icon: Icons.home,
              title: "Home",
              isSelected: currentRoute == '/',
              onTap: () {
                if (currentRoute != '/') {
                  Navigator.pushNamed(context, '/');
                }
              },
            ),
            DrawerTile(
              icon: Icons.card_giftcard,
              title: "Flash cards",
              isSelected: currentRoute == '/flashcard',
              onTap: () {
                if (currentRoute != '/flashcard') {
                  Navigator.pushNamed(
                    context,
                    '/flashcard',
                  );
                }
              },
            ),
            DrawerTile(
              icon: Icons.card_giftcard,
              title: "Settings",
              isSelected: currentRoute == '/settings',
              onTap: () {
                if (currentRoute != '/settings') {
                  Navigator.pushNamed(
                    context,
                    '/settings',
                  );
                }
              },
            ),
          ],
        ),
      ),

      body: child,
    );
  }
}