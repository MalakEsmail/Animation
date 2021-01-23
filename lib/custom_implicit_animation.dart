import 'package:flutter/material.dart';
import 'dart:math' as math;

// CustomImplicitAnimation
class CustomImplicitAnimation extends StatefulWidget {
  @override
  _CustomImplicitAnimationState createState() =>
      _CustomImplicitAnimationState();
}

class _CustomImplicitAnimationState extends State<CustomImplicitAnimation> {
  double _angle = 0;
  double currentValue = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TweenAnimationBuilder<double>(
            duration: Duration(seconds: 1),
            tween: Tween(begin: 0, end: _angle),
            child: Container(width: 300, height: 200, color: Colors.black),
            builder: (_, double angle, Widget child) => Transform.rotate(
              angle: angle,
              child: child,
            ),
          ),
          Slider(
            max: math.pi * 2,
            value: currentValue,
            onChanged: (value) {
              setState(() {
                _angle = value;
                currentValue = value;
              });
            },
          )
        ],
      ),
    );
  }
}
