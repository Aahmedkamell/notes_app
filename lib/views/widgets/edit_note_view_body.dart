import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() =>
      _EditNoteViewBodyState(tittle: '', content: '');
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? tittle, content;

  new({required this.tittle, required this.content});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 50),
          CustomAppBar(
            onPressed: () {
              widget.note.tittle = tittle ?? widget.note.tittle;
              widget.note.subTittle = content ?? widget.note.subTittle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },

            tittle: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(height: 50),
          CustomTextField(
            onChanged: (value) {
              tittle = value;
            },
            hint: widget.note.tittle,
          ),
          SizedBox(height: 16),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hint: widget.note.subTittle,
            maxlines: 5,
          ),
        ],
      ),
    );
  }
}
