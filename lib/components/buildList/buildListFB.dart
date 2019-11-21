import 'dart:core';

import 'package:dlxapp/components/buildMediaItem/buildMediaItem.dart';
import 'package:flutter/material.dart';

import 'package:dlxapp/utils/utils.dart';
import 'package:dlxapp/components/buildComponent/buildComponent.dart';

class BuildListFB extends StatelessWidget {
  final Map<String, dynamic> comp;
  BuildListFB(this.comp) {
    // print(comp);
    // get the Fields property
    Map<String, dynamic> fields;
    fields = this.comp['mapValue']['fields'];
    // get the direction property
    this.direction = fields['direction']['stringValue'];
    // get the height property
    try {
      this.height = fields['heigth']['intValue'] as int;
    } catch (e) {}
    // if the direction is 'horizontal' then set the 'isHorizontal' property to include the height
    if (direction.toLowerCase() == 'horizontal') this.isHorizontal = true;
    // get the items property
    // this._items = fields['items']['arrayValue']['values'];
    this._items = List.generate(10, (i) {
      return {'title': ' brad johnson $i '};
    });
  }

  String direction;
  int height = 200;
  List _items;
  bool isHorizontal = false;

  @override
  Widget build(BuildContext context) {
    return BuildHorizontal(context);
    // return BuildVertical(context);
    // return isHorizontal ? BuildHorizontal(context) : BuildVertical(context);
  }

  BuildHorizontal(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
          // color: Colors.brown,
          height: 320,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    // color: Colors.red,
                    margin: EdgeInsets.only(left: 16),
                    child: Text(
                      'Title of new Section Here',
                      style: TextStyle(
                          fontSize: 26,
                          color: Theme.of(context).accentColor.withOpacity(.8),
                          fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _items.length,
                  itemBuilder: (context, _index) {
                    // return BuildBlocFuture<MediaItemModel>(_items[_index]);
                    if (_index == _items.length - 1) {
                      print('object');
                      return Container(
                        color: Colors.cyan,
                        margin: EdgeInsets.only(
                          right: 30,
                        ),
                        child: MediaItem(
                            MediaItemModel('', 'John Wicker', '2016')),
                      );
                    } else {
                      print('$_index of ${_items.length - 1}');
                      return MediaItem(
                          MediaItemModel('', 'John Wicker', '2016'));
                    }
                  },
                ),
              )
            ],
          )),
    );
  }

  BuildVertical(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: _items.map((item) {
          return MediaItem(MediaItemModel('', 'John Wicker', '2016'));
        }).toList(),
      ),
    );
  }
}
