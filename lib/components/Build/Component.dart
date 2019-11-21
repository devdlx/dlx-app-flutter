import 'package:dlxapp/components/Build/buildListFB.dart';
import 'package:flutter/material.dart';

class BuildComponent extends StatefulWidget {
  final Map<String, dynamic> componentJson;
  final Widget component;

  BuildComponent({Key key, this.componentJson, this.component})
      : super(key: key);

  @override
  _BuildComponentState createState() => _BuildComponentState();
}

class _BuildComponentState extends State<BuildComponent> {
  String _type;
  Widget _component;

  @override
  void initState() {
    super.initState();

    /// check if it's a list or naw
    if (widget.componentJson['list'] != null) {
      this._type = 'list';
      this._component =
          BuildListFB(widget.componentJson['mapValue']['fields']['list']);
      return;
    }

    /// check if it's a mediaGrid or naw
    if (widget.componentJson['mediaGrid'] != null) {
      this._type = 'mediaGrid';
      // this.component = BuildListFB(comp['mapValue']['fields']['mediaGrid']);
      return;
    }

    /// check if it's a mediaGrid or naw
    this._type = 'UNKNOWN COMPONENT BRO : ' + widget.componentJson.toString();
  }

  @override
  Widget build(BuildContext context) {
    return widget.component != null
        ? widget.component
        : _component != null
            ? _component
            : SliverToBoxAdapter(
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
