import 'package:flutter/material.dart';

class RoundedCard extends StatelessWidget {
  final Widget child;
  final Color color;
  RoundedCard({this.child, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
            borderRadius: BorderRadius.circular(10.0)
      ),
      margin: EdgeInsets.all(15.0),
      child: child,
    );
  }
}
