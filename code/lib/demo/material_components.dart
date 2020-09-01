import 'package:flutter/material.dart';
import 'package:myapp1/demo/alert-dialog.dart';
import 'package:myapp1/demo/bottom-sheet-demo.dart';
import 'package:myapp1/demo/button-demo.dart';
import 'package:myapp1/demo/checkbox-demo.dart';
import 'package:myapp1/demo/datetime-demo.dart';
import 'package:myapp1/demo/expansion-panel-demo.dart';
import 'package:myapp1/demo/floating-action-button-demo.dart';
import 'package:myapp1/demo/form_demo.dart';
import 'package:myapp1/demo/popup-menu-button-demo.dart';
import 'package:myapp1/demo/radio-demo.dart';
import 'package:myapp1/demo/simple-dialog-demo.dart';
import 'package:myapp1/demo/slider-demo.dart';
import 'package:myapp1/demo/snack-bar-demo.dart';
import 'package:myapp1/demo/switch-demo.dart';

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
          ListItem(title: 'ExpansionPanelDemo',page: ExpansionPanelDemo()),
          ListItem(title: 'SnackBarDemo',page: SnackBarDemo()),
          ListItem(title: 'BottomSheet',page: BottomSheetDemo()),
          ListItem(title: 'AlertDialog',page: AlertDialogDemo()),
          ListItem(title: 'SimpleDialog',page: SimpleDialogDemo()),
          ListItem(title: 'DateTime',page: DateTimeDemo()),
          ListItem(title: 'Slider',page: SliderDemo()),
          ListItem(title: 'Switch',page: SwitchDemo()),
          ListItem(title: 'Radio',page: RadioDemo()),
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

