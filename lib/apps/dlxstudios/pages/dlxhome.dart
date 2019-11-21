import 'package:dlxapp/components/coverListItem/coverlistitem.dart';
import 'package:flutter/material.dart';

class DLXHome extends StatefulWidget {
  @override
  _DLXHomeState createState() => _DLXHomeState();
}

class _DLXHomeState extends State<DLXHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            new SectionLatest(),
          ],
        ),
      ),
    );
  }
}

class SectionLatest extends StatelessWidget {
  const SectionLatest({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 16, right: 16),
      height: 300,
      color: Colors.amberAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            'Latest',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, indx) {
                return CoverListItem();
              },
            ),
          )
        ],
      ),
    );
  }
}
