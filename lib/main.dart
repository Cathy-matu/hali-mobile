import 'package:flutter/material.dart';

void main() {
  runApp(const Hali());
}

class Hali extends StatelessWidget {
  const Hali({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hali"),
          backgroundColor: Colors.lightGreen,
          foregroundColor: const Color.fromARGB(255, 37, 37, 37),
          centerTitle: true,
        ),

        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Image.asset("assets/logo.png", height: 100, width: 200),
              Text(
                "Enter your username",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightGreenAccent,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "YY-XXXX",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.input),
                ),
              ),
              Text("Enter your password"),
              TextField(
                decoration: InputDecoration(
                  hintText: "Your secret code",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility),
                ),
              ),
              SizedBox(height: 25),
              MaterialButton(
                onPressed: () {},
                color: Colors.lightGreenAccent,
                height: 50,
                minWidth: double.infinity,
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
