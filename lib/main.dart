import 'package:flutter/material.dart';
import 'package:notesflutter/single_note.dart';

void main() {
  runApp(const MyNotesApp());
}

class MyNotesApp extends StatelessWidget {
  const MyNotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const NotesHomePage(title: 'Notes'),
    );
  }
}

class NotesHomePage extends StatefulWidget {
  const NotesHomePage({super.key, required this.title});

  final String title;

  @override
  State<NotesHomePage> createState() => _NotesHomePageState();
}

class _NotesHomePageState extends State<NotesHomePage> {

  void _newNote() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      // body: _buildNoteList(),
      body: ListView(
        children: [
          SingleNote(),
          SingleNote(),
          SingleNote(),
          SingleNote(),
          SingleNote(),
          SingleNote(),
          SingleNote(),
          SingleNote(),
          SingleNote(),
          SingleNote(),
          SingleNote(),
          SingleNote(),
          SingleNote(),
          SingleNote(),
          SingleNote(),
          SingleNote(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _newNote,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
