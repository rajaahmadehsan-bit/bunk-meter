import 'package:flutter/material.dart';

// A Container that fills the screen with a background image.
// Every screen wraps its body in this widget.
class ScreenBackground extends StatelessWidget {
  final Widget child;
  final String image;
  final Color overlay;

  const ScreenBackground({
    super.key,
    required this.child,
    required this.image,
    this.overlay = const Color(0x40FFFFFF), // light veil so text stays readable
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(overlay, BlendMode.srcOver),
        ),
      ),
      child: child,
    );
  }
}
