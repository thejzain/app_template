import 'package:flutter/material.dart';
import 'package:login_hehe/homepage.dart';
import 'package:login_hehe/register.dart';

void main(List<String> args) {
  return (runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("LoginPage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _loginFields(300),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white24),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(" Login "),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterPage(),
                      ),
                    );
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white24),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6.0),
                    child: Text("Register"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget _loginFields(double x) {
  return Container(
    width: x,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        TextField(
          decoration:
              InputDecoration(labelText: "Email", border: OutlineInputBorder()),
        ),
        SizedBox(
          height: 15,
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
              labelText: "Password", border: OutlineInputBorder()),
        )
      ],
    ),
  );
}
