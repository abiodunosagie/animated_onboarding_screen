import 'package:flutter/material.dart';

import 'screens/onboarding_screen.dart';

void main() {
  runApp(const TestOnboardingMain());
}

class TestOnboardingMain extends StatefulWidget {
  const TestOnboardingMain({super.key});

  @override
  State<TestOnboardingMain> createState() => _TestOnboardingMainState();
}

class _TestOnboardingMainState extends State<TestOnboardingMain> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
