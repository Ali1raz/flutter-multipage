import 'package:flutter/material.dart';

class TicketApp extends StatefulWidget {
  const TicketApp({super.key});

  @override
  State<TicketApp> createState() => _TicketAppState();
}

class _TicketAppState extends State<TicketApp> {
  int currentPageIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen2(),
    const SettingsScreen2()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ticket App")),
      body: _pages[currentPageIndex],
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_outlined),
            selectedIcon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
      ),
    );
  }
}

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("🏠 Home Page", style: TextStyle(fontSize: 24)),
    );
  }
}

// Settings Page Widget
class SettingsScreen2 extends StatelessWidget {
  const SettingsScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("⚙️ Settings Page", style: TextStyle(fontSize: 24)),
    );
  }
}
