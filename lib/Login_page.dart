// ignore: file_names

import 'package:flutter/material.dart';
import 'package:skill_harvest_app/onboarding.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            toolbarHeight: 300,
            title: const Text('Continue with Phone'),
            backgroundColor: Colors.grey[200],
            elevation: 1,
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const Onboarding(),
                ));
              },
              icon: const Icon(Icons.navigate_before_outlined),
            )),
      ),
    );
  }
}
