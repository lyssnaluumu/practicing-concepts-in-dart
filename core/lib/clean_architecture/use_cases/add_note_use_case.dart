import '../entities/note.dart';
import '../repositories/note_repository.dart';

class AddNoteUseCase {
  final NoteRepository _noteRepository;

  AddNoteUseCase(this._noteRepository);

  Future<void> execute(Note note) {
    return _noteRepository.addNote(note);
  }
}