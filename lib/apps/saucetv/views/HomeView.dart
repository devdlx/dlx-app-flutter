import 'package:dlxapp/apps/saucetv/AppSettings.dart';
import 'package:dlxapp/apps/saucetv/assets.dart';
import 'package:dlxapp/apps/saucetv/customdrip.dart';
import 'package:dlxapp/components/DLX/components.dart';
import 'package:dlxapp/components/Tiles/Tiles.dart';
import 'package:dlxapp/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dlxapp/utils/utils.dart' as utils;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  HomeView({
    Key key,
  }) : super(key: key);

  PageController _headerPageController = PageController(
    keepPage: true,
    initialPage: 0,
    viewportFraction: .7,
  );

  List<Widget> _homeHeaderViewItems = [];
  //  = List.generate(20, (i) {
  //   return PageViewItem(
  //     cover: data.data['cover'],
  //     title: data.data["title"],
  //     subtitle: data.data["subtitle"],
  //     data: data,
  //   );
  // });

  List<Widget> _homeGridViewItems = [];
  // = List.generate(4, (i) {
  //   return PageViewItem(
  //     cover: data.data['cover'],
  //     title: data.data["title"],
  //     subtitle: data.data["subtitle"],
  //     data: data,
  //   );
  // });

  @override
  Widget build(BuildContext context) {
    var screen = ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1334, allowFontScaling: true)
          ..init(context);

    return FutureBuilder(
      future: utils.jsonFetchList(
          utils.apiBaseUrl + utils.apiRoot + "media_test", 'documents'),
      builder: (context, snap) {
        if (snap.connectionState == ConnectionState.done && snap.hasData) {
          List<DataItem> items = snap.data;
          // print(data);

          for (var i = 0; i < 5; i++) {
            // print(items[i].data);

            var cover = items[i].data['fields']['cover_url']['stringValue'];
            var title = items[i].data['fields']['title']['stringValue'];
            var network = items[i].data['fields']['video_url']['stringValue'];
            var time = items[i].data['updateTime'];

            // print(time);

            _homeHeaderViewItems.add(MediaTile(
              cover: cover,
              title: title,
              subtitle: time,
              data: items[i],
            ));
          }

          for (var i = 5; i < 15; i++) {
            // print(items[i].data);

            var cover = items[i].data['fields']['cover_url']['stringValue'];
            var title = items[i].data['fields']['title']['stringValue'];
            var network = items[i].data['fields']['video_url']['stringValue'];
            var time = items[i].data['updateTime'];

            // print(time);

            _homeGridViewItems.add(MediaTile(
              cover: cover,
              title: title,
              subtitle: time,
              data: items[i],
            ));
          }

          // print(snap.connectionState == ConnectionState.done);

          return CustomScrollView(
            // primary: true,
            // padding: EdgeInsets.all(16),
            // cacheExtent: 6,
            slivers: <Widget>[
              // new HomeViewAppBar(),

              SliverToBoxAdapter(
                  child: SizedBox(
                height: 16,
              )),

              SliverPersistentHeader(
                delegate: DLXSliverAppBar(),
                floating: true,
              ),

              SliverToBoxAdapter(
                  child: SizedBox(
                height: 8,
              )),

              SliverToBoxAdapter(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        'Featured',
                        style: TextStyle(
                          // color: Colors.red,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SliverToBoxAdapter(
                child: AspectRatio(
                  aspectRatio: 12 / 9,
                  // width: 100,
                  // height: 100,
                  child: PageView.builder(
                    controller: _headerPageController,
                    // physics: BouncingScrollPhysics(),
                    itemCount: _homeHeaderViewItems.length,
                    pageSnapping: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, position) {
                      // print(position);
                      return Container(
                        child: _homeHeaderViewItems[position],
                        margin: EdgeInsets.only(top: 16, right: 16, bottom: 16),
                      );
                    },
                  ),
                ),
              ),

              SliverToBoxAdapter(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        'Hot',
                        style: TextStyle(
                          // color: Colors.red,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SliverPadding(
                padding: const EdgeInsets.all(16.0),
                sliver: SliverGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  children: _homeGridViewItems,
                ),
              ),

              SliverToBoxAdapter(
                child: SizedBox(
                  height: 16,
                ),
              ),

              SliverToBoxAdapter(
                child: SizedBox(
                  height: 190,
                ),
              ),
            ],
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

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 160,
      floating: true,
      flexibleSpace: Container(
        // height: 200,
        // color: Colors.white,
        child: CustomPaint(
          child: Container(
              // height: 200.0,
              ),
          painter: CurvePainter(),
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Hero(
        tag: 'saucetvlogo',
        child: Container(
          // height: 60,
          // color: Colors.blueGrey,
          child: ImageAssets.sauceTvLogo,
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: CircleAvatar(
            child: ImageAssets.sauceTvLogo,
          ),
          onPressed: () {
            var sett = Provider.of<AppSettingsModel>(context);
            sett.pushTo('profile', context);
          },
        )
      ],
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Search'),
        ],
      ),
      centerTitle: true,
    );
  }
}
