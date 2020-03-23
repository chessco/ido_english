import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;

  const BackgroundWidget({Key key, this.height, this.width, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF353A40),
            Color(0xFF121416),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(232, 237, 243, 0.05),
            offset: Offset(12, -20),
            blurRadius: 56,
          ),
          BoxShadow(
            color: Color.fromRGBO(2, 3, 3, 0.7),
            offset: Offset(36, 12),
            blurRadius: 64,
          ),
          // BoxShadow(
          //   color: Color.fromRGBO(248, 249, 249, 0.03),
          //   offset: Offset(-16, -6),
          //   blurRadius: 80,
          // )
        ],
      ),
      child: child,
    );
  }
}
