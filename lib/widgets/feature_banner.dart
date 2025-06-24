// widgets/feature_banner.dart
import 'package:flutter/material.dart';

class FeatureBanner extends StatelessWidget {
  const FeatureBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      child: Image.asset('assets/images/feature_banner.png',
        fit: BoxFit.cover,
        width: double.infinity,
        height: 350,
      ),
    );
  }
}
