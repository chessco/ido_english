import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class TextFieldWidget extends StatelessWidget {
  final Widget icon;
  final String label;
  final String hintText;
  final bool obscureText;

  const TextFieldWidget({
    Key key,
    this.icon,
    this.label,
    this.hintText,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicTheme(
      theme: NeumorphicThemeData(
        baseColor: Color(0xFF32383E),
        variantColor: Color(0xFF17191C),
        intensity: 0.4,
        lightSource: LightSource.top,
        depth: 1.5,
        accentColor: Colors.white,
      ),
      child: Neumorphic(
        style: NeumorphicStyle(
          surfaceIntensity: 0.1,
          shape: NeumorphicShape.concave,
          color: Color(0xFF17191C),
        ),
        padding: const EdgeInsets.all(8),
        boxShape: NeumorphicBoxShape.roundRect(
          borderRadius: BorderRadius.circular(20),
        ),
        child: new LayoutBuilder(builder: (_, BoxConstraints constraints) {
          return Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    obscureText: obscureText,
                    cursorColor: Colors.white,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      hintText: hintText ?? "",
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              if (icon != null) icon,
            ],
          );
        }),
      ),
    );
  }
}
