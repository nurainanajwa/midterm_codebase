//! Define the model class here

import 'package:flutter/cupertino.dart';

class Note {
  String _title;
  String _content;
  List<Note> note;
  bool _selected;

  String get title => _title;
  String get content => _content;
  bool get selected => _selected;

  Note({title, content, selected = false})
  : _title = title,
    _content = content,
    _selected = selected;
  Note.copy(Note from): this(title: from.title, content: from.content, selected: from.selected);

  int totalNote(){
    return note.length;
  }

  int noteSelected(){
    int totalSelected = 0;
    for (var note in note){
      if(note.selected){
        totalSelected++;
      }
    }
    return (totalSelected/note.length).round();
  }


}
