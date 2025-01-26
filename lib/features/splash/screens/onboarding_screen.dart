import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop_sphere/core/theme/app_theme.dart';
import 'package:shop_sphere/features/splash/widgets/onboarding_screen_widgets/onboarding_screen_body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  //TODO: make responsive
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: AppTheme.systemUiOverlayStyle(context),
      child: SafeArea(
        child: Scaffold(
          body: const OnBoardingScreenBody(),
        ),
      ),
    );
  }
}