import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class RxDartDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RxDartDemo'),
      ),
      body: RxDartDemoeHome(),
    );
  }
}


class RxDartDemoeHome extends StatefulWidget {
  @override
  _RxDartDemoeHomeState createState() => _RxDartDemoeHomeState();
}

class _RxDartDemoeHomeState extends State<RxDartDemoeHome> {
  PublishSubject<String> _textFieldSubject;
  @override
  void initState() {
    super.initState();
    _textFieldSubject = PublishSubject<String>();
    _textFieldSubject
//        .map((item) => 'item: $item')
//        .where((item) => item.length > 9) // 限制
        .debounce(Duration(milliseconds: 500))  // 防抖
        .listen((data) => print(data));
//    Observable<String> _observable = Observable(Stream.fromIterable(['hello', '您好']));
//    Observable.fromFuture(Future.value('hello!'));
//    Observable.fromIterable(['hello', '您好']);
//    Observable.just('hello~');
//    Observable.periodic(Duration(seconds: 3), (x) => x.toString()); // 重复输出
//    _observable.listen(print);

//    PublishSubject<String> _subject = PublishSubject<String>();
//    BehaviorSubject<String> _subject = BehaviorSubject<String>();
    ReplaySubject<String> _subject = ReplaySubject<String>(maxSize: 2); // 监听全部   最大为2
    _subject.add('hello');
    _subject.add('Hi~');
    _subject.add('hola');
    _subject.listen((data) => print('listen1: $data'));
    _subject.listen((data) => print('listen2: ${data.toUpperCase()}'));
    _subject.close();
  }

  @override
  void dispose() {
    _textFieldSubject.close();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: Colors.black,
      ),
      child: TextField(
        onChanged: (value) {
          _textFieldSubject.add('input: $value');
        },
        onSubmitted: (value) {
          _textFieldSubject.add('submit: $value');
        },
        decoration: InputDecoration(
          labelText: 'Title',
          filled: true,
        ),
      ),
    );
  }
}
