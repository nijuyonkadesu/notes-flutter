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
          Container(
            child: Text(contentTitle),
          ),
          Container(
            child: Text("#$contentHashTag"),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Text(content),
          )
        ],
      ),
    );
  }
}
