import 'package:flutter/material.dart';
import 'package:shop_sphere/core/extension/context_extension.dart';
import 'package:shop_sphere/core/theme/app_text_styles.dart';
import 'package:shop_sphere/core/utils/app_images.dart';
import 'package:shop_sphere/core/widgets/custom_text.dart';

part 'onboarding_background.dart';
part 'onboarding_button.dart';
class OnBoardingScreenBody extends StatelessWidget {
  const OnBoardingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _OnboardingBackground(),
        const _OnboardingButton(),
      ],
    );
  }
}