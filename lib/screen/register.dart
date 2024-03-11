import 'package:flutter/material.dart';
import 'package:untitled/model/profile.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  Profile profile = Profile(email: '', password: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Register'),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter your email',
                      ),
                      keyboardType: TextInputType.emailAddress,
                      onSaved: (String? value) {
                        profile.email = value!;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                      ),
                      obscureText: true,
                      onSaved: (String? value) {
                        profile.password = value!;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          formKey.currentState?.save();
                          print(
                              "email = ${profile.email} , password = ${profile.password}");
                          formKey.currentState?.reset();
                        },
                        child: const Text('Register'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
