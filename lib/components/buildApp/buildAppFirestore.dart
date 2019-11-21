import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'apiApp.dart';
import 'package:dlxapp/components/shellPage/shellPage.dart';
// Page Builder
import 'package:dlxapp/components/buildPage/buildPage.dart';

import 'test.dart';
class BuildApp extends StatefulWidget {
  final AppModelJsonFB app;

  BuildApp(this.app);

  @override
  _BuildAppState createState() => _BuildAppState(app);
}

class _BuildAppState extends State<BuildApp> {
  AppModelJsonFB app;

  _BuildAppState(this.app);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red, brightness: Brightness.dark),
      initialRoute: "/",
      onGenerateRoute: genRoute,
    );
  }

  Route genRoute(RouteSettings settings) {
    // print('genRoute');
    // print('${this.app.pagesMap.toString()}');

    // print(this.app.pagesMap[settings.name]);
    print('Loading route ${settings.name}');

    ///// ----- BuildPage
    // if (this.app.pagesMap.containsKey(settings.name)) {
    //   return MaterialPageRoute(
    //       settings: settings,
    //       builder: (BuildContext context) =>
    //           BuildPageJsonFB(pageData: this.app.pagesMap[settings.name]));
    // }

    ///// ----- Build Test Page
    if (this.app.pagesMap.containsKey(settings.name)) {
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) =>
              TestPage());
    }

    var msg = "Unable to load route ${settings.name}";
    var code = "404";
    var sub = "${settings.arguments ?? 'No Arguments'}";

    return MaterialPageRoute(
        settings: settings,
        builder: (BuildContext context) => ErrorPage(
              msg: msg,
              code: code,
              sub: sub,
            ));

    // switch (settings.name) {
    //   case "/":
    //   //   // fetch route and display

    //   //   return MaterialPageRoute(
    //   //       settings: settings, builder: (BuildContext context) => BuildPage());
    //   //   break;
    //   default:
    //     return MaterialPageRoute(
    //         settings: settings,
    //         builder: (BuildContext context) => ErrorPage(settings));
    // }
  }
}
