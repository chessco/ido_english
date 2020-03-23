import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class BackButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;

  BackButtonWidget({Key key, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return NeumorphicTheme(
      theme: NeumorphicThemeData(
        baseColor: Color(0xFF32383E),
        variantColor: Color(0xFF17191C),
        intensity: 0.3,
        lightSource: LightSource.topLeft,
        depth: 2,
      ),
      child: NeumorphicButton(
        onClick: onPressed ??
            () {
              Navigator.of(context).maybePop();
            },
        boxShape: NeumorphicBoxShape.circle(),
        style: NeumorphicStyle(
          surfaceIntensity: 0.2,
          shape: NeumorphicShape.concave,
          color: Color(0xFF17191C),
        ),
        child: Center(
          child: Icon(
            Icons.arrow_back_ios,
            size: 14,
            color: Colors.grey.withOpacity(0.7),
          ),
        ),
      ),
    );
  }
}
