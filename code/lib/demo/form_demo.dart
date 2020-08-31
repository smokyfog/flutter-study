
import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FormDemo'),
        elevation: 0.0,
      ),
      body: Theme(
        data: Theme.of(context).copyWith(  // 设置主题, 使用ThemeData会完全覆盖之前的主题， Theme.of(context).copyWith 只覆盖特定的主题设置
          primaryColor: Colors.black,
        ),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RegisterForm()
            ],
          ),
        ),
      ),
    );
  }
}

// 主题
class ThemDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,  // 指向最近一层主题
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final TextEditingController textEditingController = TextEditingController();  // 控制器

  @override
  void dispose() {
    textEditingController.dispose();  // 销毁控制器
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    textEditingController.text = 'hi~'; // 初始化表单数据
    textEditingController.addListener(() {  // 监听表单数据变化
      debugPrint('input ${textEditingController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
//      onChanged: (val) {  // 当表单数据改变
//        debugPrint('input $val');
//      },
      onSubmitted: (val) {  // 当按下确定时触发
        debugPrint('onSubmitted $val');
      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: 'Title',
        hintText: 'Enter the post titleca',
//        边框
//        border: InputBorder.none,
//        border: OutlineInputBorder(),
        filled: true,
//        fillColor: Colors.pink,  // 背景颜色
      ),
    );
  }
}

// 注册表单
class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final registerFormKey = GlobalKey<FormState>();
  String username, password;
  bool autovalidate = false;

  // 提交注册表单
  void submitRegisterForm() {
    // 调用验证表单方法
    if (registerFormKey.currentState.validate()) {
      // // 提交表单时调用表单save事件
      registerFormKey.currentState.save();
      debugPrint('username: ${username}');
      debugPrint('password: ${password}');
      Scaffold.of(context).showSnackBar(  // 显示提示栏
        SnackBar(
          content: Text('Registering...'),
        )
      );
    } else {
      // 当验证失败一次后再开启表单自动验证
      setState(() {
        autovalidate = true;
      });
    }
  }

  // 验证用户名
  String validatorUsername(String value) {
    if (value.isEmpty) {
      return 'UserName is required';
    }
    return null;
  }
  // 验证密码
  String validatePassword(value) {
    if (value.isEmpty) {
      return 'UserName is required';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Username',
              helperText: '',
            ),
            onSaved: (val) {
              username = val;
            },
            validator: validatorUsername,
            // 设置自动执行验证
            autovalidate: autovalidate,
          ),
          TextFormField(
            obscureText: true,  // 密码形式显示
            decoration: InputDecoration(
              labelText: 'Password',
              helperText: '',
            ),
            onSaved: (val) {
              password = val;
            },
            validator: validatePassword,
            // 设置自动执行验证
            autovalidate: autovalidate,
          ),
          SizedBox(height: 32.0),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text(
                'Register',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              elevation: 0.0,
              onPressed: submitRegisterForm,
            ),
          )
        ],
      ),
    );
  }
}
