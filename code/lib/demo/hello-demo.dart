import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text(
        'hello',
        textDirection: TextDirection.ltr, // 从左向右阅读
        style: TextStyle(
          fontSize: 40.0, // 字体大小
          fontWeight: FontWeight.bold, // 字体粗细
          color: Colors.black87,
        ),
      ),
    );
  }
}