import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:skill_harvest_app/core/util/assetsUtil/asset_util.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

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
                 const Align(
                    alignment: Alignment.centerRight,
                    child: Text('Skip'),
                 ),
                 const Gap(30),
            
              SvgPicture.asset(
                Assets.onboardingOne,
                height: 200,
                width: 200,
            
              )
            ],),
          ),
        ),
      ),
    );
  }
}