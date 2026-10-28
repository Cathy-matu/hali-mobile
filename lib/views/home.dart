import 'package:flutter/material.dart';
import 'package:hali/configs/colors.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Tab $_selectedIndex")),
      bottomNavigationBar: MoltenBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onTabChange: (clickedIndex) {
          setState(() {
            _selectedIndex = clickedIndex;
          });
        },
        barColor: primaryColor,
        domeCircleColor: secondaryColor,

        tabs: [
          MoltenTab(icon: Icon(Icons.dashboard)),
          MoltenTab(icon: Icon(Icons.groups)),
          MoltenTab(icon: Icon(Icons.event)),
          MoltenTab(icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
