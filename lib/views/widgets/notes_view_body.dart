import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [const SizedBox(height: 50), CustomAppbar()],
      ),
    );
  }
}
