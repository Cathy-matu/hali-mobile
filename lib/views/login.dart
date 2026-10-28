import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hali/configs/colors.dart';

TextEditingController usernameController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SSEH"),
        backgroundColor: primaryColor,
        foregroundColor: const Color.fromARGB(255, 20, 21, 17),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/logo.png", height: 100, width: 200),
                ],
              ),
              Text(
                "Enter your username",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  hintText: "YY-XXXX",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.input),
                ),
              ),
              Text(
                "Enter your password",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
              TextField(
                controller: passwordController,
                obscureText: _obscurePassword,
                decoration: InputDecoration(
                  hintText: "Your secret code",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 25),
              MaterialButton(
                onPressed: () {
                  Get.offAndToNamed("/home");
                  Get.snackbar(
                    "Login",
                    "The username is ${usernameController.text} and the password is ${passwordController.text}",
                  );
                },
                color: primaryColor,
                height: 50,
                minWidth: double.infinity,
                child: Text("Login"),
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  Text("No Account"),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed("/register");
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: secondaryColor,
                      ),
                    ),
                  ),
                  Spacer(),
                  Text("Forgot Password"),
                  SizedBox(width: 5),
                  Text(
                    "Recover",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: secondaryColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
