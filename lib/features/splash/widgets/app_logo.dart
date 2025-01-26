part of 'splash_screen_body.dart';

class AppLogo extends StatelessWidget {
  final AnimationController controller;
  final Animation<double> scaleAnimation;
  final Animation<double> rotationAnimation;

  const AppLogo({
    super.key,
    required this.controller,
    required this.scaleAnimation,
    required this.rotationAnimation,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: controller,
        builder: (BuildContext context, child) {
          return Transform.scale(
            scale: scaleAnimation.value,
            child: Transform.rotate(
              angle: rotationAnimation.value,
              child: child,
            ),
          );
        },
        child: Image.asset(
          AppImages.logo,
        ),
      ),
    );
  }
}