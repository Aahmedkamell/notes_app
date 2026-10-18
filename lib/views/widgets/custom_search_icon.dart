
import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      width: 47,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Center(child: Icon(Icons.search, size: 28)),
    );
  }
}
