import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarDemoState();
  }
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _currIndex = 0;

  void _onTapHandler(int index) {
    setState(() {
      _currIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currIndex,  // 选中的索引值
      type: BottomNavigationBarType.fixed, // 如果导航项目超过3个， 则指定这个属性
      fixedColor: Colors.black,
      onTap: _onTapHandler,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text('explore ')
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text('history ')
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('list ')
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('my')
        )
      ],
    );
  }
}