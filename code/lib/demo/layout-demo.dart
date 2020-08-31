
import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,  // 设置主轴方式
        children: <Widget>[
          StackDemo()
        ],
      ),
    );
  }
}

// 自定义图标徽章小部件
class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {
    this.size = 32.0
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}

// 对齐方式
class AxisAlignmentDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // Row    // 横向排列
      // Column // 竖向排列
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,  // 设置主轴方式
         crossAxisAlignment: CrossAxisAlignment.center,      // 设置交叉轴对齐方式
        children: <Widget>[
          IconBadge(Icons.pool),
          IconBadge(Icons.beach_access, size: 50.0),
          IconBadge(Icons.airplanemode_active),
        ],
      ),
    );
  }
}

// 带限制的盒子
class ConstrainedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 200.0, // 最小高度
        maxWidth: 200.0   // 最大宽度
      ),
      child: Container(
        color: Color.fromRGBO(3, 53, 255, 1.0),
      ),
    );
  }
}

// 宽高比
class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.0/2.0, // 设置宽高比
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }
}


// Stack，SizedBox，Positioned和一些小部件
class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(  // 一摞小部件
      alignment: Alignment.topLeft, // 设置没有设置对齐的子部件的对齐
      children: <Widget>[
        SizedBox( // 可以强制部件有个固定的宽度和高度
          width: 200.0,
          height: 300.0,
          child: Container(
            alignment: Alignment(0, -0.8),  // 设置对齐
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                borderRadius: BorderRadius.circular(8.0)
            ),
          ),
        ),
        SizedBox(
          height: 32.0,
        ),
        SizedBox( // 可以强制部件有个固定的宽度和高度
          width: 100.0,
          height: 100.0,
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                shape: BoxShape.circle,
                gradient: RadialGradient(
                    colors: [
                      Color.fromRGBO(7, 102, 255, 1.0),
                      Color.fromRGBO(3, 54, 255, 1.0)
                    ]
                )
              // borderRadius: BorderRadius.circular(8.0)
            ),
            child: Icon(Icons.brightness_2, color: Colors.white, size: 32.0,),
          ),
        ),
        Positioned(
          right: 20.0,
          top: 20.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0),
        ),
        Positioned(
          right: 20.0,
          top: 200.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0),
        ),
        Positioned(
          right: 40.0,
          top: 80.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0),
        ),
        Positioned(
          right: 80.0,
          top: 150.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0),
        ),
        Positioned(
          right: 130.0,
          top: 230.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0),
        ),
      ],
    );
  }
}

