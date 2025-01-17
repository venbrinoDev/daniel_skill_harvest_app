import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:skill_harvest_app/constant.dart';
import 'package:skill_harvest_app/onboarding.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  void initState() {
    loadDelay();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void loadDelay() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return const Onboarding();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText(
                  'Money! Money!! Money!!!',
                  textStyle: TextStyle(
                    fontSize: 32.0,
                    color: Colors.blue[800],
                    fontWeight: FontWeight.bold,
                  ),
                  speed: const Duration(milliseconds: 100),
                ),
              ],
              totalRepeatCount: 1,
            ),
            const Gap(5),
            const Text(
              'We borrow to all',
              style: TextStyle(fontFamily: AppConstant.fontName, fontSize: 25, fontWeight: FontWeight.w300),
            )
          ],
        ),
      ),
    );
  }
}
