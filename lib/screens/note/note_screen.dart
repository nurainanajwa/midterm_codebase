//! This is file is meant for the second screen.
//! Parts of the code have been given. Complete the remaining.

import 'package:flutter/material.dart';

class NoteScreen extends StatelessWidget {
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
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.cancel_sharp,
                size: 30,
              ),
              onPressed: () {}),
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
