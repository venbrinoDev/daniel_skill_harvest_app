

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:skill_harvest_app/constant.dart';
import 'package:skill_harvest_app/core/util/assetsUtil/asset_util.dart';
import 'package:skill_harvest_app/signup_page.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => OnboardingState();
}

class OnboardingState extends State<Onboarding> {

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
     
      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(child: const Text("skip", style: TextStyle(color: Colors.black),), onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => const SignUp(),));
                    },),
                 ),
                 const Gap(30),
            
              SvgPicture.asset(
                Assets.onboradingThree,
                height: 300,
                width: 300,
            
              ),
              const Gap(50),
                 const Text('Create your own\n' 
                          'study plan',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: AppConstant.fontName, 
                            fontWeight: FontWeight.w700,
                            fontSize: 22),),
                const Gap(15),
  
                 const Column(
                   children: [
                     Text('Study according to the\n '
                                'study plan, make study\n'
                                'more motivated',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: AppConstant.fontName, 
                                fontWeight: FontWeight.w300,
                                fontSize: 16,),),
                                Gap(20),

                     SignIn(),
                   ],
                 ),  
            ],),
          ),
        ),
      ),
    );
  }
}

class SignIn extends StatefulWidget {
  const SignIn({
    super.key,
  });

  @override
  State<SignIn> createState() => SignInState();
}

class SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        ElevatedButton(
         onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => const SignUp(),));
         },
         style: ButtonStyle(
            backgroundColor: ButtonStyleButton.allOrNull<Color>(const Color(0xFF3D5CFF)),
            fixedSize: ButtonStyleButton.allOrNull<Size>(const Size(170, 50)),
          ),
         child: const Text('Sign Up',
          style: TextStyle(
              fontFamily: AppConstant.fontName,
              fontSize: 20,  
              color: Colors.white,
              fontWeight: FontWeight.w600)),
         ),
         const Gap(10),

         ElevatedButton(
         onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => const SignIn(),));
         },
         style: ButtonStyle(
            backgroundColor: ButtonStyleButton.allOrNull<Color>(const Color(0xFF3D5CFF)),
            fixedSize: ButtonStyleButton.allOrNull<Size>(const Size(170, 50)),
          ),
         child: const Text('Login',
          style: TextStyle(
              fontFamily: AppConstant.fontName,
              fontSize: 20,  
              color: Colors.white,
              fontWeight: FontWeight.w600)),
         ),
      ],
    );
  }
}
