// import 'package:dlxapp/apps/saucetv/customdrip.dart';
import 'package:dlxapp/apps/saucetv/AppSettings.dart';
import 'package:dlxapp/apps/saucetv/assets.dart';
import 'package:dlxapp/apps/saucetv/pages/profile.dart';
import 'package:dlxapp/components/buildPage/buildPage.dart';
import 'package:dlxapp/utils/utils.dart' as utils;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SauceHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var nav = Provider.of<AppSettingsModel>(context).nav;

    return Scaffold(
        body: FutureBuilder(
      future: utils.jsonFetchList(
          utils.apiBaseUrl + utils.apiRoot + 'media_test', 'documents'),
      builder: (context, snap) {
        if (snap.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        List<Widget> allcomps = [];

        for (var item in snap.data) {
          // print(item.data['fields']['video_url']['stringValue']);

          var cover = item.data['fields']['cover_url']['stringValue'];
          var videoUrl = item.data['fields']['video_url']['stringValue'];
          var title = item.data['fields']['title']['stringValue'];
          // var subtitle = item.data['fields']['quality']['stringValue'];

          var widg = PageViewItem(
            borderRadius: 0,
            cover: cover,
            title: title,
            data: item,
            // subtitle: subtitle,
          );

          allcomps.add(SliverToBoxAdapter(
            child: Container(
              // margin: EdgeInsets.all(8),
              height: 250,
              // width: 3000,
              // color: Colors.orange,
              child: widg,
            ),
          ));
        }

        return BuildPage(allcomps);
      },
    ));
  }
}

class SauceHomeXXX extends StatefulWidget {
  @override
  _SauceHomeState createState() => _SauceHomeState();
}

class _SauceHomeState extends State<SauceHomeXXX> {
  bool image = false;

  PageController pageController = PageController(
    keepPage: true,
    // viewportFraction: .8,
  );

  var currentPageValue = 0.0;

  List<Widget> allItems = [];

  @override
  void initState() {
    super.initState();

    pageController.addListener(() {
      setState(() {
        currentPageValue = pageController.page;
      });
    });

    utils
        .jsonFetchList(
            utils.apiBaseUrl + utils.apiRoot + 'media_test', 'documents')
        .then((items) {
      for (var item in items) {
        // print(item.data['fields']['video_url']['stringValue']);

        var cover = item.data['fields']['cover_url']['stringValue'];
        var videoUrl = item.data['fields']['video_url']['stringValue'];
        var title = item.data['fields']['title']['stringValue'];
        // var subtitle = item.data['fields']['quality']['stringValue'];

        var widg = PageViewItem(
          cover: cover,
          title: title,
          // subtitle: subtitle,
        );

        allItems.add(widg);
      }

      // print(allItems.length);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageProfile()),
              );
            },
          )
        ],
      ),
      // color: Colors.white,
      body: SingleChildScrollView(
        primary: true,
        // padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // CustomPaint(
            //   child: Container(
            //     height: 200.0,
            //   ),
            //   painter: CurvePainter(),
            // ),
            // Row(
            //   children: <Widget>[
            //     Padding(
            //       padding: const EdgeInsets.only(left: 18.0),
            //       child: Text(
            //         'Latest',
            //         style: TextStyle(
            //             // color: Colors.red,
            //             fontFamily: 'Poppins',
            //             fontSize: 36),
            //       ),
            //     ),
            //   ],
            // ),
            SizedBox(
              height: 8,
            ),
            AspectRatio(
              aspectRatio: 16 / 9,
              child: PageView.builder(
                controller: pageController,
                physics: BouncingScrollPhysics(),
                itemCount: 5,
                pageSnapping: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, position) {
                  // print(position);

                  return PageViewItem(
                    borderRadius: 0,
                    title: "Captin America: Winter Solider ",
                    subtitle: "2007 ",
                    cover:
                        "https://oyster.ignimgs.com/wordpress/stg.ign.com/2014/03/CaptainAmericaWinterSoldier_031414_1600.jpg?width=375&crop=16%3A9",
                  );
                },
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: List.generate(5, (indx) {
            //     print(indx);
            //     var yes = false;
            //     if (currentPageValue.toInt().floor() == indx) yes = true;
            //     return Container(
            //         height: 8,
            //         width: 8,
            //         margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            //         child: Material(
            //           color: yes ? Colors.red : Colors.grey,
            //           clipBehavior: Clip.antiAlias,
            //           elevation: yes ? 2 : 0,
            //           borderRadius: BorderRadius.circular(10),
            //         ));
            //   }).toList(),
            // ),
            SizedBox(
              height: 22,
            ),
            SingleChildScrollView(
              primary: false,
              child: Container(
                height: 200,
                child: allItems.length > 0
                    ? GridView.builder(
                        itemBuilder: (context, indx) {
                          return allItems[indx];
                        },
                        primary: false,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 2,
                            mainAxisSpacing: 12),
                        itemCount: allItems.length,
                      )
                    : Container(
                        height: 200,
                        width: 200,
                      ),
              ),
            ),

            SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              title: Text('Home'),
              icon: Icon(Icons.apps),
              activeIcon: Icon(
                Icons.apps,
                color: Colors.red,
              )),
          BottomNavigationBarItem(
              title: Text('Now Playing'),
              icon: Icon(Icons.all_inclusive),
              activeIcon: Icon(
                Icons.all_inclusive,
                color: Colors.red,
              ))
        ],
      ),
    );
  }
}

class PageViewItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String cover;

  final utils.DataItem data;

  final double borderRadius;
  const PageViewItem(
      {Key key,
      this.title,
      this.subtitle = '',
      this.cover,
      this.borderRadius = 28,
      this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 4),
      child: Material(
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        // elevation: 8,
        // color: Theme.of(context).accentColor,
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              bottom: 0.0,
              child: new GridTile(
                footer: new GridTileBar(
                  leading: Icon(
                    Icons.whatshot,
                    color: Colors.white,
                  ),
                  title: Text(
                    '$title',
                    style: TextStyle(
                        shadows: [
                          BoxShadow(
                              blurRadius: 2,
                              color: Colors.black.withOpacity(.8),
                              offset: Offset(-2, 1),
                              spreadRadius: 4)
                        ],
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text('2019'),
                  backgroundColor: Colors.transparent,
                  // trailing: Icon(
                  //   Icons.launch,
                  //   color: Colors.white,
                  // ),
                ),
                child: Image.network(
                  '$cover',
                  fit: BoxFit.cover,
                  // height: 100,
                  // height: 1000,
                ),
              ),
            ),

            // Positioned.fill(
            //     child: Image.network(
            //       '$cover',
            //       fit: BoxFit.cover,
            //       // height: 100,
            //       // height: 1000,
            //     )),
            // Positioned(
            //   left: 12,
            //   right: 30,
            //   bottom: 12,
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     children: <Widget>[
            //       Text(
            //         '$title',
            //         style: TextStyle(
            //             shadows: [
            //               BoxShadow(
            //                   blurRadius: 2,
            //                   color: Colors.black.withOpacity(.8),
            //                   offset: Offset(-2, 1),
            //                   spreadRadius: 4)
            //             ],
            //             color: Colors.white,
            //             fontFamily: 'Poppins',
            //             fontSize: 16,
            //             fontWeight: FontWeight.bold),
            //         maxLines: 1,
            //         overflow: TextOverflow.ellipsis,
            //       ),
            //       Text(
            //         '$subtitle',
            //         style: TextStyle(
            //             shadows: [
            //               BoxShadow(
            //                   blurRadius: 2,
            //                   color: Colors.black.withOpacity(.8),
            //                   offset: Offset(-2, 1),
            //                   spreadRadius: 4)
            //             ],
            //             color: Colors.white,
            //             fontFamily: 'Poppins',
            //             fontSize: 16,
            //             fontWeight: FontWeight.w100),
            //       ),
            //     ],
            //   ),
            // ),

            Positioned.fill(
                child: new Material(
                    color: Colors.transparent,
                    child: new InkWell(
                      // splashColor: Colors.red,
                      onTap: () => Provider.of<AppSettingsModel>(context)
                          .pushTo('details', context, data: data),
                    ))),
          ],
        ),
      ),
    );
  }
}
