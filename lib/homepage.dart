import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: GNav(
        backgroundColor: Colors.black,
        color: Colors.white,
        activeColor: Colors.white,
        gap: 8, 
        tabs: [
          GButton(icon: Icons.home,
                  text: 'Home',),
          GButton(icon: Icons.settings,
                  text: 'Settings',),
          GButton(icon: Icons.contact_emergency_outlined,
                  text: 'Assistant', ),
        ],
      ),
    );
  }
}
