import 'package:dlxapp/apps/saucetv/AppSettings.dart';
import 'package:dlxapp/components/Build/Page.dart';
import 'package:dlxapp/components/Page/Page.dart';
import 'package:dlxapp/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:dlxapp/apps/saucetv/pages/HomeTest.dart';

class MusicListView extends StatelessWidget {
  MusicListView({
    Key key,
  }) : super(key: key);

  List<Widget> musicListViewItems = [];
  //  = List.generate(20, (i) {
  //   return PageViewItem(
  //     cover: data.data['cover'],
  //     title: data.data["title"],
  //     subtitle: data.data["subtitle"],
  //     data: data,
  //     borderRadius: 0,
  //   );
  // });

  @override
  Widget build(BuildContext context) {
    var nav = Provider.of<AppSettingsModel>(context).nav;
    List<Widget> allcomps = [];

    return FutureBuilder(
      future: jsonFetchList(apiBaseUrl + apiRoot + "media_test", 'documents'),
      builder: (context, snap) {
        if (snap.connectionState == ConnectionState.done && snap.hasData) {
          List<DataItem> items = snap.data;
          // print(data);

          // for (var i = 0; i < 5; i++) {
          //   // print(items[i].data);

          //   var cover = items[i].data['fields']['cover_url']['stringValue'];
          //   var title = items[i].data['fields']['title']['stringValue'];
          //   var network = items[i].data['fields']['video_url']['stringValue'];
          //   var time = items[i].data['updateTime'];

          //   // print(time);

          //   _homeHeaderViewItems.add(PageViewItem(
          //     cover: cover,
          //     title: title,
          //     subtitle: time,
          //     data: items[i],
          //   ));
          // }

          for (var item in items) {
            var cover = item.data['fields']['cover_url']['stringValue'];
            var title = item.data['fields']['title']['stringValue'];
            var network = item.data['fields']['video_url']['stringValue'];
            var time = item.data['updateTime'];

            // print(time);

            allcomps.add(SliverToBoxAdapter(
              child: Container(
                // margin: EdgeInsets.all(8),
                height: 350,
                // width: 3000,
                // color: Colors.orange,
                // child: PageViewItem(
                //   cover: cover,
                //   title: title,
                //   subtitle: time,
                //   data: item,
                //   borderRadius: 0,
                // ),

                // child: ListTile(
                //   leading: ,
                // ),
              ),
            ));
          }

          allcomps.add(
            SliverToBoxAdapter(
              child: SizedBox(
                height: 81,
              ),
            ),
          );

          return PageShell(
            statusbarColor: Colors.transparent,
            child: BuildPage(components: allcomps,),
          );
        }

        if (snap.connectionState == ConnectionState.done && !snap.hasData) {
          if (snap.hasError) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  snap.error.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .headline
                      .copyWith(letterSpacing: 2),
                ),
              ),
            );
          }

          return Center(
            child: Text('Unknown error... -_-'),
          );
        }

        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
