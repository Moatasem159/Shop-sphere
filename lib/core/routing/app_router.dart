import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_sphere/features/splash/screens/splash_screen.dart';
part 'app_router.g.dart';
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