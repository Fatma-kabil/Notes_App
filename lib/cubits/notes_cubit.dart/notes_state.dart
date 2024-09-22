import 'package:notes_app/models/note_model.dart';

abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesSuccess extends NotesState {
  final List<NoteModel> notes;

  NotesSuccess({required this.notes});
}

class NotesFailure extends NotesState {
  final String errMessage;

  NotesFailure({required this.errMessage});
}
