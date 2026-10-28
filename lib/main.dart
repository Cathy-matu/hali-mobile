import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hali/configs/routes.dart';

void main() {
  runApp(const SSEH());
}

class SSEH extends StatelessWidget {
  const SSEH({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      getPages: myRoutes,
    );
  }
}
