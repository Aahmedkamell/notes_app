import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
   const CustomAppBar({super.key, required this.tittle, required this.icon});
  final String tittle;
   final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
        Text(tittle, style: TextStyle(fontSize: 28)),

        CustomIcon(icon:icon,),
      ],
    );
  }
}
