import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data/note_data.dart';

class NewNoteCard extends StatefulWidget {
  final Function(NoteDetail) onSave;

  const NewNoteCard(this.onSave, {Key? key}) : super(key: key);

  @override
  State<NewNoteCard> createState() => _NewNoteCardState();
}

class _NewNoteCardState extends State<NewNoteCard> {

  late TextEditingController _contentController;
  late TextEditingController _titleController;
  late TextEditingController _hashtagController;

  @override
  void initState() {
    super.initState();
    _contentController = TextEditingController(text: "");
    _titleController = TextEditingController(text: "");
    _hashtagController = TextEditingController(text: "");
  }

  void _onSave() {
    widget.onSave(
        NoteDetail(
            _contentController.text,
            _titleController.text,
            _hashtagController.text
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _titleController,
              textInputAction: TextInputAction.next,
              onSubmitted: (_) => FocusScope.of(context).nextFocus(),
              autofocus: true,
              decoration: InputDecoration(
                hintText: 'Title',
              ),
            ),
            TextField(
              controller: _contentController,
              textInputAction: TextInputAction.next,
              onSubmitted: (_) => FocusScope.of(context).nextFocus(),
              decoration: InputDecoration(
                hintText: 'Content',
              ),
            ),
            TextField(
              controller: _hashtagController,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                hintText: 'Hashtag',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      _contentController.text = "";
                      _titleController.text = "";
                      _hashtagController.text = "";
                    },
                    child: Text('Cancel'),
                  ),
                  SizedBox(width: 8.0),
                  FilledButton(
                    onPressed: (){
                      _onSave();
                      Navigator.of(context).pop();
                    },
                    child: Text('Save'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _contentController.dispose();
    _titleController.dispose();
    _hashtagController.dispose();
    super.dispose();
  }
}
