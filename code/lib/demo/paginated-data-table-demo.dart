
import 'package:flutter/material.dart';
import '../model/post.dart';

class PostDataSource extends DataTableSource {
  final List<Post> _posts = posts;
  int _selectedCount = 0;
  @override
  int get rowCount => _posts.length;
  @override
  bool get isRowCountApproximate => false;
  @override
  int get selectedRowCount => _selectedCount;
  @override
  DataRow getRow(int index) {
    final Post post = _posts[index];
    return DataRow.byIndex(
      index: index,
      cells: <DataCell>[
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
  }
  void _sort(getFied(post), bool asceding) {
    _posts.sort((a, b) {
      if (!asceding) {
        final c = a;
        a = b;
        b = c;
      }
      final aValue = getFied(a);
      final bValue = getFied(b);
      return Comparable.compare(aValue, bValue);
    });
    notifyListeners();
  }
}

class PaginatedDataTableDemo extends StatefulWidget {
  @override
  _PaginatedDataTableDemoState createState() => _PaginatedDataTableDemoState();
}

class _PaginatedDataTableDemoState extends State<PaginatedDataTableDemo> {
  int _sortColumnIndex = 0;
  bool _sortAscending = true;

  final PostDataSource _postDataSource = PostDataSource();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PaginatedDataTableDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            PaginatedDataTable(
              // 设置排序栏索引号
              sortColumnIndex: _sortColumnIndex,
              // true 为升序 false 为降序
              sortAscending: _sortAscending,
              header: Text('Posts'),
              source: _postDataSource,
              rowsPerPage: 8, // 设置每行显示的数量
              // 全选执行的事件
              // onSelectAll: (bool value) {},
              columns: [
                DataColumn(
                  label: Text('Title'),
                  onSort: (int columnIndex, bool ascending) {
                    _postDataSource._sort((post) => post.title.length, ascending);
                    setState(() {
                      _sortColumnIndex = columnIndex;
                      _sortAscending = ascending;
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
            )
          ],
        ),
      ),
    );
  }
}

