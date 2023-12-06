import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yara/consulte.dart';
import 'package:yara/login.dart';
import 'package:yara/signUp.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Meet Your Experts',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MeetYourExpertsPage(),
    );
  }
}

class MeetYourExpertsPage extends StatelessWidget {
  const MeetYourExpertsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meet Your Experts'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Text(
                'MEET YOUR EXPERTS',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Colors.purple,
                    ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    child: const Text('Sign In'),
                    onPressed: () {
                      Get.to(() => const LoginPage());
                    },
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: OutlinedButton(
                    child: const Text('Sign Up'),
                    onPressed: () {
                      Get.to(() => const CreateAccountPage());
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
