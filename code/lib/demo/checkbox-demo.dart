
import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  @override
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  bool _checkboxItemA = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBoxDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
              value: _checkboxItemA,
              onChanged: (value) {
                setState(() {
                  _checkboxItemA = value;
                });
              },
              title: Text('Checkbox Item A'),
              subtitle: Text('Descirption'),
              secondary: Icon(Icons.bookmark),
              selected: _checkboxItemA,
            ),
            SizedBox(
              height: 32.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: _checkboxItemA,
                  activeColor: Colors.black,
                  onChanged: (value) {
                    setState(() {
                      _checkboxItemA = value;
                    });
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

