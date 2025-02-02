import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_sphere/features/splash/screens/onboarding_screen.dart';
import 'package:shop_sphere/features/splash/screens/splash_screen.dart';

part 'app_router.g.dart';

part 'route_animation/horizontal_slide.dart';

class AppRouter {
  GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: "/",
    routes: $appRoutes,
  );
}

@TypedGoRoute<SplashRoute>(path: '/')
class SplashRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const SplashScreen();
}

@TypedGoRoute<OnBoardingRoute>(path: '/onBoardingRoute')
class OnBoardingRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) => HorizontalSlide(
        key: state.pageKey,
        name: state.name,
        arguments: state.extra,
        direction: SlideDirection.right,
        child: OnboardingScreen(),
      );
}