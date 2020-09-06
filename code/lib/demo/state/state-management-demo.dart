
import 'package:flutter/material.dart';

class StateManagementDemo extends StatefulWidget {
  @override
  _StateManagementDemoState createState() => _StateManagementDemoState();
}

class _StateManagementDemoState extends State<StateManagementDemo> {
  int _count = 0;
  void _increaseCount() {
    setState(() {
      _count += 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    // 通过自定义的CountProvider传入count 和 increaseCount
    return CountProvider(
      count: _count,
      increaseCount: _increaseCount,
      child: Scaffold(
        appBar: AppBar(
          title: Text('StateManagementDemo'),
          elevation: 0.0,
        ),
        body: CounterWrapper(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              _count += 1;
            });
          },
        ),
      ),
    );
  }
}

class CounterWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Counter(),
    );
  }
}

// 子部件
class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int count = CountProvider.of(context).count;
    final VoidCallback increaseCount = CountProvider.of(context).increaseCount;

    return ActionChip(
      label: Text('$count'),
      // 子组件通过回调 父组件的方法修改父组件的值
      onPressed: increaseCount,
    );
  }
}

// 自定义状态管理
class CountProvider extends InheritedWidget {
  final int count;
  final VoidCallback increaseCount;
  final Widget child;

  CountProvider({
    this.count,
    this.increaseCount,
    this.child,
  }) : super(child: child);

  static CountProvider of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(CountProvider);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}
