import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yara/consulte.dart';
import 'package:yara/signUp.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Login page',
                  style: TextStyle(color: Colors.purple, fontSize: 30),
                ),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Get.to(() => const ServiceConsultationPage());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple, // set the background color
              ),
              child: const Text('Login'),
            ),
            TextButton(
              onPressed: () {
                Get.to(() => const CreateAccountPage());
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.purple, // set the text color
              ),
              child: const Text('Don\'t have an account? Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
