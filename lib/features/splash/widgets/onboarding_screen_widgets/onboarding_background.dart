part of 'onboarding_screen_body.dart';

class _OnboardingBackground extends StatelessWidget {
  const _OnboardingBackground();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Positioned(
            top: 16,
            right: 25,
            left: 25,
            child: CustomText(
              data: context.locale.onboardingDialog,
              textStyle: AppTextStyles.h1SemiBold,
              textScaler: 0.8,
            ),
          ),
          Positioned(
            top: 20,
            child: Image.asset(
              AppImages.onBoardingBackground,
            ),
          ),
          Positioned(
            height: 700,
            child: Padding(
              padding: const EdgeInsets.only(left: 40, top: 25),
              child: Image.asset(
                AppImages.person,
              ),
            ),
          ),
        ],
      ),
    );
  }
}