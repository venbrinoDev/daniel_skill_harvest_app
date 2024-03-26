// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:skill_harvest_app/constant.dart';
import 'package:skill_harvest_app/enter_details_widget.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();}
class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 120,
        leadingWidth: double.infinity,
        leading: const Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Log in',
                  style: TextStyle(
                      fontFamily: AppConstant.fontName,
                      fontSize: 32,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
              Gap(5),
              EnterDetailsText()],),),
        backgroundColor: Colors.grey.withOpacity(0.2),),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(20),
            EmailTextFild(),
            Gap(20),
            PasswordTextField()
          ],
        ),
      ),
    );
  }
}

class EmailTextFild extends StatelessWidget {
  const EmailTextFild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        label: Text('Your   Email'),
        labelStyle: TextStyle(color: Colors.grey),
        hintText: 'Enter your email',
        hintStyle: const TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(15)),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.grey)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(15)),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(15)
            ),
      ),
    );
  }
}

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    super.key,
  });
 
  @override 
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.black),
      obscureText: true,

      decoration: InputDecoration(

        label: Text('Password'),
        labelStyle: TextStyle(color: Colors.grey),
        hintText: 'Enter your password',
        hintStyle: const TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(15)),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.grey)
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(15)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(15)
        ),
      ),
    );
  }
}

