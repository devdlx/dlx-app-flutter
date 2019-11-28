import 'package:dlxapp/utils/utils.dart';
import 'package:flutter/material.dart';

class SauceDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DataItem item = ModalRoute.of(context).settings.arguments;

    var cover = item.data['fields']['cover_url']['stringValue'];
    var videoUrl = item.data['fields']['video_url']['stringValue'];
    var title = item.data['fields']['title']['stringValue'];

    return Scaffold(
      
      body: ListView(
        cacheExtent: 200,
        children: <Widget>[
// Header

          AspectRatio(
            aspectRatio: 1.6,
            child: Image.network(
              cover,
              fit: BoxFit.cover,
            ),
          ),

        ],
      ),
    );
  }
}
