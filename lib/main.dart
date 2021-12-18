import 'package:flutter/material.dart';

import 'screens/note_list/note_list_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'MAP Mid Term Test',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: NoteListScreen(),
  ));
}
