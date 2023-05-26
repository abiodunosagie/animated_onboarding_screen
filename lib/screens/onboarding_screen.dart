import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rive/rive.dart';

import '../components/animated_button.dart';
import '../components/customSignindialogue.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  bool isSigninDialogueShown = false;
  late RiveAnimationController _btnAnimationController;
  @override
  void initState() {
    _btnAnimationController = OneShotAnimation(
      'active',
      autoplay: false,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const RiveAnimation.asset(
            'assets/RiveAssets/shapes.riv',
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 50,
                sigmaY: 50,
              ),
              child: const SizedBox(),
            ),
          ),
          Positioned(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(
                      flex: 1,
                    ),
                    Center(
                      child: SizedBox(
                        width: 360,
                        child: Column(
                          children: [
                            Text(
                              'Learn design & code',
                              style: GoogleFonts.poppins(
                                fontSize: 60,
                                fontWeight: FontWeight.w800,
                                height: 1.2,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Don\'t skip design. Learn design and code. By building real apps  with Flutter and Swift. Complete courses about the best tools. ',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(flex: 2),
                    AnimatedButton(
                      btnAnimationController: _btnAnimationController,
                      press: () {
                        setState(() {
                          isSigninDialogueShown = true;
                        });
                        _btnAnimationController.isActive = true;
                        Future.delayed(const Duration(milliseconds: 800), () {
                          customSigninDialogue(context);
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 24,
                      ),
                      child: Text(
                        'Purchase includes access to 30+ courses, 240+ premium tutorials, 120+ hours of videos, source files andcertificates.',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
