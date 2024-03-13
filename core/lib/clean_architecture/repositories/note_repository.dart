import '../entities/note.dart';

abstract class NoteRepository {
  Future<List<Note>> getAllNotes();
  Future<void> addNote(Note note);
}

class NoteRepositoryImpl implements NoteRepository {
  @override
  Future<List<Note>> getAllNotes() async {
    // In a real app, this would interact with a database or a remote API
    return [
      Note(id: '1', title: 'First Note', content: 'This is the first note.'),
      Note(id: '2', title: 'Second Note', content: 'This is the second note.'),
    ];
  }

  @override
  Future<void> addNote(Note note) async {
    // In a real app, this would add the note to a database or send it to a remote API
  }
}