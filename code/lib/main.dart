import 'package:flutter/material.dart';
import 'package:myapp1/demo/basic_demo.dart';
import 'package:myapp1/demo/drawer-demo.dart';
import 'package:myapp1/demo/layout-demo.dart';
import 'package:myapp1/demo/listview-demo.dart';
import 'package:myapp1/demo/sliver_demo.dart';
import 'package:myapp1/demo/view-demo.dart';

import 'demo/bottom-navation-bar-demo.dart';

void main() => runApp(App());


class App extends StatelessWidget {
  @override // 覆盖的是父类的build方法
    Widget build(BuildContext context) {  // Widget 为返回的类型是一个Widget,
    return MaterialApp(
      debugShowCheckedModeBanner: false,  // 取消banner右上角debugger显示
      home: Home(),
      theme: ThemeData(  // 设置主题
        primarySwatch:  Colors.yellow,
        highlightColor: Color.fromRGBO(255, 2555, 255, 0.5), // 按下按钮立即显示的水波纹的背景颜色
        splashColor: Colors.white70 //  按下按钮水波纹的颜色
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold( // 包涵material风格常用的应用组件
        appBar: AppBar(
          title: Text('您好'),  // 导航title
          actions: <Widget>[  // 在banner右上角添加菜单小图标
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('Search button is pressed'),
            )
          ],
          elevation: 0.0,  // 顶部导航阴影值，默认为4.0
          bottom: TabBar(
            unselectedLabelColor: Colors.black38, // 未选中标签图标的颜 色
            indicatorColor: Colors.black54, // 被选中标签下方线的颜色
            indicatorSize: TabBarIndicatorSize.label, // 设置选项卡下方线长度和label相同（默认和选项卡相同）
            indicatorWeight: 1.0, // 粗细
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.view_quilt)),
              Tab(icon: Icon(Icons.slideshow)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
//            Icon(Icons.directions_bike, size: 128.0, color: Colors.black12)
            LayoutDemo(),
            ViewDemo(),
            SliverDemo()
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo()
      )
    );
  }
}



