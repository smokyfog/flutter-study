
import 'package:flutter/material.dart';
import 'package:myapp1/model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridViewBuilderDemo();
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      pageSnapping: true, // 默认为true,翻少于半页则弹回，翻超过半页则翻页
      reverse: false,  // 倒置
      scrollDirection: Axis.horizontal, // 滚动方向 默认horizontal（横向）, vertical可设置为竖向
      onPageChanged: (currentPage) => debugPrint('currentPage $currentPage'), // 改变页面的回调
      controller: PageController( // 控制器
        initialPage: 1, // 初始页面
        keepPage: true, // 记住打开页面
        viewportFraction: 1.0, // 页面占用可视口的比例
      ),
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'One',
            style: TextStyle(fontSize: 32.0, color: Colors.white ),
          ),
        ),
        Container(
          color: Colors.grey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'Two',
            style: TextStyle(fontSize: 32.0, color: Colors.white ),
          ),
        ),
        Container(
          color: Colors.blueGrey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'Three',
            style: TextStyle(fontSize: 32.0, color: Colors.white ),
          ),
        ),
      ],
    );
  }
}

class PageViewBuilder extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                posts[index].author,
              ),
            ],
          ),
        )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class GridViewCountDemo extends StatelessWidget {
  List<Widget> _buildTitles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text(
          'item $index',
          style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey
          ),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16.0, // 添加边距
      mainAxisSpacing: 16.0,  // 主轴添加边距
      children: _buildTitles(100),
      scrollDirection: Axis.vertical, // horizontal: 设置水平滚滚动, 默认为 vertical垂直滚动
    );
  }
}

class GridViewExtentDemo extends StatelessWidget {
  List<Widget> _buildTitles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text(
          'item $index',
          style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey
          ),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 150.0,  // 设置在交叉轴最大尺寸
      crossAxisSpacing: 16.0, // 添加边距
      mainAxisSpacing: 16.0,  // 主轴添加边距
      children: _buildTitles(100),
      scrollDirection: Axis.vertical, // horizontal: 设置水平滚滚动, 默认为 vertical垂直滚动
    );
  }
}

class GridViewBuilderDemo extends StatelessWidget {
  Widget _girdItemBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8.0), // 四周增加padding
      itemCount: posts.length,
      itemBuilder: _girdItemBuilder,
//      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  // 类似于GridViewCount
//        crossAxisCount: 2,
//        crossAxisSpacing: 16.0,
//        mainAxisSpacing: 16.0
//      ),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent( // 类似于GridViewExtent
        maxCrossAxisExtent: 150,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0
      ),
    );
  }
}