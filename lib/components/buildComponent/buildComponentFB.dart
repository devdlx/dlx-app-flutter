import 'package:dlxapp/components/buildList/buildListFB.dart';
import 'package:flutter/material.dart';

class BuildComp extends StatelessWidget {

Map<String, dynamic> comp;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('comp'),
    );
  }
}


class BuildComponentFB extends StatelessWidget {
  final Map<String, dynamic> comp;
  BuildComponentFB(this.comp) {
    /// check if it's a list or naw
    if (comp['mapValue']['fields']['list'] != null) {
      this._type = 'list';
      this.component = BuildListFB(comp['mapValue']['fields']['list']);
      return;
    }

    /// check if it's a mediaGrid or naw
    if (comp['mapValue']['fields']['mediaGrid'] != null) {
      this._type = 'mediaGrid';
      // this.component = BuildListFB(comp['mapValue']['fields']['mediaGrid']);
      return;
    }

    /// check if it's a mediaGrid or naw
    if (this._type == null) {
      this._type = 'UNKNOWN BRO : ' + comp['mapValue']['fields'];
    }
  }

  String _type;
  Widget component;

  @override
  Widget build(BuildContext context) {
    if (this.component != null) {
      return this.component;
    }

    return SliverToBoxAdapter(
      child: Container(
        height: 100,
        child: Center(
          child: Text(
            'Unable to build component ${this._type}',
            style: TextStyle(
                color: Theme.of(context).accentColor.withOpacity(1),
                fontSize: 24),
          ),
        ),
      ),
    );
  }
}
