//! Define the model class here

import 'package:flutter/cupertino.dart';

class Note {
  String _title;
  String _content;
  bool _selected;

  String get title => _title;
  String get content => _content;
  bool get selected => _selected;

  Note({title, content, selected = false})
  : _title = title,
    _content = content,
    _selected = selected;
  Note.copy(Note from): this(title: from.title, content: from.content, selected: from.selected);



}
