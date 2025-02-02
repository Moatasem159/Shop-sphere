import 'package:flutter/material.dart';
import 'package:shop_sphere/core/routing/app_router.dart';
import 'package:shop_sphere/core/utils/app_images.dart';

part 'app_logo.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _scaleAnimation;
  late final Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();
    _initializeAnimations();
    _navigateToNextScreen();
    _controller.forward();

  }

  void _initializeAnimations() {
    _controller = AnimationController(duration: const Duration(milliseconds: 1200), vsync: this);
    _scaleAnimation = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 0.4, end: 1.4), weight: 100),
      TweenSequenceItem(tween: Tween(begin: 1.4, end: 1.0), weight: 100),
    ]).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.ease,
      ),
    );

    _rotationAnimation = Tween<double>(begin: 0.0, end: 3 * 3.14159).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.ease,
      ),
    );
  }

  void _navigateToNextScreen() async {
    await Future.delayed(Duration(seconds: 4));
    if (mounted) {
      OnBoardingRoute().go(context);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -60,
          child: Image.asset(
            AppImages.splashBackground,
          ),
        ),
        AppLogo(
          controller: _controller,
          scaleAnimation: _scaleAnimation,
          rotationAnimation: _rotationAnimation,
        ),
        AnimatedBuilder(
          animation: _scaleAnimation,
          builder: (context, child) {
            return Positioned.fill(
              bottom: 40,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 1000),
                  curve: Curves.ease,
                  opacity: _controller.isCompleted ? 1 : 0,
                  child: CircularProgressIndicator(strokeWidth: 2.5, strokeAlign: 1),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}