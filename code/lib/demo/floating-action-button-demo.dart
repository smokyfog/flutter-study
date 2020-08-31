import 'package:flutter/material.dart';

// 悬浮按钮
class FloatingActionButtonDemo extends StatelessWidget {
  // 漂浮按钮
  final Widget _floatingActionButton = FloatingActionButton(
    onPressed: () {},
    child: Icon(Icons.add),
    elevation: 0.0,
    backgroundColor: Colors.black87,
//    shape: BeveledRectangleBorder(  // 设置为方形，默认为圆形
//      borderRadius: BorderRadius.circular(30.0) // 设置切角
//    ),
  );

  // Extended类型的漂浮按钮
  final _floatingActionButtonExtended = FloatingActionButton.extended(
    onPressed: () {},
    icon: Icon(Icons.add),
    label: Text('Add'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
        elevation: 0.0,
      ),
      floatingActionButton: _floatingActionButton,
      // 设置悬浮按钮和底部工具栏重合并居中
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0,
        ),
        // 设置切口
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}