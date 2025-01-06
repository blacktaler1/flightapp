import 'package:flight_app/features/features.dart';
import 'package:go_router/go_router.dart';

final GoRouter routerConfig = GoRouter(
  routerNeglect: true,
  initialLocation: '/onboarding',
  routes: [
    GoRoute(
      name: 'onboarding',
      path: '/onboarding',
      builder: (context, state) => OnboardingScreen(),
    ),
    GoRoute(
      name: 'sign-in',
      path: '/sign-in',
      builder: (context, state) => SignInScreen(),
    ),
    GoRoute(
      name: 'sign-up',
      path: '/sign-up',
      builder: (context, state) => SignUpScreen(),
    )
  ],
);
