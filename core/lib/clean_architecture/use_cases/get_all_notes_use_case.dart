import '../entities/note.dart';
import '../repositories/note_repository.dart';

class GetAllNotesUseCase {
  final NoteRepository _noteRepository;

  GetAllNotesUseCase(this._noteRepository);

  Future<List<Note>> execute() {
    return _noteRepository.getAllNotes();
  }
}