// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:skill_harvest_app/constant.dart';
import 'package:skill_harvest_app/enter_details_widget.dart';
import 'package:skill_harvest_app/text_field.dart';


class SignUp extends StatelessWidget {
  const SignUp({super.key});
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
              Text('Sign Up',
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
            Gap(30),
            EmailTextFild(),
            Gap(40),
            PasswordTextField(),
            Gap(40),
            CreateAccount(),
            Gap(20),
            Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.start,

                   children: [
                    Text("By creating an account you have to agree\n our Terms and conditions"),
                  ],
                ),
                Gap(50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Already has an account?   '),
                  Align(
                    child: TextButton(onPressed: () { 
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => login,));
                     },
                    child: Text("Login", style: TextStyle(color: Colors.black),)),
                  )
                ],
              )],
            ),
          ],
        ),
      ),
    );
  }
}

class CreateAccount extends StatefulWidget {
  const CreateAccount({
    super.key,
  });

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){},
      style: ButtonStyle(
        backgroundColor: ButtonStyleButton.allOrNull<Color>(Color(0xFF3D5CFF)),
        fixedSize: ButtonStyleButton.allOrNull<Size>(Size(MediaQuery.of(context).size.width, 50))
      ),
    child:
     const Text('Create Account', 
      style: TextStyle(
          fontFamily: AppConstant.fontName,
          fontSize: 20,  
          color: Colors.white,
          fontWeight: FontWeight.w600)
          ),
          
          );}   
}