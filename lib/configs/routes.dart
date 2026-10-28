import 'package:get/get.dart';
import 'package:hali/views/home.dart';
import 'package:hali/views/login.dart';
import 'package:hali/views/register.dart';

var myRoutes = [
  GetPage(name: "/", page: () => LoginScreen()),
  GetPage(name: "/register", page: () => RegisterScreen()),
  GetPage(name: "/home", page: () => HomeScreen()),
];
