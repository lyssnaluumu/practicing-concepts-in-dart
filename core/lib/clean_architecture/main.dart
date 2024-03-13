import 'entities/note.dart';
import 'repositories/note_repository.dart';
import 'use_cases/get_all_notes_use_case.dart';
import 'use_cases/add_note_use_case.dart';

void main() async {
  NoteRepository noteRepository = NoteRepositoryImpl();
  GetAllNotesUseCase getAllNotesUseCase = GetAllNotesUseCase(noteRepository);
  AddNoteUseCase addNoteUseCase = AddNoteUseCase(noteRepository);

  List<Note> notes = await getAllNotesUseCase.execute();
  print('Notes:');
  for (var note in notes) {
    print('${note.title}: ${note.content}');
  }

  await addNoteUseCase.execute(Note(id: '3', title: 'Third Note', content: 'This is the third note.'));
}