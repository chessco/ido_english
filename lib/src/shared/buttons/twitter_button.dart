import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class TwitterButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;

  TwitterButtonWidget({Key key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return NeumorphicTheme(
      theme: NeumorphicThemeData(
        baseColor: Color(0xFF32383E),
        variantColor: Color(0xFF17191C),
        intensity: 0.3,
        lightSource: LightSource.topLeft,
        depth: 4,
      ),
      child: NeumorphicButton(
        padding: const EdgeInsets.all(12),
        onClick: () {},
        boxShape: NeumorphicBoxShape.circle(),
        style: NeumorphicStyle(
          surfaceIntensity: 0.2,
          shape: NeumorphicShape.convex,
          color: Color(0xFF17191C),
        ),
        child: Center(
          child: Image.asset(
            'assets/images/twitter.png',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
