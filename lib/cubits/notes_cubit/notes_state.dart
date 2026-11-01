part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoading extends NotesState {}

final class NotesSuccses extends NotesState {
  final List<NoteModel> notes;

  new({required this.notes});
}

final class NotesFailure extends NotesState {
  final String errMessage;

  new({required this.errMessage});
}
