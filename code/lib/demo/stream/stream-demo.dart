import 'dart:async';

import 'package:flutter/material.dart';

class StreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamDemo'),
        elevation: 0.0,
      ),
      body:  StreamDemoHome(),
    );
  }
}


class StreamDemoHome extends StatefulWidget {
  @override
  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {
  StreamSubscription _streamDemoSubScription;
  StreamController<String>  _streamDemo;
  StreamSink _sinkDemo;
  String _data = '...';

  @override
  void dispose() {
    _streamDemo.close();  // 关掉stream
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    print('Create a Stream.');
//    Stream<String> _streamDemo =Stream.fromFuture(fetchData());
//    _streamDemoSubScription = _streamDemo.listen(onData, onError: onError, onDone: onDone);
//    _streamDemo = StreamController<String>(); // 单次订阅
    _streamDemo = StreamController.broadcast( );  // 可以多次订阅
    _sinkDemo = _streamDemo.sink;
    _streamDemoSubScription = _streamDemo.stream.listen(onData, onError: onError, onDone: onDone);
    _streamDemo.stream.listen(onDataTwo, onError: onError, onDone: onDone);
    print('Start listening a stream.');
    print('Initialize computed.');
  }

  void onError(error) {
    print('Error: $error');
  }

  void onDone() {
    print('Done');
  }

  void onData(String data) {
    setState(() {
      _data = data;
    });
     print('$data');
  }

  void onDataTwo(String data) {
    print('onDataTwo: $data');
  }


  _pauseStream() {
    print('pause subscription');
    _streamDemoSubScription.pause();
  }

  _resumeStream() {
    print('resume subscription');
    _streamDemoSubScription.resume();
  }

  _cancelStream() {
    print('cancel subscription');
    _streamDemoSubScription.cancel();
  }

  _addDataToStream() async {
    print('Add data to Stream.');
    String data = await fetchData();
    _streamDemo.add(data);
    _sinkDemo.add(data);
  }

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 5));
//    throw 'something happened'; // 主动抛错
    return 'Hello~';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
//            Text(_data),
            StreamBuilder(  // 根据stream上的数据构建小部件
              stream: _streamDemo.stream,
              initialData: '...',
              builder: (context, snapshot) {
                return Text('${snapshot.data}');
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('Add'),
                  onPressed: _addDataToStream,
                ),
                FlatButton(
                  child: Text('Pause'),
                  onPressed: _pauseStream,
                ),
                FlatButton(
                  child: Text('resume'),
                  onPressed: _resumeStream,
                ),
                FlatButton(
                  child: Text('cancel'),
                  onPressed: _cancelStream,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
