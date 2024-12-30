import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final int currentStep;
  const Indicator({
    super.key,
    required this.currentStep,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Durations.medium1,
      child: Row(
        key: Key("steps-$currentStep"),
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: currentStep == 0
                  ? Theme.of(context).colorScheme.primary
                  : Color(0xffE1F0ED),
            ),
            width: currentStep == 0 ? 60 : 20,
            height: 6,
          ),
          const SizedBox(width: 8),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: currentStep == 1
                  ? Theme.of(context).colorScheme.primary
                  : Color(0xffE1F0ED),
            ),
            width: currentStep == 1 ? 60 : 20,
            height: 6,
          ),
          const SizedBox(width: 8),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: currentStep == 2
                  ? Theme.of(context).colorScheme.primary
                  : Color(0xffE1F0ED),
            ),
            width: currentStep == 2 ? 60 : 20,
            height: 6,
          ),
        ],
      ),
    );
  }
}
