import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hali/configs/colors.dart';
import 'package:hali/controllers/home.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

HomeController homeController = Get.put(HomeController());

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: Center(child: Text("Tab $_selectedIndex")),
        bottomNavigationBar: MoltenBottomNavigationBar(
          selectedIndex: homeController.selectedIndex.value,
          onTabChange: (clickedIndex) {
            setState(() {
              homeController.selectedIndex(clickedIndex);
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
      ),
    );
  }
}
