//! This is file is meant for the second screen.
//! Parts of the code have been given. Complete the remaining.

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../models/note.dart';

class NoteScreen extends StatefulWidget {
  final Note mockNoteList;
  NoteScreen(this.mockNoteList);

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  var change = new List(20);
  bool signal = false;

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        centerTitle: true,
        title: Text('App Bar Title'),
        actions: [
          IconButton(
              icon: Icon(
                Icons.check_circle,
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context, widget.mockNoteList);
              }),
          IconButton(
              icon: Icon(
                Icons.cancel_sharp,
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context, widget.mockNoteList);
              }),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            TextFormField(
              initialValue: null,
              enabled: true,
              decoration: InputDecoration(
                hintText: 'Type the title here',
              ),
              onChanged: (value) {},
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: TextFormField(
                  enabled: true,
                  initialValue: null,
                  maxLines: null,
                  expands: true,
                  decoration: InputDecoration(
                    hintText: 'Type the description',
                  ),
                  onChanged: (value) {}),
            ),
          ],
        ),
      ),
    );
  }
}
