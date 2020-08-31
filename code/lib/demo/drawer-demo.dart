

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(   // 侧边栏抽屉 drawer： 在左边显示 endDrawer： 在右边显示
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader( // 用户信息框
              accountName: Text('yanqiang', style: TextStyle(fontWeight: FontWeight.bold)), // 用户名
              accountEmail: Text('yanqiang_main@163.com'),  // 用户邮箱
              currentAccountPicture: CircleAvatar(  // 用户头像
                backgroundImage: NetworkImage('http://111.205.170.147:8888/group1/M00/00/0B/wKhlNV8w3QyAPfGCAAB3xtEODd0473.jpg'),
              ),
              decoration: BoxDecoration(  // 样式
                  color: Colors.yellow[400],  // 背景
                  image: DecorationImage(
                      image: NetworkImage('http://111.205.170.148:8893/group1/M00/00/39/wKhlCl8836uAIGzQAAEbTzj013o160.jpg'), // 背景图
                      fit: BoxFit.cover,  // 图片平铺模式
                      colorFilter: ColorFilter.mode(  // 滤镜
                          Colors.yellow[400].withOpacity(0.6),
                          BlendMode.hardLight
                      )
                  )
              ),
            ),
            ListTile(
              title: Text('Messages', textAlign: TextAlign.right),
              // trailing在标题的后面显示的东西，leading 在标题的前面显示的东西
              trailing: Icon(Icons.message, color: Colors.black12, size: 22.0,),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text('Favorite', textAlign: TextAlign.right),
              // trailing在标题的后面显示的东西，leading 在标题的前面显示的东西
              trailing: Icon(Icons.favorite , color: Colors.black12, size: 22.0,),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text('Settings', textAlign: TextAlign.right),
              // trailing在标题的后面显示的东西，leading 在标题的前面显示的东西
              trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0,),
              onTap: () => Navigator.pop(context),
            ),
          ],
        )
    );
  }
}