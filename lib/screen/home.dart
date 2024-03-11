import 'package:flutter/material.dart';
import 'package:untitled/screen/login.dart';
import 'package:untitled/screen/register.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Authentication'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset("assets/image/image-rust.jpg"),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const RegisterScreen();
                          }));
                        },
                        icon: const Icon(Icons.add),
                        label: const Text(
                          'Register',
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const LoginScreen();
                          }));
                        },
                        icon: const Icon(Icons.login),
                        label: const Text(
                          'Login',
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                ],
              ),
            )));
  }
}
