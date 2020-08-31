import 'package:flutter/material.dart';
import 'package:myapp1/demo/button-demo.dart';
import 'package:myapp1/demo/checkbox-demo.dart';
import 'package:myapp1/demo/floating-action-button-demo.dart';
import 'package:myapp1/demo/form_demo.dart';
import 'package:myapp1/demo/popup-menu-button-demo.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: 'CheckBox',page: CheckBoxDemo()),
          ListItem(title: 'formDemo',page: FormDemo()),
          ListItem(title: 'PopupMenuButton', page: PopupMenuButtonDemo()),
          ListItem(title: 'Button', page: ButtonDemo()),
          ListItem(title: 'FloatingActionButton', page: FloatingActionButtonDemo())
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
   this.title,
   this.page
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => page
          )
        );
      },
    );
  }
}

