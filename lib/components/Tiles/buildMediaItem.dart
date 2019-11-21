import 'package:flutter/material.dart';

String cover1 =
    'https://firebasestorage.googleapis.com/v0/b/dlxtv-99294.appspot.com/o/saucetv_logo.svg?alt=media&token=313323dd-c64d-41f0-b592-c747ac527351';
String cover2 =
    'https://m.media-amazon.com/images/M/MV5BMTU2NjA1ODgzMF5BMl5BanBnXkFtZTgwMTM2MTI4MjE@._V1_SX300.jpg';

class MediaItem extends StatelessWidget {
  MediaItemModel model;
  MediaItem(this.model);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      // margin: EdgeInsets.only(left: 0, bottom: 20),
      color: Colors.orangeAccent,
      child: Column(
        children: <Widget>[
          Expanded(
              // flex: 30,
              child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Container(
              // height: size.maxWidth,
              color: Colors.green,
              child: Image.network(
                cover2,
                fit: BoxFit.fitHeight,
              ),
            ),
          )),
          SizedBox(
            height: 16,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Text(
                  '${this.model._title}',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Text(
                  '${this.model.subTitle}',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class MediaItemModel {
  //
  String _cover;
  String get cover => _cover;

  //
  String _title;
  String get title => _title;

  //
  String _subTitle;
  String get subTitle => _subTitle;

  MediaItemModel(this._cover, this._title, this._subTitle);
}
