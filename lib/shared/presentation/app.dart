import 'package:flight_app/shared/application/aplication.dart';
import 'package:flutter/material.dart';
import '../../features/features.dart';

class FlightApp extends StatelessWidget {
  const FlightApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
      theme: AppTheme.light,
    );
  }
}
