import 'package:flutter/material.dart';
import 'package:hali/configs/colors.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final fullNameController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();
  bool _obscurePassword = true;
  bool _obscureConfirm = true;

  @override
  void dispose() {
    fullNameController.dispose();
    usernameController.dispose();
    passwordController.dispose();
    confirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SSEH"),
        backgroundColor: primaryColor,
        foregroundColor: secondaryColor,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. Logo
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/logo.png", height: 100, width: 200),
                ],
              ),

              // 2. Fields
              Text(
                "Enter your full name",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 67, 169, 30),
                ),
              ),
              TextField(
                controller: fullNameController,
                decoration: InputDecoration(
                  hintText: "Lewis Hamilton",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Enter username",
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
              SizedBox(height: 15),
              Text(
                "Create a password",
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
              SizedBox(height: 15),
              Text(
                "Confirm your password",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
              TextField(
                controller: confirmController,
                obscureText: _obscureConfirm,
                decoration: InputDecoration(
                  hintText: "Repeat your secret code",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock_outline),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureConfirm ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureConfirm = !_obscureConfirm;
                      });
                    },
                  ),
                ),
              ),

              // 3. Register button
              SizedBox(height: 25),
              MaterialButton(
                onPressed: () {
                  if (fullNameController.text.trim().isEmpty ||
                      usernameController.text.trim().isEmpty ||
                      passwordController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Please fill in all fields")),
                    );
                    return;
                  }
                  if (passwordController.text != confirmController.text) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Passwords do not match")),
                    );
                    return;
                  }
                  print("Registering ${usernameController.text}");
                  // later: call your backend here, then Navigator.pop(context)
                },
                color: primaryColor,
                height: 50,
                minWidth: double.infinity,
                child: Text("Register"),
              ),

              // 4. Back to login
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed("/");
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: secondaryColor,
                      ),
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
