// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:skill_harvest_app/constant.dart';
import 'package:skill_harvest_app/enter_details_widget.dart';
import 'package:skill_harvest_app/text_field.dart';
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
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center, 
          children: const [
            Gap(20),
            EmailTextFild(),
            Gap(30),
            PasswordTextField(),
            Gap(15),
            ForgetPassword(),
            Gap(50),
            LoginButton(),
          ],
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){},
    child:
     const Text('Login?',
      style: TextStyle(
          fontFamily: AppConstant.fontName,
          fontSize: 15,  
          color: Colors.black,
          fontWeight: FontWeight.w300)),);
  }
}

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Align(
        alignment: Alignment.centerRight,
        child: Text('Forgot password?',
              style: TextStyle(
                decoration: TextDecoration.underline,
                  fontFamily: AppConstant.fontName,
                  fontSize: 15,  
                  color: Colors.black,
                  fontWeight: FontWeight.w300)),
      ),
    );
  }
}
