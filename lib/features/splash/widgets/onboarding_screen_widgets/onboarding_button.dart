part of 'onboarding_screen_body.dart';
class _OnboardingButton extends StatelessWidget {
  const _OnboardingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: ElevatedButton.icon(
        onPressed: () {},
        iconAlignment: IconAlignment.end,
        label: Text(context.locale.getStarted),
        icon: Icon(Icons.arrow_forward),
      ),
    );
  }
}