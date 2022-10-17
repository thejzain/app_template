import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("RegisterPage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _registerFields(300),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white24),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: Text("Register"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _registerFields(double x) {
  return Container(
    width: x,
    child: Column(
      children: const [
        TextField(
          decoration: InputDecoration(
            labelText: "Username",
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        TextField(
          decoration: InputDecoration(
            labelText: "Email",
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: "Password",
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    ),
  );
}
