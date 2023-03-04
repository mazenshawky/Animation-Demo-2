import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String? text;

  const ScreenTitle({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: const Duration(milliseconds: 500),
      tween: Tween<double>(begin: 0, end: 1),
      builder: (context, val, child) {
        return Opacity(
          opacity: val,
          child: Padding(
            padding: EdgeInsets.only(top: val * 20),
            child: child,
          ),
        );
      },
      child: Text(
        text!,
        style: const TextStyle(
            fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
