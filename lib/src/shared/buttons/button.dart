import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ButtonWidget extends StatelessWidget {
  final Color color;
  final String label;
  final Function onTap;

  const ButtonWidget({Key key, this.color, this.label, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicTheme(
      theme: NeumorphicThemeData(
        intensity: 0.2,
        depth: 1.3,
      ),
      child: NeumorphicButton(
        padding: const EdgeInsets.all(12),
        onClick: () {},
        boxShape: NeumorphicBoxShape.roundRect(
          borderRadius: BorderRadius.circular(30),
        ),
        style: NeumorphicStyle(
          surfaceIntensity: 0.2,
          shape: NeumorphicShape.flat,
          color: color,
        ),
        child: Container(
          alignment: Alignment.center,
          height: 30,
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
