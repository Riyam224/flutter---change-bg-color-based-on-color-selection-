import 'package:flutter/material.dart';
import 'package:one/colors_model.dart';

class RedView extends StatelessWidget {
  const RedView({super.key, required this.colors});
  final ColorModel colors;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.color,
      body: Center(
        child: Text(
          colors.name,
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
