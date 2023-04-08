import 'package:flutter/material.dart';
import 'package:notesflutter/data/note_data.dart';
import 'package:notesflutter/add_page.dart';
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

  NoteDetails data = NoteDetails();
  void _newNote(NoteDetail note) {
    setState(() {
      data.noteDetails.add(note);
    });
  }

  final _scaffoldKey =
  GlobalKey<ScaffoldState>();

  void _showBottomSheet(){
    _scaffoldKey.currentState!.showBottomSheet((context) =>
        NewNoteCard(
          (note) {
            debugPrint(note.content);
            _newNote(note);
          },
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: data.noteDetails.length,
        itemBuilder: (BuildContext context, int index){
          return InkWell(
            onTap: () {
              // TODO: Add Edit Feature
              // TODO: Challenge! Add SQL database to persist data!
            },
            child: SingleNote(
              data.noteDetails[index],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _showBottomSheet();
        },
        tooltip: 'Take Note',
        child: const Icon(Icons.add),
      ),
    );
  }
}