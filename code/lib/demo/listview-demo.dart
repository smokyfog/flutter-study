import 'package:flutter/material.dart';
import 'package:myapp1/demo/post-show.dart';
import '../model/post.dart';

class ListViewDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network(
                  posts[index].imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                posts[index].title,
                style: Theme.of(context).textTheme.title,
              ),
              Text(
                posts[index].author,
                style: Theme.of(context).textTheme.subhead,
              ),
              SizedBox(height: 16.0)
            ],
          ),
          Positioned.fill(  // 上下左右位置默认为0.0
              child: Material(
                color: Colors.transparent,
                child: InkWell( // 带溅墨效果的颜色
                  splashColor: Colors.white.withOpacity(0.3), // 溅墨效果颜色
                  highlightColor: Colors.white.withOpacity(0.1), // 高亮颜色
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => PostShow(post: posts[index])
                      )
                    );
                  },
                ),
              )
          ,)
        ],
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuilder,
    );
  }
}