import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notesflutter/data/note_data.dart';

class SingleNote extends StatefulWidget {
  late NoteDetail note;

  SingleNote(this.note, {Key? key}) : super(key: key);

  @override
  State<SingleNote> createState() => _SingleNoteState();
}

class _SingleNoteState extends State<SingleNote> {

  late NoteDetail _note;

  @override
  void initState() {
    super.initState();
    _note = widget.note;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Icon(Icons.notes),
            title: Text(_note.contentTitle),
            subtitle: Text("#${_note.contentHashTag}"),
            titleTextStyle: Theme.of(context).textTheme.titleMedium,
            subtitleTextStyle:Theme.of(context).textTheme.titleSmall,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(48.0, 0, 8.0, 16.0),
            child: Text(
                _note.content,
                style: Theme.of(context).textTheme.bodyMedium
            ),
          ),
        ],
      ),
    );
  }
}
