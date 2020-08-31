
import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('Home'),
              onPressed: null,
            ),
            FlatButton(
              child: Text('About'),
              onPressed: () => {
//                Navigator.of(context).push( // 未添加显示路由时这样操作跳转
//                  MaterialPageRoute(
//                    builder: (BuildContext context) => Pages(title: 'About',)
//                  ),
//                )
                Navigator.pushNamed(context, '/about')  // 在根节点的routes里面添加路由后可使用这种方法
              },
            )
          ],
        ),
      ),
    );
  }
}


class Pages extends StatelessWidget {
  final String title;
  Pages({
    this.title
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
