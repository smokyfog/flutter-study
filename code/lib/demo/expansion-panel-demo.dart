import 'package:flutter/material.dart';

class ExpansionPanelItem {
  final String headerText;
  final Widget body;
  bool isExpanded;

  ExpansionPanelItem({
    this.headerText,
    this.body,
    this.isExpanded
  });
}

class ExpansionPanelDemo extends StatefulWidget {
  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
  List<ExpansionPanelItem> _expansionPanelItems;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _expansionPanelItems = <ExpansionPanelItem>[
      ExpansionPanelItem(
        headerText: 'Panel A',
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text('Content for Pannel A.'),

        ),
        isExpanded: false
      ),
      ExpansionPanelItem(
          headerText: 'Panel B',
          body: Container(
            padding: EdgeInsets.all(16.0),
            width: double.infinity,
            child: Text('Content for Pannel B.'),

          ),
          isExpanded: false
      ),
      ExpansionPanelItem(
          headerText: 'Panel C',
          body: Container(
            padding: EdgeInsets.all(16.0),
            width: double.infinity,
            child: Text('Content for Pannel .'),

          ),
          isExpanded: false
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionPanelDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 折叠面板列表
            ExpansionPanelList(
              // 切换折叠状态
              expansionCallback: (int panelIndex, bool isExpand) {
                setState(() {
                  _expansionPanelItems[panelIndex].isExpanded = !isExpand;
                });
              },
//              children: [
//                // 折叠面板
//                ExpansionPanel(
//                  headerBuilder: (BuildContext context, bool isExpanded) {
//                    return Container(
//                      padding: EdgeInsets.all(16.0),
//                      child: Text(
//                        'Panel A',
//                        style: Theme.of(context).textTheme.title,
//                      ),
//                    );
//                  },
//                  body: Container(
//                    padding: EdgeInsets.all(16.0),
//                    width: double.infinity,
//                    child: Text('Content for Pannel A.'),
//
//                  ),
//                  isExpanded: _isExpand,
//                ),
//              ],
              children: _expansionPanelItems.map(
                (ExpansionPanelItem item) {
                  return ExpansionPanel(
                    isExpanded: item.isExpanded,
                    body: item.body,
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return Container(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          item.headerText,
                          style: Theme.of(context).textTheme.title,
                        ),
                      );
                    },
                  );
                }
              ).toList(),
            )
          ],
        ),
      ),
    );
  }
}

