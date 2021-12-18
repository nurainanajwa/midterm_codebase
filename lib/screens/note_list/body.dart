import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../models/note.dart';
import '../../screens/note/note_screen.dart';

class Body extends StatefulWidget {
  final List<Note> mockNoteList;
  Body(this.mockNoteList);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body>{
  @override 
  Widget build(BuildContext context){
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: SafeArea(
        child: Scaffold(
        notelistscreen : NoteListScreen(widget.mockNoteList),
        ),
      ),
    );
  }
}