class NoteDetail {
  final String content;
  final String contentTitle;
  final String contentHashTag;

  NoteDetail(this.content, this.contentTitle, this.contentHashTag);
}

class NoteDetails {
  List<NoteDetail> noteDetails = [
    NoteDetail(
        "Get answers for the assignment quickly through crowd sourcing our entire class before 10/04",
        "Assignment",
        "Emergency"
    ),
    NoteDetail(
        "Awesome guy, @rinotuna twitter",
        "Art",
        "Practice"
    ),
  ];
}