//! This is file is meant for the first screen.
//! Parts of the code have been given. Complete the remaining.

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../models/note.dart';
import '../../screens/note/note_screen.dart';


class NoteListScreen extends StatefulWidget {
  final List<Note> mockNoteList;
  NoteListScreen(this.mockNoteList);

  @override
  _NoteListScreenState createState() => _NoteListScreenState();
}

class _NoteListScreenState extends State<NoteListScreen> {
var change = new List(20);
bool signal = false;

  void _navigate(int index) async {
    Note returnData = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (contact) => NoteScreen(Note.copy(widget.mockNoteList[index])),
      ), 
    );
    if (returnData != null){
      setState(() => widget.mockNoteList[index] = returnData);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Notes'),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.blue.shade200,
            child: TextButton(
              child: Text(
                '0',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
              ),
              onPressed: () => setState((){
                Navigator.pop(widget.mockNoteList);
              }),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: widget.mockNoteList.length,
        separatorBuilder: (context, index) => Divider(
          color: Colors.blueGrey,
        ),
        itemBuilder: (context, index) => ListTile(
          title: Text(widget.mockNoteList[index].title),
          subtitle: Text ( "${widget.mockNoteList[index].totalNote()}"),
          trailing : CircleAvatar(
            child : Text(widget.mockNoteList[index].noteSelected().toString())),
          trailing: SizedBox(
            width: 110.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.edit, color: Colors.blue),
                  onPressed: () {
                    _navigate(index);
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.cancel,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    _navigate(index);
                  },
                ),
              ],
            ),
          ),
          selected: false,
          title: Text(widget.mockNoteList[index].title),
          subtitle: Text(widget.mockNoteList[index].content),
          onTap: () {
            _navigate(index);
          },
          onLongPress: () {},
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: 'Add a new note',
        onPressed: () {},
      ),
    );
  }
}
