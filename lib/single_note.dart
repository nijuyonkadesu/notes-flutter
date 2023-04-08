import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleNote extends StatefulWidget {
  const SingleNote({Key? key}) : super(key: key);

  @override
  State<SingleNote> createState() => _SingleNoteState();
}

class _SingleNoteState extends State<SingleNote> {

  String content = "Get answers for the assignment quickly through crowd sourcing our entire class before 10/04";
  String contentTitle = "Assignment";
  String contentHashTag = "Emergency";

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Icon(Icons.notes),
            title: Text(contentTitle),
            subtitle: Text("#$contentHashTag"),
            titleTextStyle: Theme.of(context).textTheme.titleMedium,
            subtitleTextStyle:Theme.of(context).textTheme.titleSmall,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(48.0, 0, 8.0, 16.0),
            child: Text(
                content,
                style: Theme.of(context).textTheme.bodyMedium
            ),
          ),
        ],
      ),
    );
  }
}
