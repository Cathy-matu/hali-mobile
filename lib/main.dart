import 'package:flutter/material.dart';
import 'package:hali/views/login.dart';

void main() {
  runApp(const Hali());
}

class Hali extends StatelessWidget {
  const Hali({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginScreen());
  }
}
