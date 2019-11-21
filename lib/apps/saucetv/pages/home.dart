// import 'package:dlxapp/apps/saucetv/customdrip.dart';
import 'package:dlxapp/apps/saucetv/MediaController.dart';
import 'package:dlxapp/apps/saucetv/components/PlaybackControls.dart';
import 'package:dlxapp/apps/saucetv/pages/profile.dart';
import 'package:dlxapp/apps/saucetv/views/HomeView.dart';
import 'package:dlxapp/apps/saucetv/views/MediaListView.dart';
import 'package:dlxapp/apps/saucetv/views/NowPlaying.dart';
import 'package:flutter/material.dart';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logger/logger.dart';
import 'package:flutter/physics.dart';
import 'package:provider/provider.dart';

class SauceHome extends StatefulWidget {
  @override
  _SauceHomeState createState() => _SauceHomeState();
}

class _SauceHomeState extends State<SauceHome> {
  PageController _bodyPageController =
      PageController(keepPage: true, initialPage: 0);

  int _homeBodyPageViewSelected = 0;

  @override
  void initState() {
    super.initState();

    _bodyPageController.addListener(() {
      // setState(() {
      //   currentPageValue = pageController.page;
      // });
    });

    // utils
    //     .jsonFetchList(
    //         utils.apiBaseUrl + utils.apiRoot + 'media_test', 'documents')
    //     .then((items) {
    //   for (var item in items) {
    //     // print(item.data['fields']['video_url']['stringValue']);

    //     var cover = item.data['fields']['cover_url']['stringValue'];
    //     var videoUrl = item.data['fields']['video_url']['stringValue'];
    //     var title = item.data['fields']['title']['stringValue'];
    //     var subtitle = item.data['fields']['quality']['stringValue'];

    //     var widg = PageViewItem(
    //       cover: cover,
    //       title: title,
    //       subtitle: subtitle,
    //       data: item,
    //     );

    //     homeViewItems.add(widg);
    //   }

    //   print(homeViewItems.length);
    //   setState(() {});
    // });

    // setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var primaryColor = Theme.of(context).primaryColor;
    var bottomIconActiveColor = primaryColor;
    var bottomIconInactiveColor = primaryColor..withOpacity(0);

    var screen = ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1334, allowFontScaling: true)
          ..init(context);

    var log = Logger();

    return Scaffold(
        // color: Colors.white,
        body: PageView(
          pageSnapping: true,
          controller: _bodyPageController,
          onPageChanged: (indx) {
            setState(() {
              _homeBodyPageViewSelected = indx;
            });
          },
          children: <Widget>[
            HomeView(),
            MusicListView(),
            HomeView(),
            PageProfile(),
          ],
        ),
        bottomNavigationBar: BottomNavyBar(
          // backgroundColor: Colors.transparent,
          selectedIndex: _homeBodyPageViewSelected,
          showElevation: false, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _homeBodyPageViewSelected = index;
            _bodyPageController.animateToPage(index,
                duration: Duration(milliseconds: 300), curve: Curves.ease);
          }),
          items: [
            BottomNavyBarItem(
              icon: Icon(Icons.apps),
              title: Text('Home'),
              inactiveColor: bottomIconInactiveColor,
              activeColor: bottomIconActiveColor,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.library_music),
              title: Text('Playlist'),
              inactiveColor: bottomIconInactiveColor,
              activeColor: bottomIconActiveColor,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.message),
              title: Text('Messages'),
              inactiveColor: bottomIconInactiveColor,
              activeColor: bottomIconActiveColor,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.settings),
              title: Text('Settings'),
              inactiveColor: bottomIconInactiveColor,
              activeColor: bottomIconActiveColor,
            ),
          ],
        ));
  }
}

class AnimatedHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Stack(
        overflow: Overflow.clip,
        children: <Widget>[
          SauceHome(),
          NowPlayingDraggable(
            child: Container(
              height: 100,
              color: Colors.lightGreenAccent,
            ),
          ),
        ],
      ),
    );
  }
}
