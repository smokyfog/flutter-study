
import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  List<String> _tags = [
    'Apple',
    'Banana',
    'Lemon'
  ];
  String _action = 'Nothing';
  List<String> _selected = <String>[];
  String _choice = 'Lemon';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChipDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap( // 超出会自动换行
              spacing: 8.0, // 设置子部件的横向间隔
              runSpacing: 8.0,  // 设置子部件行间隔
              children: [
                Chip(
                  label: Text('Left'),
                ),
                Chip(
                  label: Text('Left'),
                  backgroundColor: Colors.orange,
                ),
                Chip(
                  label: Text('Yanqiang'),
//                  backgroundColor: Colors.orange,
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text('强'),
                  ),
                ),
                Chip(
                  label: Text('Yanqiang'),
//                  backgroundColor: Colors.orange,
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'http://47.93.10.229:8001/uploads/user/15730479286411573987367970.jpg'
                    ),
                  ),
                ),
                Chip(
                  label: Text('City'),
                  // 删除
                  onDeleted: () {},
                  deleteIcon: Icon(Icons.delete), // 自定义删除的图标
                  deleteIconColor: Colors.redAccent,  // 设置小图标颜色
                  deleteButtonTooltipMessage: 'Remove this tag',  // 长按删除小图标显示的提示
                ),
                // 间隔线小部件
                Divider(
                  color: Colors.grey,
                  height: 32.0,
//                  indent: 32.0, // 设置缩进
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    return Chip(
                      label: Text(tag),
                      onDeleted: () {
                        setState(() {
                          _tags.remove(tag);
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0,
//                  indent: 32.0, // 设置缩进
                ),
                Container(
                  width: double.infinity,
                  child: Text('ActionChip: $_action'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    return ActionChip(
                      label: Text(tag),
                      onPressed: () {
                        setState(() {
                           _action = tag;
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0,
//                  indent: 32.0, // 设置缩进
                ),
                Container(
                  width: double.infinity,
                  child: Text('ActionChip: ${_selected.toString()}'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    return FilterChip(
                      label: Text(tag),
                      selected: _selected.contains(tag),
                      onSelected: (value) {
                        setState(() {
                          if (_selected.contains(tag)) {
                            _selected.remove(tag);
                          } else {
                            _selected.add(tag);
                          }
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0,
//                  indent: 32.0, // 设置缩进
                ),
                Container(
                  width: double.infinity,
                  child: Text('ChoiceChip: $_choice'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    return ChoiceChip(
                      label: Text(tag),
                      selected: _choice == tag,
                      selectedColor: Colors.black,
                      onSelected: (value) {
                        setState(() {
                          _choice = tag;
                        });
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: () {
          setState(() {
            _tags = [
              'Apple',
              'Banana',
              'lemon'
            ];
            _selected = [];
            _choice = 'Lemon';
          });
        },
      ),
    );
  }
}

