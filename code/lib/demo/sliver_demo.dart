
import 'package:flutter/material.dart';
import 'package:myapp1/model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar( // 可以用来配置滚动行为
            title: Text('您好'),
            pinned: false, // 是否固定显示默认为false
            floating: false, // 设置为true后当顶部滚动隐藏后，向上滑动会立即慢慢显示出来，而不需要回到顶部
            expandedHeight: 178.0,  // 设置可伸展的高度
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'NINHAO Flutter'.toUpperCase(),
                style: TextStyle(
                  fontSize: 15.0,
                  letterSpacing: 3.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              background: Image.network(
                'http://47.93.10.229:8001/uploads/article/1-140Z41629400-L1574003577974.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverSafeArea( // 使sliver显示在安全区域
            sliver: SliverPadding(  // 边距
              padding: EdgeInsets.all(8.0),
              sliver: SliverListDemo(),
            ),
          )
        ],
      ),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 1.0,  // 控制网格式图显示的比例
      ),
      delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
            return Container(
              child: Image.network(
                posts[index].imageUrl,
                fit: BoxFit.cover,
              ),
            );
          },
          childCount: posts.length
      ),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 32.0),
            child: Material(
              clipBehavior: Clip.hardEdge,  // 对子组件进行裁剪
              borderRadius: BorderRadius.circular(12.0),
              elevation: 14.0,  // 阴影的颜色
              shadowColor: Colors.grey.withOpacity(0.5),
              child: Stack(
                children: <Widget>[
                  AspectRatio(  // 强制比例
                    aspectRatio: 16 / 9,
                    child: Image.network(
                      posts[index].imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 32.0,
                    left: 32.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          posts[index].title,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                          ),
                        ),
                        Text(
                          posts[index].author,
                          style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.white
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ),
          );
        },
        childCount: posts.length
      ),
    );
  }
}