//! Create the mock database here which consists of a list of notes. The note data is hard coded.

//import 'package:flutter/cupertino.dart';

import 'note.dart';

//final mockNoteList = <Note>[];


List<Note> mockNoteList = [
  Note(
    title: "What is Flutter?",
    content: "Flutter is an open-source UI framework for creating native mobile applications. It allows developers to build mobile applications a single codebase."
  ),

  Note(
    title: "Stateful Widgets",
    content: "The widgets whose state can be altered once they are built are called stateful Widgets. ",
  ),

  Note(
    title: "Conditional (ternary) operator",
    content: "The conditional (ternary) operator in Dart takes three operands: a condition, first expression (if truthy) and second expression (if falsy).",
  ),
  
];

//? Here are some sample data that you can copy-paste in order to create the mock database
//? --------------------------------------------------------------------------------------


/*
What is Flutter?
Flutter is an open-source UI framework for creating native mobile applications. It allows developers to build mobile applications a single codebase.

Stateful Widgets
The widgets whose state can be altered once they are built are called stateful Widgets. 

Conditional (ternary) operator
The conditional (ternary) operator in Dart takes three operands: a condition, first expression (if truthy) and second expression (if falsy).
*/