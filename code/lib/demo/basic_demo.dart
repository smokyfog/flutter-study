
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 文本
class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );
  final String _author = '李白';
  final String _title = '将进酒';
  @override
  Widget build(BuildContext context) {
    return Text(
      '君不见黄河之水天上来，奔流到海不复回,君不见黄河之水天上来，奔流到海不复回君不见黄河之水天上来，奔流到海不复回君不见黄河之水天上来，奔流到海不复回君不见黄河之水天上来，奔流到海不复回君不见黄河之水天上来，奔流到海不复回君不见黄河之水天上来，奔流到海不复回君不见黄河之水天上来，奔流到海不复回君不见黄河之水天上来，奔流到海不复回',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}

// 富文本
class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '您好',
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold
        ),
        children: [
          TextSpan(
            text: '.net',
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.grey,
            )
          )
        ]
      )
    );
  }
}

// Container
class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
//      color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage( // 设置背景图片
//          image: AssetImage() //使用本地图像
          image: NetworkImage('http://182.150.31.149:8888/group1/M00/00/1C/wKjOgl9B9VmAHh8IAAGAkGWQ66E857.png'),
          alignment:  Alignment.topCenter,  // 设置背景图对齐方式
          repeat: ImageRepeat.repeatY,  // 设置重复
          fit: BoxFit.cover, // 使图像保持比例覆盖整个容器
          colorFilter: ColorFilter.mode(  // 设置颜色滤镜
            Colors.indigoAccent[400].withOpacity(0.5 ), // 设置滤镜用的颜色
            BlendMode.hardLight // 设置使用的混合模式
          )
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,  // 使主轴对齐
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.white),
//            color: Color.fromRGBO(3, 54, 255, 1.0),
            // padding: EdgeInsets.only(left: 24.0, right: 8.0),
            padding: EdgeInsets.all(8.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
//              单独设置每个边的边框
//              border: Border(
//                top: BorderSide(
//                  color: Colors.indigoAccent[100],
//                  width: 3.0,
//                  style: BorderStyle.solid,
//                ),
//                bottom: BorderSide(
//                  color: Colors.indigoAccent[100],
//                  width: 3.0,
//                  style: BorderStyle.solid,
//                )
//              ),
              // 同时设置所有边的边框
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3.0,
                style: BorderStyle.solid,
              ),
              // 同时设置每个角的圆角效果
//              borderRadius: BorderRadius.circular(16.0),
              // 分别设置每个角的圆角效果
//              borderRadius: BorderRadius.only(
//                topLeft: Radius.circular(64.0),
//                bottomLeft:  Radius.circular(64.0),
//              ),
              boxShadow: [  // 设置盒子阴影
                BoxShadow(
                  offset: Offset(0, 16.0),  // 第一个 x轴偏移量 第二个 y轴的偏移量
                  color: Color.fromRGBO(16, 20, 188, 1.0), // 阴影颜色
                  blurRadius: 25.0,  // 模糊程度
                  spreadRadius: -9.0, // 阴影面积 正值为扩大阴影，负值为缩小阴影
                )
              ],
//              shape: BoxShape.rectangle, // 设置形状 矩形
              shape: BoxShape.circle, // 设置形状 圆形 注意：设置盒子形状为圆形的时候不能设置圆角效果
//              gradient:  RadialGradient(  // 渐变 径向渐变
//                colors: [
//                  Color.fromRGBO(7, 102, 255, 1.0),
//                  Color.fromRGBO(3, 28, 128, 1.0),
//                ]
//              ),
              gradient:  LinearGradient(  // 渐变 线性渐变
                  colors: [
                    Color.fromRGBO(7, 102, 255, 1.0),
                    Color.fromRGBO(3, 28, 128, 1.0),
                  ],
                begin: Alignment.topCenter, // 设置渐变开始和结束的渐变
                end: Alignment.bottomCenter
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContainerDemo();
  }
}