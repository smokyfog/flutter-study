
import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // 文字按钮
    final Widget FloatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton( // 文字按钮
          child: Text('Button'),
          onPressed: () {},
          // 设置溅墨效果
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
        SizedBox(width: 16.0),
        FlatButton.icon( // 带图标的文字按钮
          label: Text('Button'),
          icon: Icon(Icons.add),
          onPressed: () {},
          // 设置溅墨效果
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    // 按钮
    final Widget RaisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
                textTheme: ButtonTextTheme.primary,
//              shape: BeveledRectangleBorder(
//                borderRadius: BorderRadius.circular(5.0)
//              ),
                shape: StadiumBorder()
            )
          ),
          child: RaisedButton( // 文字按钮
            child: Text('Button'),
            onPressed: () {},
            // 设置溅墨效果
            splashColor: Colors.grey,
            elevation: 0.0,
            color: Theme.of(context).accentColor,
            // textColor: Colors.white,  // 设置文字颜色
            textTheme: ButtonTextTheme.primary, // 设置文字主题
          ),
        ),
        SizedBox(width: 16.0),
        RaisedButton.icon( // 带图标的文字按钮
          label: Text('Button'),
          icon: Icon(Icons.add),
          onPressed: () {},
          // 设置溅墨效果
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    // 描边按钮
    final Widget OutlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
                textTheme: ButtonTextTheme.primary,
//              shape: BeveledRectangleBorder(
//                borderRadius: BorderRadius.circular(5.0)
//              ),
                shape: StadiumBorder()
            )
          ),
          child: OutlineButton( // 文字按钮
            child: Text('Button'),
            onPressed: () {},
            // 设置溅墨效果
            splashColor: Colors.grey[100],
            borderSide: BorderSide(
                color: Colors.black87
            ),
            //  color: Theme.of(context).accentColor,
            textColor: Colors.black87,  // 设置文字颜色
            highlightedBorderColor: Colors.grey,
            //  textTheme: ButtonTextTheme.primary, // 设置文字主题
          ),
        ),
        SizedBox(width: 16.0),
        OutlineButton.icon( // 带图标的文字按钮
          label: Text('Button'),
          icon: Icon(Icons.add),
          onPressed: () {},
          // 设置溅墨效果
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    // 有固定宽高的按钮
    final Widget FixedWidthButtonDemo = Container(
      width: 160.0,
      height: 30.0,
      child: OutlineButton.icon( // 带图标的文字按钮
        label: Text('Button'),
        icon: Icon(Icons.add),
        onPressed: () {},
        // 设置溅墨效果
        splashColor: Colors.grey,
        textColor: Theme.of(context).accentColor,
      ),
    );

    // 占满可用宽度的按钮
    final Widget ExpandedButtonDemo = Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: OutlineButton.icon( // 带图标的文字按钮
              label: Text('Button'),
              icon: Icon(Icons.add),
              onPressed: () {},
              // 设置溅墨效果
              splashColor: Colors.grey,
              textColor: Theme.of(context).accentColor,
            ),
          ),
          SizedBox(width: 16.0),
          Expanded(
            flex: 2,
            child: OutlineButton.icon( // 带图标的文字按钮
              label: Text('Button'),
              icon: Icon(Icons.add),
              onPressed: () {},
              // 设置溅墨效果
              splashColor: Colors.grey,
              textColor: Theme.of(context).accentColor,
            ),
          ),
        ],
      )
    );

    // 一组带边距的横排显示按钮
    final Widget ButtonBarDemo = Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Theme(
              data: Theme.of(context).copyWith(
                buttonTheme: ButtonThemeData(
                    padding: EdgeInsets.symmetric(horizontal: 32.0)
                )
              ),
              child: ButtonBar(
                children: <Widget>[
                  OutlineButton.icon( // 带图标的文字按钮
                    label: Text('Button'),
                    icon: Icon(Icons.add),
                    onPressed: () {},
                    // 设置溅墨效果
                    splashColor: Colors.grey,
                    textColor: Theme.of(context).accentColor,
                  ),
                  OutlineButton.icon( // 带图标的文字按钮
                    label: Text('Button'),
                    icon: Icon(Icons.add),
                    onPressed: () {},
                    // 设置溅墨效果
                    splashColor: Colors.grey,
                    textColor: Theme.of(context).accentColor,
                  ),
                ],
              ),
            )
          ],
        )
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatButtonDemo,
            SizedBox(height: 30.0),
            RaisedButtonDemo,
            SizedBox(height: 30.0),
            OutlineButtonDemo,
            SizedBox(height: 30.0),
            FixedWidthButtonDemo,
            SizedBox(height: 30.0),
            ExpandedButtonDemo,
            SizedBox(height: 30.0),
            ButtonBarDemo
          ],
        ),
      ),
    );
  }
}