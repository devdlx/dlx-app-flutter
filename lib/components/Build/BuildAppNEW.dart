import 'package:dlxapp/apps/saucetv/AppSettings.dart';
import 'package:dlxapp/apps/saucetv/pages/onboard.dart';
import 'package:dlxapp/apps/saucetv/pages/splash.dart';
import 'package:dlxapp/components/Build/Page.dart';
import 'package:dlxapp/components/DLX/components.dart';
import 'package:dlxapp/components/Page/Page.dart';
import 'package:dlxapp/components/Tiles/Tiles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BuildApp extends StatelessWidget {
  final AppSettingsModel settings;
  BuildApp(this.settings);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: settings.theme,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: this.generateRoute,
      // home: PageShell(child: ListTile(),),
    );
  }

  Route<dynamic> generateRoute(RouteSettings routeSettings) {
    // this.settings.log.i('$routeSettings');
    // this.settings.log.e(this.settings.pagesMap[routeSettings.name]);

    Map<String, dynamic> page =
        this.settings.pagesMap.containsKey(routeSettings.name)
            ? this.settings.pagesMap[routeSettings.name]
            : {'type': 'error'};

    Widget _widget;

    switch (page['type']) {
      case "splash":
        _widget = SauceSplash();
        break;

      case "onbording":
        _widget = OnBoarding();
        break;

      case "settings":
        _widget = Scaffold(
          body: Container(
            child: Center(
              child: Text('Settings'),
            ),
          ),
        );
        break;

      case "error":
        _widget = PageError(
          msg: "Unable to load route ${routeSettings.name}",
          errorCode: "404",
          title: "${routeSettings.arguments ?? 'No Arguments'}",
        );
        break;

      default:
        _widget = BuildPage(
          pageJson: page,
        );
    }

    if (this.settings.pagesMap.containsKey(routeSettings.name) == false &&
        routeSettings.name == '/') _widget = DefaultHomePage();

    // this.settings.log.e("page - $page");

    return MaterialPageRoute(
        settings: routeSettings,
        builder: (BuildContext context) =>
            page.containsKey('widget') ? page['widget'] : _widget);
  }
}

// return MaterialPageRoute(
//     settings: routeSettings,
//     fullscreenDialog: true,
//     maintainState: true,
//     builder: (BuildContext context) => PageError(
//           msg: "Unable to load route ${routeSettings.name}",
//           errorCode: "404",
//           title: "${routeSettings.arguments ?? 'No Arguments'}",
//         ));

// return MaterialPageRoute(
//     builder: (_) => WillPopScope(
//           onWillPop: () {
//             settings = RouteSettings(name: '/');
//             return new Future.value(true);
//           },
//           child: SplashScreen(),
//         ));

class DefaultHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppSettingsModel app = Provider.of<AppSettingsModel>(context);
    List<Widget> _pages = [];

    for (var _item in app.pagesMap.keys) {
      var itemInfo = app.pagesMap[_item];
      var type = itemInfo['type'];
      var title = itemInfo['title'] ?? _item;

      app.log.e(itemInfo.toString());
      if (type != 'splash' && type != 'onbording')
        _pages.add(ThumbTile(
          title: title,
          subtitle: 'page',
        ));
    }

    return PageShell(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            delegate: DLXSliverAppBar(
              expandedHeight: 150,
            ),
            floating: true,
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              children: _pages,
            ),
          )
        ],
      ),
    );
  }
}
