
import 'package:flutter/material.dart';
import '../model/post.dart';

class DataTableDemo extends StatefulWidget {
  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  int _sortColumnIndex = 0;
  bool _sortAscending = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTableDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            DataTable(
              // 设置排序栏索引号
              sortColumnIndex: _sortColumnIndex,
              // true 为升序 false 为降序
              sortAscending: _sortAscending,
              // 全选执行的事件
              // onSelectAll: (bool value) {},
              columns: [
                DataColumn(
                  label: Text('Title'),
                  onSort: (int index, bool ascending) {
                    setState(() {
                      _sortColumnIndex = index;
                      _sortAscending = ascending;
                      posts.sort((a, b) {
                        if (!ascending) {
                          final c = a;
                          a = b;
                          b = c;
                        }
                        return a.title.length.compareTo(b.title.length);
                      });
                    });
                  }
                ),
                DataColumn(
                    label: Text('Author')
                ),
                DataColumn(
                    label: Text('Image')
                ),
              ],
              rows: posts.map((post) {
                return DataRow(
                  // 是否已选择
                  selected: post.selected,
                  // 多选
                  onSelectChanged: (bool value) {
                    setState(() {
                      if (post.selected != value) {
                        post.selected = value;
                      }
                    });
                  },
                  cells: [
                    DataCell(Text(post.title)),
                    DataCell(Text(post.author)),
                    DataCell(Container(
                      padding: EdgeInsets.all(3),
                      child: Image.network(
                        post.imageUrl,
                        width: 60.0,
                        height: 60.0,
                        fit: BoxFit.cover,
                      ),
                    )),
                  ]
                );
              }).toList()
            )
          ],
        ),
      ),
    );
  }
}

